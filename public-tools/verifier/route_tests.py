"""Issue stock Lean proofs for all authored routes and exercise the receipt/failure paths."""
import argparse
from concurrent.futures import ThreadPoolExecutor
import hashlib
import json
from pathlib import Path
import subprocess
import sys
from models import ROOT, episode_path, digest, grid_data, GRID

def recording(room,commands):
    return dict(schema=GRID[0],engine=GRID[1],level=room['id'],commands=commands)

def run(dest):
    dest.mkdir(parents=True,exist_ok=False)
    inbox=dest/'inbox'
    inbox.mkdir()
    levels=json.loads(episode_path().read_text())['levels']
    paths=[]
    modules=[]
    audits=[]
    for room in levels:
        for style,commands in room['routes'].items():
            rec=recording(room,commands)
            stem=room['id']+'_'+style
            f=inbox/('prooflab-'+stem+'.json')
            f.write_text(json.dumps(rec,indent=2)+'\n');paths.append(f)
            _,data,_=grid_data(rec)
            modules.extend([f'namespace {stem}',data,'theorem passage : ProofGrid.safeFirstExit room (ProofGrid.initial room) tape = true := by decide +kernel',f'end {stem}',''])
            audits.append(f'#print axioms Authored.{stem}.passage')
    def verify(f):
        p=subprocess.run([sys.executable,ROOT/'verify.py','check',f],capture_output=True,text=True)
        if p.returncode:
            raise RuntimeError(p.stdout+p.stderr)
        r=json.loads((inbox/'.proofs'/digest(f.read_bytes())/'receipt.json').read_text())
        assert r['status']=='kernel-passage' and r['final']['exit'] and r['final']['hp']>0
        return {k:r[k] for k in ('level','commands','commandsU32LESha256','status','final','axioms')}
    with ThreadPoolExecutor(max_workers=2) as workers:
        all_routes=dict(zip((p.stem[9:] for p in paths),workers.map(verify,paths)))
    tests=dest/'controls';tests.mkdir()
    d=recording(levels[0],levels[0]['routes']['direct'])
    cases={'truncated':(dict(d,commands=d['commands'][:-1]),'kernel-prefix'),
           'early-exit':(dict(d,commands=d['commands']+[0]),'kernel-prefix'),
           'wrong-observation':(dict(d,final=dict(x=1,y=1,facing=0,hp=3,blue=False,opened=False,exit=False)),'rejected'),
           'unsupported':(dict(d,commands=[8]),'rejected'),'forged-engine':(dict(d,engine='other'),'rejected')}
    for name,(doc,_) in cases.items():
        (tests/f'prooflab-{name}.json').write_text(json.dumps(doc))
    p=subprocess.run([sys.executable,ROOT/'verify.py','watch',tests,'--once'],capture_output=True,text=True)
    assert p.returncode==1,p.stdout+p.stderr
    controls={}
    for name,(_,want) in cases.items():
        key=digest((tests/f'prooflab-{name}.json').read_bytes())
        r=json.loads((tests/'.proofs'/key/'receipt.json').read_text())
        assert r['status']==want,(name,r)
        controls[name]=r['status']
    (dest/'AllRoutes.lean').write_text('import ProofGrid\nnamespace Authored\n'+'\n'.join(modules)+'end Authored\n')
    (dest/'RouteAudit.lean').write_text('import AllRoutes\n'+'\n'.join(audits)+'\n')
    (dest/'routes.json').write_text(json.dumps({'engine':GRID[1],'engineSourceSha256':digest((ROOT/'ProofGrid.lean').read_bytes()),
        'episodeSha256':digest(episode_path().read_bytes()),'routes':all_routes,'controls':controls},indent=2)+'\n')
    print(f'{len(all_routes)} stock-kernel route certificates and {len(controls)} controls passed.')

if __name__=='__main__':
    cli=argparse.ArgumentParser(description=__doc__);cli.add_argument('new_directory',type=Path)
    run(cli.parse_args().new_directory)
