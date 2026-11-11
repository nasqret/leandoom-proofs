"""Verify representative published Pages assets against this checkout without credentials."""
import argparse,hashlib,json
from pathlib import Path
from urllib.parse import urljoin
from urllib.request import Request,urlopen
parser=argparse.ArgumentParser(description=__doc__)
parser.add_argument('--base',default='https://nasqret.github.io/leandoom-proofs/')
parser.add_argument('--revision',default='')
parser.add_argument('--output',type=Path)
args=parser.parse_args()
root=Path(__file__).resolve().parents[2]/'public-site'
records={}
paths=['index.html','evidence/maps.json','evidence/core-source.zip','theater/films.json','theater/cuts.json','theater/scenes.json','downloads/combat-runs.json','downloads/lean-doom-companion.zip','learn/passage-lab.ipynb','learn/jupyter-book.zip','learn/obsidian-vault.zip','classic/checks.json','classic/campaign.json','classic/slots.json','downloads/native-episode-checks.json','evidence/ClassicCampaign.json','evidence/e1m9/three-key-certificate.json','evidence/companion-release.json','game/native-verification.json'] + ['theater/lab/index.html','theater/lab/lab.mjs','theater/lab/rng.mjs',
             'theater/lab/camera/cameras.json','theater/lab/camera/rng.json','evidence/experiments/rng.json',
             'evidence/experiments/forks.json','evidence/experiments/damage-roll.json','learn/replay-experiments.html',
             'theater/index.html','theater/player.js','theater/computer-station.mp4','theater/source/e1m7/Certificate.lean',
             'theater/lab/checks.json','theater/lab/camera/strafe-910-right.mp4',
             'theater/lab/turn-path.mjs','evidence/experiments/turns/study/Certificate.lean',
             'evidence/experiments/turns/study/receipt.json','evidence/experiments/turns/study/paths-6.json']
paths.extend(['theater/tick-view.js','theater/tick-view.css','theater/theater.css','theater/source/OriginalReplay.lean'])
paths.extend(path.relative_to(root).as_posix() for path in sorted((root/'theater/ticks').rglob('*')) if path.is_file())
films=json.loads((root/'theater/films.json').read_bytes())
alternates=root/'theater/alternates.json'
if alternates.is_file():
    paths.append('theater/alternates.json')
    for variants in json.loads(alternates.read_bytes())['routes'].values():
        films.extend(variants)
for film in films:
    paths.append('theater/'+film['video'])
    if film.get('route'):
        for name in ('recording.json','receipt.json','clean-build.json','chapter-recheck.json','camera.json'):
            paths.append('theater/'+film['evidence']+'/'+name)
    for chapter in film['chapters']:
        if 'sourceFile' in chapter:
            paths.append('theater/'+chapter['sourceFile'])
for passage in (root/'evidence/passages').rglob('*.json'):
    paths.append(passage.relative_to(root).as_posix())
for name in dict.fromkeys(paths):
    expected=hashlib.sha256((root/name).read_bytes()).hexdigest()
    url=urljoin(args.base,name)+'?revision='+args.revision
    request=Request(url,headers={'User-Agent':'Lean-Doom-Lab public verification'})
    with urlopen(request,timeout=30) as response:
        actual=hashlib.file_digest(response,'sha256').hexdigest()
    if actual!=expected: raise ValueError(name+' differs from the checkout')
    records[name]=actual
result=json.dumps({'base':args.base,'revision':args.revision,'sha256':records},indent=2)+'\n'
if args.output: args.output.write_text(result)
else: print(result,end='')
