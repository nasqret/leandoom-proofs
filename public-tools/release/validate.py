"""Check distributable source, archives and Pages links."""
import gzip, hashlib, io, json, re, subprocess, sys, zipfile
from html.parser import HTMLParser
from pathlib import Path
from urllib.parse import unquote,urlsplit
root=Path(sys.argv[1]).resolve() if len(sys.argv)>1 else Path(__file__).resolve().parents[2]
site=root/'public-site'
if not (root/'research-core/ProofAudit.lean').is_file():
    raise SystemExit('Pass the clean public checkout to validate the release.')
def load(name): return json.loads((site/name).read_bytes())
def digest(data): return hashlib.sha256(data).hexdigest()
def check(value,message):
    if not value: raise ValueError(str(message))
class Links(HTMLParser):
    def __init__(self):
        super().__init__()
        self.urls=[]
    def handle_starttag(self,tag,attrs):
        self.urls.extend(v for k,v in attrs if k in ('href','src') and v)
for page in site.rglob('*.html'):
    doc=Links(); doc.feed(page.read_text())
    for url in doc.urls:
        ref=urlsplit(url)
        if ref.scheme or ref.netloc or not ref.path: continue
        check(not ref.path.startswith('/'),(page,url,'project path'))
        path=(page.parent/unquote(ref.path)).resolve()
        if path.is_dir(): path/='index.html'
        check(path.is_relative_to(site) and path.is_file(),(page,url))
names=[]
def inspect_asset(name,data):
    check(not name.startswith('/') and '..' not in Path(name).parts,name)
    check(not re.search(r'\.(?:wad|lmp|pk3|pk4|olean|ilean|pem|key)$',name,re.I),name)
    check(data[:4] not in (b'IWAD',b'PWAD'),name)
    check(not re.search(rb'(?:-----BEGIN (?:RSA |OPENSSH )?PRIVATE KEY-----|gh[pousr]_[A-Za-z0-9]{35,})',data),name)
    if name.endswith('.zip'):
        with zipfile.ZipFile(io.BytesIO(data)) as z:
            members=z.namelist(); check(len(members)==len(set(members)),name)
            for info in z.infolist():
                if not info.is_dir(): inspect_asset(info.filename,z.read(info))
    elif name.endswith('.wad.gz'):
        check(name.endswith('classic/freedoom1.wad.gz'),name)
        check(digest(gzip.decompress(data))=='7323bcc168c5a45ff10749b339960e98314740a734c30d4b9f3337001f9e703d',name)
    names.append(name)
if (root/'.git').exists():
    listed=subprocess.check_output(['git','-C',str(root),'ls-files','--cached','--others','--exclude-standard','-z'])
    paths=[root/name for name in listed.decode().split('\0') if name]
else:
    paths=root.rglob('*')
for path in paths:
    if not path.is_file() or any(part in ('.git','__pycache__','.lake','.proofs') for part in path.parts) or path.name=='.DS_Store': continue
    check(not path.is_symlink(),path)
    inspect_asset(path.relative_to(root).as_posix(),path.read_bytes())
films=load('theater/films.json')
check([(f['id'],f['tick']) for f in films]==[('E1M1',993),('E1M2',1017)],'theater')
for film in films+load('theater/cuts.json'):
    name=film.get('video') or film['file']
    check(digest((site/'theater'/name).read_bytes())==film['sha256'],name)
scenes=load('theater/scenes.json')['scenes']
for scene in scenes:
    check(scene['defaultEdition']=='tiled' and set(scene['editions'])=={'original','tiled'},scene['slug'])
    for edition in scene['editions'].values():
        check(edition['audioStreams']==0 and digest((site/'theater'/edition['file']).read_bytes())==edition['sha256'],edition['file'])
for film in films:
    for c in film['chapters']:
        if 'sourceFile' in c:
            check(digest((site/'theater'/c['sourceFile']).read_bytes())==c['sourceSha256'],c['module'])
        check(0<=c['frame']<film['frames'] and c['line'] in [i for i,_ in c['excerpt']],c['declaration'])
