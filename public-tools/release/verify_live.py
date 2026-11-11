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
for name in ['index.html','evidence/maps.json','evidence/core-source.zip','theater/films.json','theater/cuts.json','theater/scenes.json','downloads/combat-runs.json','downloads/lean-doom-companion.zip','learn/passage-lab.ipynb','learn/jupyter-book.zip','learn/obsidian-vault.zip','classic/checks.json','classic/campaign.json','classic/slots.json','downloads/native-episode-checks.json','evidence/ClassicCampaign.json','evidence/e1m9/three-key-certificate.json','evidence/companion-release.json','game/native-verification.json']:
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
