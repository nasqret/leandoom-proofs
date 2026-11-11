"""Rebuild the paired Hangar trajectories and their Lean compiler-trust theorem.

Supply the extracted companion's verifier directory, the licensed original IWAD,
the route catalogue, and a new or reusable output directory. Builds run on the authorized cluster compute node.
The output directory contains the locally supplied map quotation; publish only
the files assembled by package.py.
"""
import argparse
import hashlib
import json
import os
import re
from pathlib import Path
import shutil
import struct
import subprocess
import sys


HERE = Path(__file__).resolve().parent
BASE_SHA = 'bac0988e77cddb0ebaecc5e0fd87ce524c1886ec20d25e73f89bc2cdce124307'
TURN_SHA = 'a4fd2ca0e469e144967398b63a2e089989ac0e7bf6604a1e801f33f1966a4804'
FIELDS = 'tick health exitTick hitTick hitDamage hitCount explosionTick removalTick phaseAtEnd hpAt923 phaseAt923 everyStateSafe everyCommandOrdinary'.split()


def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def commands_hash(tape):
    return hashlib.sha256(b''.join(struct.pack('<I', n) for n in tape)).hexdigest()


def pinned_tapes(catalogue):
    rows = json.loads(catalogue.read_text())
    by_hash = {commands_hash(row['commands']):row['commands'] for row in rows if row['level'] == 'E1M1'}
    return by_hash[BASE_SHA], by_hash[TURN_SHA]


def atomic_json(path, value):
    tmp = path.with_name(path.name+'.tmp')
    tmp.write_text(json.dumps(value, separators=(',',':'))+'\n')
    tmp.replace(path)


def shell(cmd, cwd, env=None):
    return subprocess.check_output(cmd, cwd=cwd, env=env, text=True).strip()


