"""Render typed recording data as inert Lean literals."""
import hashlib
import json
from pathlib import Path
import re
import struct

ROOT = Path(__file__).resolve().parent
IWAD = '1d7d43be501e67d927e415e0b8f3e29c3bf33075e859721816f652a526cac771'
ALLOWED_MASK = sum((2, 4, 8, 16, 32, 64, 512, 4096, 8192, 16384, 32768, 65536))
GRID = ('proof-lab-run-v1', 'proof-lab-grid-v1')
COMBAT = ('combatv2-run-v1', 'CombatV2')
NATS = ('x', 'y', 'facing', 'hp')
BOOLS = ('blue', 'opened', 'exit')


def digest(data):
    return hashlib.sha256(data).hexdigest()


def rules_digest(is_combat):
    if not is_combat:
        return digest((ROOT/'ProofGrid.lean').read_bytes())
    base = ROOT/'combat'
    files = [base/'OriginalReplay.lean', *(base/'LeanDoomProofs').glob('*.lean'),
             *(base/'upstream/Doom').rglob('*.lean')]
    manifest = ''.join(f'{digest(p.read_bytes())}  {p.relative_to(base).as_posix()}\n'
                       for p in sorted(files))
    return digest(manifest.encode())


def commands_source(commands, type_name):
    chunks = [','.join(str(i) for i in commands[start:start+64]) for start in range(0,len(commands),64)]
    return f'def tape : List {type_name} := [' + ',\n'.join('['+s+']' for s in chunks) + '].flatten\n'


def parse(data):
    def unique(entries):
        result = {}
        for key, val in entries:
            if key in result:
                raise ValueError(f'duplicate JSON key {key!r}')
            result[key] = val
        return result
    if len(data) > 16*1024*1024:
        raise ValueError('single recording exceeds 16 MiB')
    doc = json.loads(data, object_pairs_hook=unique)
    if not isinstance(doc, dict):
        raise ValueError('expected a recording object')
    schema = (doc.get('schema'), doc.get('engine'))
    if schema not in (GRID, COMBAT):
        raise ValueError('unsupported recording schema or engine')
    pattern = r'L0[1-9]' if schema == GRID else r'E[1-4]M[1-9]'
    if not isinstance(doc.get('level'),str) or not re.fullmatch(pattern,doc['level']):
        raise ValueError('unknown level for this engine')
    cmd = doc.get('commands')
    if not isinstance(cmd,list) or len(cmd)>100_000:
        raise ValueError('commands must be an array of at most 100,000 inputs')
    for i,n in enumerate(cmd):
        valid = type(n) is int and n >= 0 and (n<8 if schema==GRID else n<=0xffffffff and not n & ~ALLOWED_MASK)
        if not valid:
            raise ValueError(f'unsupported command at tick {i+1}')
    if schema==GRID and doc.get('final') is not None:
        actual=doc['final']
        if not isinstance(actual,dict) or any(type(actual.get(k)) is not int or actual[k]<0 for k in NATS) or any(type(actual.get(k)) is not bool for k in BOOLS):
            raise ValueError('malformed claimed final observation')
    return doc


def episode_path():
    for path in (ROOT/'episode.json', ROOT.parents[1]/'public-site/game/episode.json',
                 ROOT.parents[1]/'game/episode.json'):
        if path.is_file():
            return path
    raise ValueError('keep the episode.json shipped with this verifier')


def grid_data(doc):
    meta=episode_path().read_bytes()
    episode=json.loads(meta)
    rooms=[level for level in episode['levels'] if level['id']==doc['level']]
    if episode['engine']!=GRID[1] or len(rooms)!=1:
        raise ValueError('unrecognized room definition')
    room=rooms[0]
    rows=room['rows']
    if not rows or any(not re.fullmatch(r'[#.@XbBh!]+',r) or len(r)!=len(rows[0]) for r in rows):
        raise ValueError('unsupported room tile or shape')
    starts=[(x,y) for y,row in enumerate(rows) for x,c in enumerate(row) if c=='@']
    if len(starts)!=1 or type(room['facing']) is not int or room['facing'] not in range(4):
        raise ValueError('invalid room spawn')
    x,y=starts[0]
    lines = ',\n'.join(json.dumps(row)+'.toList.toArray' for row in rows)
    definitions = f'def room : ProofGrid.Room := ⟨#[{lines}],{x},{y},{room["facing"]}⟩\n'
    return 'import ProofGrid\n', definitions+commands_source(doc['commands'],'Nat'), digest(meta)


def combat_data(doc, wad_path):
    if wad_path is None:
        raise ValueError('CombatV2 requires --iwad with the same local archive used to record the tape')
    expected_digest = doc.get('iwadSha256', IWAD)
    if not isinstance(expected_digest,str) or not re.fullmatch(r'[a-f0-9]{64}',expected_digest):
        raise ValueError('invalid recording IWAD SHA-256')
    if not 12 <= wad_path.stat().st_size <= 512*1024*1024:
        raise ValueError('invalid or unsupported IWAD size')
    raw=wad_path.read_bytes()
    if digest(raw)!=expected_digest:
        raise ValueError('recording and supplied IWAD do not have the same SHA-256; legacy recordings use shareware 1.9')
    sig,count,pos=struct.unpack_from('<4sII',raw)
    if sig!=b'IWAD' or count>1_000_000 or pos+16*count>len(raw):
        raise ValueError('invalid IWAD directory')
    directory=[]
    for offset,size,name in struct.iter_unpack('<II8s',raw[pos:pos+16*count]):
        if size and offset+size>len(raw):
            raise ValueError('invalid IWAD lump range')
        directory.append((name.split(b'\0',1)[0].decode('latin-1').upper(),offset,size))
    index=next((i for i in reversed(range(len(directory))) if directory[i][0]==doc['level']),None)
    if index is None:
        raise ValueError('level is absent from this IWAD')
    group=directory[index:index+12]
    expected=[doc['level'],*'THINGS LINEDEFS SIDEDEFS VERTEXES SEGS SSECTORS NODES SECTORS REJECT BLOCKMAP'.split()]
    if [row[0] for row in group[:11]]!=expected:
        raise ValueError('invalid map group')
    entries=[]
    for name,offset,size in group:
        if not re.fullmatch(r'[A-Z0-9_]{1,8}',name):
            raise ValueError('invalid map lump')
        entries.append(f'⟨"{name}", OriginalReplay.decodeHex "{raw[offset:offset+size].hex()}", 0⟩')
    source='def group : Array Doom.Lump := #[\n' + ',\n'.join(entries) + ']\n'
    source+=f'def mapName : String := "{doc["level"]}"\n' + commands_source(doc['commands'],'UInt32')
    return 'import OriginalReplay\n',source,expected_digest


def observed_literal(obs):
    return '⟨' + ','.join([*(str(obs[n]) for n in NATS),*(str(obs[n]).lower() for n in BOOLS)]) + '⟩'
