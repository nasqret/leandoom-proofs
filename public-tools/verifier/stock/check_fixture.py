"""Rebuild the historical split-scan recipe on the completely original PROOF01 room."""
import argparse
import json
import os
from pathlib import Path
import re
import shutil
import subprocess
import sys
from assemble import render
from certify import checked_axioms, RESULTS, tape_literal

ROOT = Path(__file__).resolve().parent

def build(destination):
    destination.mkdir(parents=True,exist_ok=False)
    shutil.copytree(ROOT/'providers',destination,dirs_exist_ok=True)
    combat=ROOT.parent/'combat'
    # Lean resolves a namespace under its first matching search directory.
    # Place every local LeanDoomProofs module in that same build tree.
    shutil.copytree(combat/'LeanDoomProofs',destination/'LeanDoomProofs',dirs_exist_ok=True)
    def output(args,directory):
        return subprocess.check_output(args,cwd=directory,text=True).strip()
    lean=Path(output(['lean','--print-prefix'],combat))/'bin'/('lean.exe' if os.name=='nt' else 'lean')
    version=output([lean,'--version'],combat)
    if 'version 4.33.0,' not in version or 'd8b18978322d' not in version:
        raise ValueError('use the bundled lean-toolchain')
    subprocess.run(['lake','build','OriginalReplay'],cwd=combat,check=True)
    lean_paths=output(['lake','env',sys.executable,'-c',"import os; print(os.environ['LEAN_PATH'])"],combat)
    layers=[str((combat/p).resolve()) for p in lean_paths.split(os.pathsep) if p]
    env=dict(os.environ,LEAN_PATH=os.pathsep.join([str(destination),*layers]))
    raw=(ROOT/'tape.json').read_bytes()
    keys=json.loads(raw)['inputs']
    binding=json.loads((ROOT/'bindings.json').read_text())
    (destination/'CampaignWinner.lean').write_text(render(raw,binding))
    (destination/'RecordedTapeLiteral.lean').write_text(tape_literal(keys))
    members=['RecordedOnePress.'+name for name in RESULTS]+['FixtureAudit.literal_identity']
    (destination/'Audit.lean').write_text('import CampaignWinner\nimport RecordedTapeLiteral\n'
        'theorem FixtureAudit.literal_identity : RecordedOnePress.inputs = LeanDoomProofs.RecordedTapeLiteral.inputs := by rfl\n'+
        ''.join('#print axioms '+name+'\n' for name in members))
    sources={p.relative_to(destination).with_suffix('').as_posix().replace('/','.'):p for p in destination.rglob('*.lean')}
    built=set()
    def compile_module(name):
        if name not in sources or name in built:
            return
        source=sources[name]

        for dependency in re.findall(r'^import ([A-Za-z0-9_.]+)',source.read_text(),re.M):
            compile_module(dependency)
        path=source.relative_to(destination)
        log=destination/path.with_suffix('.log')
        with log.open('w') as stream:
            subprocess.run([lean,'-o',path.with_suffix('.olean'),path],cwd=destination,env=env,
                           stdout=stream,stderr=subprocess.STDOUT,check=True)
        built.add(name)
    compile_module('Audit')
    ax=checked_axioms((destination/'Audit.log').read_text(),members)
    result={'level':'PROOF01','commands':keys,'status':'kernel-passage','lean':version,'axioms':ax}
    (destination/'accepted.json').write_text(json.dumps(result,indent=2)+'\n')
    print(f'{len(built)} source modules built, {len(ax)} roots audited. See {destination / "accepted.json"}.')

if __name__=='__main__':
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('new_directory',type=Path)
    build(p.parse_args().new_directory.resolve())