def build(verifier, wad, catalogue, out):
    sys.path.insert(0,str(verifier))
    from models import combat_data, commands_source
    project = verifier/'combat'
    out.mkdir(exist_ok=True,parents=True)
    base, learned = pinned_tapes(catalogue)
    atomic_json(out/'tapes.json', {'baseline':base,'learned':learned})
    archive_hash = digest(wad)
    if archive_hash != '1d7d43be501e67d927e415e0b8f3e29c3bf33075e859721816f652a526cac771':
        raise ValueError('expected original shareware 1.9 IWAD')
    imports, data, _ = combat_data({'level':'E1M1','commands':base,'iwadSha256':archive_hash},wad)
    data += commands_source(learned,'UInt32').replace('def tape', 'def learned')
    (out/'ForkInputs.lean').write_text(imports+'\nset_option maxRecDepth 65536\nnamespace ForkData\n'+data+'\nend ForkData\n')
    for name in ('ForkModel','ForkCapture'):
        shutil.copyfile(HERE/(name+'.lean'),out/(name+'.lean'))
    subprocess.run(['lake','build','OriginalReplay'], cwd=project, check=True)
    lean = shell(['lake','env','which','lean'],project)
    version = shell([lean,'--version'],project)
    if '4.33.0' not in version or 'd8b18978322d' not in version:
        raise ValueError('unexpected Lean release')
    paths = shell(['lake','env','printenv','LEAN_PATH'],project)
    shared = ['@lean-doom/Doom:shared','LeanDoomProofs:shared','+OriginalReplay:dynlib']
    libs = [(project/p).resolve() for p in shell(['lake','-q','query',*shared],project).splitlines()]
    if len(libs)!=3 or any(not p.is_file() for p in libs):
        raise ValueError('shared gameplay libraries not found')
    preload = ['--load-dynlib='+str(p) for p in libs]
    env=os.environ.copy()
    env['LEAN_PATH']=os.pathsep.join([str(out),*(str((project/p).resolve()) for p in paths.split(os.pathsep) if p)])
    def compile_module(module,flags=()):
        log = out/(module+'.log')
        with log.open('w') as stream:
            cmd=[lean,*flags,'-DwarningAsError=true','-o',module+'.olean',module+'.lean']
            result=subprocess.run(cmd,cwd=out,env=env,stdout=stream,stderr=subprocess.STDOUT)
        if result.returncode:
            raise RuntimeError(log.read_text())
    compile_module('ForkModel')
    compile_module('ForkInputs')
    subprocess.run([lean,*preload,'--run','ForkCapture.lean',str(wad),str(out/'tapes.json'),
                    str(out/'tracks.jsonl')],cwd=out,env=env,check=True)
    runs=[json.loads(line) for line in (out/'tracks.jsonl').read_text().splitlines()]
    if [r['index'] for r in runs] != list(range(75)):
        raise ValueError('short or disordered experiment recording')
    rows=[]
    for i,run in enumerate(runs):
        answer=run['outcome']
        literal=lambda x: str(x).lower() if type(x) is bool else str(int(x))
        rows.append('  ⟨'+', '.join(literal(answer[k]) for k in FIELDS)+'⟩')
    edited = [record['outcome'] for record in runs[3:]]
    counts = [len(edited),sum(0<r['hitTick']<923 for r in edited),sum(r['hitTick']==923 for r in edited),
              sum(r['hitTick']>923 for r in edited),sum(r['hitCount']==0 for r in edited),
              sum(r['hitCount']==0 and r['removalTick']>0 for r in edited),
              sum(r['exitTick']>0 and r['everyStateSafe'] and r['everyCommandOrdinary'] for r in edited)]
    source='''import ForkModel
import ForkInputs
set_option maxRecDepth 65536
set_option maxHeartbeats 0

namespace HangarExperiment
open HangarFork ForkData

/-- The three published controllers, then left and right at every input 887–922. -/
def observations : Array Outcome := #[
''' + ',\n'.join(rows) + ''']

/-- Actual CombatV2 replay with the compiler reduction explicitly in the trust base. -/
theorem allForkOutcomes :
    evaluate group tape.toArray learned.toArray = some observations := by native_decide

/-- Counts, in order: tested, hit earlier, hit at 923, hit later, no player hit,
    removed without a player hit, safe first exit. -/
theorem editedCensus :
    (evaluate group tape.toArray learned.toArray).map census = some #['''+', '.join(map(str,counts))+'''] := by
  rw [allForkOutcomes] <;> decide +kernel

end HangarExperiment
'''
    (out/'AllForks.lean').write_text(source)
    compile_module('AllForks',preload)
    (out/'ForkAudit.lean').write_text('import AllForks\n#print axioms HangarExperiment.allForkOutcomes\n#print axioms HangarExperiment.editedCensus\n')
    compile_module('ForkAudit')
    audit=(out/'ForkAudit.log').read_text()
    pattern=r"'(HangarExperiment\.\w+)' depends on axioms:\s*\[([^]]*)\]"
    reports={name:[a.strip() for a in raw.split(',')] for name,raw in re.findall(pattern,audit,re.S)}
    expected={'HangarExperiment.allForkOutcomes','HangarExperiment.editedCensus'}
    if set(reports)!=expected or re.sub(pattern,'',audit,flags=re.S).strip():
        raise ValueError('unexpected compiler trust audit: '+audit)
    for ax in reports.values():
        native=[a for a in ax if re.fullmatch(r'HangarExperiment\.allForkOutcomes\._native\.native_decide\.ax_[0-9_]+',a)]
        if len(native)!=1 or set(ax)-set(native)-{'propext','Classical.choice','Quot.sound'}:
            raise ValueError('unexpected compiler trust audit: '+audit)
    neg_source="""import AllForks
open HangarFork ForkData HangarExperiment
example : (evaluate group tape.toArray learned.toArray).bind (fun a => a[0]?.map Outcome.hitTick) = some 924 := by
  rw [allForkOutcomes]
  native_decide
"""
    (out/'FalseImpact.lean').write_text(neg_source)
    negative=subprocess.run([lean,'FalseImpact.lean'],cwd=out,env=env,stdout=subprocess.PIPE,stderr=subprocess.STDOUT,text=True)
    if negative.returncode==0 or 'false' not in negative.stdout.lower() or 'native_decide' not in negative.stdout:
        raise ValueError('false impact control did not fail on the intended proposition: '+negative.stdout)
    (out/'FalseImpact.log').write_text(negative.stdout)
    metadata={'version':version, 'trust':'compiler', 'map':'E1M1','iwadSha256':archive_hash,
        'wholeRoutes':3,'singleInputEdits':72,'theorem':'HangarExperiment.allForkOutcomes',
        'sourceHashes':{p.name:digest(p) for p in sorted(out.glob('*.lean'))},
        'objectHashes':{p.name:digest(p) for p in sorted(out.glob('*.olean'))},
        'engineLibraries':{p.name:digest(p) for p in libs},'buildScriptSha256':digest(HERE/'build.py'),
        'controllerHashes':[commands_hash(base),commands_hash(base[:991]+[4096]),commands_hash(learned)],'tracksSha256':digest(out/'tracks.jsonl'),
        'census':counts,'censusTheorem':'HangarExperiment.editedCensus','audit':audit.strip(),'axioms':reports,'negativeControl':'Changed original impact to 924 and Lean rejected it','negativeLogSha256':digest(out/'FalseImpact.log'),'slurmJob':os.environ.get('SLURM_JOB_ID')}
    atomic_json(out/'receipt.json', metadata)


if __name__=='__main__':
    cli=argparse.ArgumentParser(description=__doc__)
    for name in ('verifier','iwad','catalogue','output'):
        cli.add_argument(name,type=lambda val:Path(val).resolve())
    args=cli.parse_args()
    build(args.verifier,args.iwad,args.catalogue,args.output)
