"""Check every registered Hangar approach, controller, position and facing in Lean."""
import argparse
from concurrent.futures import ThreadPoolExecutor
import gzip
import hashlib
import json
import os
from pathlib import Path
import re
import shutil
import struct
import subprocess
import sys
import time

HERE=Path(__file__).resolve().parent
ROOT=HERE.parents[3]
COMPANION=ROOT/'public-tools/verifier'
DEPOSIT=ROOT/'public-site/evidence/experiments/turns'
TAPE=ROOT/'public-site/evidence/recordings/prooflab-e1m1-993.json'
sys.path.insert(0,str(COMPANION))
import models
from verify import STANDARD, audit


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def write_json(path,value):
    path.write_text(json.dumps(value,separators=(',',':'),allow_nan=False)+'\n')


def need(ok,message):
    if not ok:
        raise ValueError(message)


def call(argv,cwd,env=None,log=None):
    proc=subprocess.run(argv,cwd=cwd,env=env,text=True,stdout=subprocess.PIPE,stderr=subprocess.STDOUT)
    if log: log.write_text(proc.stdout)
    if proc.returncode: raise RuntimeError(f'{argv[0]} in {cwd}: {proc.stdout[-5000:]}')
    return proc.stdout.strip()


def encode(paths,keys):
    data=bytearray()
    for path,tape in zip(paths,keys):
        need(len(path)==len(tape)+1,'path/command tick alignment')
        data.append(len(path))
        for x,y,angle in path: data.extend(struct.pack('<iiI',x,y,angle))
        for key in tape: data.extend(struct.pack('<I',key))
    return data