check(digest((site/'evidence/core-source.zip').read_bytes())==load('evidence/core.json')['archive_sha256'],'core')
check(len(load('evidence/declarations.json')['records'])==277,'declarations')
check(len(load('evidence/maps.json'))==13,'maps')
campaign=load('classic/campaign.json')
itinerary=['E1M1','E1M2','E1M3','E1M9','E1M4','E1M5','E1M6','E1M7','E1M8']
check(len(campaign['runs'])>=2,'classic independent tapes')
for run in campaign['runs']:
    r=run['evidence']
    check(r['arrivals']==itinerary and r['stop']=='episode finale' and r['fullEpisodeViaSecret'],run['runner'])
    check(r['wasmSha256']==digest((site/'classic/websockets-doom.wasm').read_bytes()),run['runner'])
check(digest((site/'classic/replay.cjs').read_bytes())==campaign['verifierSha256'],'classic verifier')
routes=load('downloads/routes.json')['routes']
expected={level['id']+'_'+style: commands for level in load('game/episode.json')['levels'] for style,commands in level['routes'].items()}
check(set(routes)==set(expected),'checked route names')
for name,commands in expected.items():
    check(routes[name]['status']=='kernel-passage' and routes[name]['commands']==len(commands),name)
    check(routes[name]['commandsU32LESha256']==digest(b''.join(k.to_bytes(4,'little') for k in commands)),name)
slots=load('classic/slots.json')
levels=load('downloads/native-episode-checks.json')
all_free={f'E{e}M{m}' for e in range(1,5) for m in range(1,10)}
check(slots['total']==45 and slots['groups']['freedoom']['count']==36 and slots['groups']['shareware']['count']==9,'classic browser starts')
check(set(levels['mapReceipts'])==all_free and all(r['status']=='compiler-prefix' and r['final']['tick']==4 for r in levels['mapReceipts'].values()),'native prefix matrix')
sidecar=(site/'downloads/lean-doom-companion.sha256').read_text().split()[0]
check(sidecar==digest((site/'downloads/lean-doom-companion.zip').read_bytes()),'companion SHA-256')
with zipfile.ZipFile(site/'downloads/lean-doom-companion.zip') as z:
    prefix='lean-doom-companion/'
    for entry in z.read(prefix+'SHA256SUMS').decode().splitlines():
        want,name=entry.split('  ',1); check(digest(z.read(prefix+name))==want,name)
    for agent in ('.agents','.claude'):
        check(z.read(prefix+agent+'/skills/verify-doom-run/SKILL.md')==(root/agent/'skills/verify-doom-run/SKILL.md').read_bytes(),agent)
experiments = root/'public-tools/experiments'
evidence = site/'evidence/experiments'
phase = load('evidence/experiments/rng.json')
check(phase['status']=='verified' and [(l['level'],len(l['outcomes']),sum(r['won'] for r in l['outcomes'])) for l in phase['levels']]==[('E1M1',256,254),('E1M2',256,8)], 'two complete RNG classifications')
subprocess.run([sys.executable,experiments/'rng/check_output.py',evidence/'rng.json'],check=True)
subprocess.run([sys.executable,experiments/'turns/export.py','--check'],check=True)
subprocess.run([sys.executable,'-B',experiments/'turns/study/check.py',evidence/'turns/study'],check=True)
subprocess.run([sys.executable,experiments/'camera/check.py','--site',site],check=True)
for name,expected_hash in load('theater/lab/checks.json')['sha256'].items():
    check(digest((site/name).read_bytes())==expected_hash,'stale replay browser check: '+name)
rng_films = load('theater/lab/camera/rng.json')['levels']
check(set(rng_films)=={'E1M1','E1M2'} and sum(map(len,rng_films.values()))==7,'RNG highlight films')
for clips in rng_films.values():
    for clip in clips.values():
        check(digest((site/'theater/lab/camera'/clip['file']).read_bytes())==clip['sha256'],clip['file'])
fork = load('evidence/experiments/fork-receipt.json')
check(fork['census']==[72,0,59,13,0,0,72] and digest((evidence/'fork-rebuild.zip').read_bytes())==fork['rebuildSha256'], 'complete input-fork certificate')
roll = load('evidence/experiments/damage-roll.json')
check(roll['sourceSha256']==digest((experiments/'DamageRoll.lean').read_bytes()) and roll['auditSha256']==digest((evidence/'damage-roll.audit.log').read_bytes()) and roll['rngSourceSha256']==digest((root/'public-tools/verifier/combat/upstream/Doom/Random.lean').read_bytes()), 'stock-kernel damage roll')
print(f'{len(names)} files and archive members inspected; 13 map records, 277 declarations, {len(routes)} routes and complete replay experiments passed.')
