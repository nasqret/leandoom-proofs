"""Create the self-contained ZIP with both repository skill layouts and the native player."""
import argparse
import hashlib
import json
from pathlib import Path
import tempfile
from zipfile import ZIP_DEFLATED, ZipFile, ZipInfo
from models import ROOT, episode_path


def build(output):
    files = {}
    for name in ('.gitignore','LICENSE','README.md','PROMPTS.md','verify.py','models.py','route_tests.py','ProofGrid.lean','lean-toolchain'):
        files[name]=ROOT/name
    files['episode.json']=episode_path()
    for directory,extensions in [('examples',{'.json'}),('validation',{'.md','.lean','.log','.json'}),
                                 ('stock',{'.md','.lean','.py','.json','.log'}),
                                 ('combat',{'.lean','.md','.toml','.json'})]:
        for path in sorted((ROOT/directory).rglob('*')):
            if not path.is_file() or any(p.startswith('.') or p=='__pycache__' for p in path.relative_to(ROOT).parts):
                continue
            if path.suffix in extensions or path.name=='lean-toolchain':
                files[path.relative_to(ROOT).as_posix()]=path
    skill=ROOT/'skills/verify-doom-run/SKILL.md'
    for agent in ('.agents','.claude'):
        files[agent+'/skills/verify-doom-run/SKILL.md']=skill
    native=ROOT.parent/'game/native'
    if (native/'MapWorker.lean').read_bytes()!=(ROOT/'combat/MapWorker.lean').read_bytes():
        raise ValueError('map player source differs from the site bridge')
    files['play.py']=native/'play.py'
    site=episode_path().parents[1]
    for name in ('game/native.html','game/native.mjs','game/theater.css','game/MapWorker.lean','game/native-routes.json',
                 'game/freedoom-start.png','game/freedoom-COPYING.txt','downloads/pair.js'):
        files[name]=site/name
    for name,want in json.loads((ROOT/'combat/upstream/provenance.json').read_text())['files'].items():
        if hashlib.sha256(files['combat/upstream/'+name].read_bytes()).hexdigest()!=want:
            raise ValueError('upstream source drift: '+name)
    hashes={n:hashlib.sha256(p.read_bytes()).hexdigest() for n,p in sorted(files.items())}
    output.parent.mkdir(parents=True,exist_ok=True)
    with tempfile.TemporaryDirectory(dir=output.parent) as scratch:
        temp=Path(scratch)/'bundle.zip'
        with ZipFile(temp,'w') as z:
            payload=[(n,p.read_bytes()) for n,p in files.items()]
            payload.append(('SHA256SUMS',''.join(f'{h}  {n}\n' for n,h in hashes.items()).encode()))
            for name,data in sorted(payload):
                info=ZipInfo('lean-doom-companion/'+name,(2026,11,11,0,0,0))
                info.external_attr=0o100644 << 16
                z.writestr(info,data,compress_type=ZIP_DEFLATED,compresslevel=9)
        with ZipFile(temp) as z:
            if z.testzip() or any(hashlib.sha256(z.read('lean-doom-companion/'+n)).hexdigest()!=h for n,h in hashes.items()):
                raise ValueError('bundle verification failed')
        temp.replace(output)
    print(f'{len(files)} sources and assets, SHA-256 {hashlib.sha256(output.read_bytes()).hexdigest()}')

if __name__=='__main__':
    cli=argparse.ArgumentParser(description=__doc__)
    cli.add_argument('output',type=Path)
    build(cli.parse_args().output)