def aggregate():
    names=[f'Cut{i:02}' for i in range(25)]
    rows=',\n  '.join(f'some rows{i:02}' for i in range(25))
    expr=',\n    '.join(f'(evaluateCut group tape {i}).map Prod.fst' for i in range(25))
    eqs=', '.join(f'outcomes{i:02}' for i in range(25))
    pre=(''.join(f'import {name}\n' for name in names)+'open TurnFamily\nnamespace Recording\n'
         'set_option maxRecDepth 131072\nset_option maxHeartbeats 0\n'
         f'\ntheorem completeTable : table group tape = [\n  {rows}] := by\n'
         f'  change [\n    {expr}] = _\n  rw [{eqs}]\n')
    results={
      'caseCount':'(entries (table group tape)).length = 2750',
      'allRunsSafeAndZeroShot':'(entries (table group tape)).all (·.safe) = true',
      'winningCount':'(winning (table group tape)).length = 651',
      'minimumInThisFamily':'minimum (table group tape) = some 977',
      'eightMinimizers':'settingsAt (table group tape) 977 = [(6,5,9), (6,6,9), (6,10,9), (7,9,8), '
                       '(8,10,7), (10,10,5), (11,10,4), (14,10,1)]',
      'minimizerCount':'(settingsAt (table group tape) 977).length = 8',
      'lowerBoundCheck':'(winning (table group tape)).all (fun a => decide (977 ≤ a.firstExit)) = true',
    }
    for name,prop in results.items():
        pre+=f'\ntheorem {name} : {prop} := by\n  rw [completeTable]\n  decide +kernel\n'
    pre+=('\ntheorem noFasterEligibleExit (a : Answer) (h : a ∈ winning (table group tape)) :\n'
          '    977 ≤ a.firstExit := by\n  exact of_decide_eq_true ((List.all_eq_true.mp lowerBoundCheck) a h)\n'
          '\nend Recording\n')
    return pre,['completeTable',*results,'noFasterEligibleExit']


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--iwad',type=Path,required=True); p.add_argument('--work',type=Path,required=True)
    p.add_argument('--output',type=Path,required=True); p.add_argument('--workers',type=int,default=6)
    args=p.parse_args(); start=time.monotonic()
    need(1<=args.workers<=16,'unsupported worker count')
    work,out,iwad=(x.resolve() for x in (args.work,args.output,args.iwad))
    work.mkdir(parents=True,exist_ok=True); out.mkdir(parents=True,exist_ok=True)
    lean=Path(call(['lean','--print-prefix'],HERE))/'bin/lean'
    version=call([lean,'--version'],HERE)
    need('4.33.0' in version and 'd8b18978322d' in version,'unexpected Lean toolchain')
    call(['lake','build','turn-capture','TurnFamily:shared'],HERE,log=work/'engine-build.log')
    paths=call(['lake','env',sys.executable,'-c','import os; print(os.environ["LEAN_PATH"])'],HERE)
    env={**os.environ,'LEAN_PATH':os.pathsep.join([str(work),*[str((HERE/q).resolve()) for q in paths.split(os.pathsep) if q]])}
    libs=[]
    for cwd,targets in [(COMPANION/'combat',['@lean-doom/Doom:shared','LeanDoomProofs:shared','+OriginalReplay:dynlib']),
                        (HERE,['TurnFamily:shared'])]:
        raw=call(['lake','-q','query',*targets],cwd)
        resolved=[(cwd/q.strip()).resolve() for q in raw.splitlines()]
        need(len(resolved)==len(targets) and all(q.is_file() for q in resolved),'missing native libraries')
        libs.extend(resolved)
    flags=['--load-dynlib='+str(q) for q in libs]
    doc=models.parse(TAPE.read_bytes())
    imports,defs,wad_hash=models.combat_data(doc,iwad)
    (work/'Inputs.lean').write_text(imports+'import TurnFamily\nset_option maxRecDepth 65536\nnamespace Recording\n'+defs+'end Recording\n')
    call([lean,'-o','Inputs.olean','Inputs.lean'],work,env,work/'Inputs.log')
    keys=work/'commands.txt'; keys.write_text(''.join(f'{k}\n' for k in doc['commands']))
    brow_file=DEPOSIT/'study/browser-controls.json.gz'
    browser=json.loads(gzip.decompress(brow_file.read_bytes()))
    need(browser['shape']==[25,11,10] and browser['prefixTicks']==942 and
         browser['prefixU32leSha256']==hashlib.sha256(b''.join(struct.pack('<I',k) for k in doc['commands'][:942])).hexdigest(),
         'browser tape prefix mismatch')
    census=[json.loads(line) for line in gzip.decompress((DEPOSIT/'grid.jsonl.gz').read_bytes()).splitlines()]
    previous=json.loads((DEPOSIT/'result.json').read_text())
    need(len(census)==2750 and sha(DEPOSIT/'grid.jsonl.gz')==previous['file_sha256']['grid.jsonl.gz']
         =='1a478053b3c2c9e8bee89a85965433451eeefcf50cfdd7f86aa57f8f5c08f8f4','WMI census hash mismatch')
    exe=HERE/'.lake/build/bin/turn-capture'
    shutil.copyfile(HERE/'TurnFamily.lean',out/'TurnFamily.lean')
    shutil.copyfile(brow_file,out/'browser-controls.json.gz') if brow_file.resolve()!=(out/'browser-controls.json.gz').resolve() else None
    def check_cut(cut):
        output=call([exe,iwad,keys,str(cut)],work)
        items=[json.loads(line) for line in output.splitlines()]
        need(len(items)==110,'wrong cut cardinality')
        ps=[]; terms=[]; winners=[]
        for i,item in enumerate(items):
            row=item['answer']; path=item['path']; b,a=divmod(i,10)
            old=census[110*cut+i]; obs=old['observation']
            end=992-cut-a
            need([row['cut'],row['blend'],row['approach']]==old['edit']==[cut,b,a],'candidate order')
            need(len(path)==end-942+1 and len(browser['suffixes'][cut][i])==end-942,'input count')
            need(row['safe'] and obs['minimum_health']>0 and obs['error'] is None and obs['shots']==0,'all-prefix safety')
            need(row['firstExit']==(obs['first_exit'] or 0) and bool(row['firstExit'])==old['win'],'first-safe exit mismatch')
            if row['firstExit']:
                need(row['firstExit']==end and path[-1]==[obs['x'],obs['y'],obs['angle']],'winning endpoint mismatch')
                winners.append((end,cut,b,a))
            terms.append(f'⟨{cut},{b},{a},{row["firstExit"]},true⟩'); ps.append(path)
        path_file=out/f'paths-{cut}.json'
        write_json(path_file,{'cut':cut,'startTick':942,'coordinateFormat':'absolute-signed-16.16',
                   'angleFormat':'unsigned-32-bit-BAM','paths':ps})
        binary=encode(ps,browser['suffixes'][cut])
        name=f'Cut{cut:02}'
        text=('import Inputs\nopen TurnFamily\nnamespace Recording\n'
              'set_option maxRecDepth 65536\nset_option maxHeartbeats 0\n'+
              f'def rows{cut:02} : List Answer := [\n  '+',\n  '.join(terms)+']\n'+
              f'def bytes{cut:02} : ByteArray := OriginalReplay.decodeHex "{binary.hex()}"\n'+
              f'theorem checkedCut{cut:02} : evaluateCut group tape {cut} = some (rows{cut:02}, bytes{cut:02}) := by native_decide\n'+
              f'theorem outcomes{cut:02} : (evaluateCut group tape {cut}).map Prod.fst = some rows{cut:02} :=\n'+
              f'  congrArg (Option.map Prod.fst) checkedCut{cut:02}\nend Recording\n')
        (work/(name+'.lean')).write_text(text)
        call([lean,*flags,'-DwarningAsError=true','-o',name+'.olean',name+'.lean'],work,env,work/(name+'.log'))
        shutil.copyfile(work/(name+'.lean'),out/(name+'.lean'))
        return ({'cut':cut,'cases':len(ps),'ticksWithSpawnFrame':sum(map(len,ps)),'wins':len(winners),
                 'nativeComparisonRows':len(items),'pathSha256':sha(path_file),'encodingSha256':hashlib.sha256(binary).hexdigest(),
                 'sourceSha256':sha(out/(name+'.lean')),'objectSha256':sha(work/(name+'.olean'))},winners)
    print('Checking 25 independent cuts against the historical census and raw controller/trajectory encodings',flush=True)
    with ThreadPoolExecutor(args.workers) as pool: batches=list(pool.map(check_cut,range(25)))
    summaries=[x for x,_ in batches]; wins=[w for _,ws in batches for w in ws]
    best=min(w[0] for w in wins); mins=[list(w[1:]) for w in wins if w[0]==best]
    need((len(wins),best,mins)==(previous['winning_edits'],previous['best_ticks_within_grid'],previous['fastest_edits']),
         'historical aggregate mismatch')
    text,roots=aggregate(); (work/'Certificate.lean').write_text(text)
    print('Compiling family minimum, bound, eight witnesses, count and case-table assembly',flush=True)
    call([lean,'-DwarningAsError=true','-o','Certificate.olean','Certificate.lean'],work,env,work/'Certificate.log')
    blocks=[f'checkedCut{i:02}' for i in range(25)]
    (work/'Audit.lean').write_text('import Certificate\n'+''.join(f'#print axioms Recording.{n}\n' for n in [*blocks,*roots]))
    report=call([lean,'Audit.lean'],work,env,work/'audit.log')
    pattern=r"'(Recording\.\w+)' depends on axioms: \[([^\]]*)\]"
    ax={name:[x.strip() for x in values.split(',')] for name,values in re.findall(pattern,report,re.S)}
    need(set(ax)=={'Recording.'+n for n in [*blocks,*roots]} and not re.sub(pattern,'',report,flags=re.S).strip(),'audit incomplete')
    natives=set()
    for name in blocks:
        q='Recording.'+name
        audit(f"'{q}' depends on axioms: ["+', '.join(ax[q])+']',[q],'compiler')
        natives.update(set(ax[q])-STANDARD)
    for name in roots: need(set(ax['Recording.'+name])-STANDARD==natives,'unexpected proof dependency '+name)
    for name in ('Certificate.lean','Audit.lean','audit.log'): shutil.copyfile(work/name,out/name)
    write_json(out/'receipt.json',{'schema':'hangar-final-turn-lean-v1','status':'verified','engine':'CombatV2',
               'trust':'compiler-assisted Lean for the 25 exact cut equalities; kernel reduction on their derived table',
               'slurmJob':os.environ.get('SLURM_JOB_ID'),'slurmCluster':os.environ.get('SLURM_CLUSTER_NAME'),
               'lean':version,'seconds':round(time.monotonic()-start,3),'workers':args.workers,
               'prefixTicks':942,'shape':[25,11,10],'cases':2750,'winning':len(wins),'minimum':best,'minimizers':mins,
               'pathSamples':sum(r['ticksWithSpawnFrame'] for r in summaries),'cuts':summaries,'wmiJob':previous['job'],
               'wmiGridSha256':sha(DEPOSIT/'grid.jsonl.gz'),'browserControlExportSha256':sha(brow_file),
               'turnTapeSourceSha256':browser['turnTapeSourceSha256'],'rootSourceSha256':sha(out/'Certificate.lean'),
               'rulesSha256':sha(HERE/'TurnFamily.lean'),'engineRulesSha256':models.rules_digest(True),
               'iwadSha256':wad_hash,'recordingSha256':sha(TAPE),'privateInputsSha256':sha(work/'Inputs.lean'),
               'generatorSha256':sha(HERE/'run.py'),'nativeDriverSha256':sha(HERE/'TurnCapture.lean'),
               'certificateObjectSha256':sha(work/'Certificate.olean'),'auditSha256':sha(out/'audit.log'),
               'nativeLibrarySha256':{q.name:sha(q) for q in libs},'axioms':ax})
    print(f'Certified {len(wins)} winning edits, minimum {best}, {len(mins)} fastest triples',flush=True)

if __name__=='__main__': main()
