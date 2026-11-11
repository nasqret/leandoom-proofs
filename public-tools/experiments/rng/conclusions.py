"""Derive counts and witnesses from the accepted classification equalities."""
import argparse
import json
import os
from pathlib import Path
import re
import shutil
import sys
from run import HERE, STANDARD, call, did_win, sha, write_json


def opt(n):
    return 'none' if n is None else 'some '+str(n)


def generate(level):
    rows=level['outcomes']
    winners=sum(did_win(o) for o in rows)
    exact=sum(did_win(o) and o['firstExitTick']==level['commands'] for o in rows)
    baseline=level['baselineIndex']
    categories=[('ordinary',rows[baseline])]
    seen=set()
    for o in rows:
        if did_win(o):
            continue
        kind = ('physicsError' if o['errorTick'] is not None else
                'died' if o['firstDeathTick'] is not None else 'aliveWithoutExit')
        if kind not in seen:
            categories.append((kind,o))
            seen.add(kind)
    b='(classify group mapName tape)'
    statements=[
        ('safeExitCount',f'winCount {b} = {winners}'),
        ('lastInputSafeExitCount',f'lastInputWinCount {b} tape.length = {exact}'),
        ('ordinaryStartWins',f'winsAt {b} {baseline} = true'),
    ]
    positive=next((o['index'] for o in rows if o['index']!=baseline and did_win(o)),None)
    if positive is not None:
        statements.append((f'alternatePhase{positive}Wins', f'winsAt {b} {positive} = true'))
    short_winners=winners<=len(rows)-winners
    exceptional=[o['index'] for o in rows if did_win(o)==short_winners]
    predicate='safeExitWithin' if short_winners else '(fun o => !(safeExitWithin o))'
    series=', '.join(map(str,exceptional))
    statements.append(('winningCursors' if short_winners else 'losingCursors',
        f'(((outcomes {b}).filter {predicate}).map (·.index)) = [{series}]'))
    witnesses=[]
    for kind,o in categories:
        i=o['index']
        fields=(', '.join(opt(o[k]) for k in ('firstExitTick','firstDeathTick','errorTick'))+
                ', '+str(o['health']))
        name=f'{kind}Phase{i}'
        statements.append((name,f'eventsAndHealth {b} {i} = some ({fields})'))
        witnesses.append({'kind':kind,'index':i,'theorem':'Recording.'+name})
    reductions=' := by\n  rw [all256]\n  decide +kernel\n'
    src=('import Certificate\nimport RngConclusionRules\nopen RngExperiment\nnamespace Recording\n'
         'set_option maxRecDepth 65536\nset_option maxHeartbeats 0\n\n'+
         '\n'.join('theorem '+n+' : '+t+reductions for n,t in statements))
    names=[n for n,_ in statements]
    if len(categories)>1:
        i=categories[1][1]['index']
        src+=('\ntheorem existsLosingCursor : ∃ i : UInt8, winsAt '+b+' i.toNat = false := by\n'
              f'  refine ⟨{i}, ?_⟩\n  rw [all256]\n  decide +kernel\n')
        names.append('existsLosingCursor')
    return src+'end Recording\n',names,{'safeExitCount':winners,'lastInputSafeExitCount':exact,
            'exceptionalKind':'winning' if short_winners else 'losing','exceptionalIndices':exceptional,
            'alternateWinningIndex':positive,'witnesses':witnesses}


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--work',type=Path,required=True)
    p.add_argument('--output',type=Path,required=True)
    p.add_argument('--iwad',help=argparse.SUPPRESS)
    p.add_argument('--workers',help=argparse.SUPPRESS)
    args=p.parse_args()
    out=args.output.resolve()
    work=args.work.resolve()
    data=json.loads((out/'rng.json').read_text())
    receipt_file=out/'rng/receipt.json'
    receipt=json.loads(receipt_file.read_text())
    if data['status']!='verified' or receipt['dataSha256']!=sha(out/'rng.json'):
        raise ValueError('complete classification and its matching receipt are required')
    lean=Path(call(['lean','--print-prefix'],HERE))/'bin/lean'
    paths=call(['lake','env',sys.executable,'-c','import os; print(os.environ["LEAN_PATH"])'],HERE)
    libs=[str((HERE/p).resolve()) for p in paths.split(os.pathsep) if p]
    shutil.copyfile(HERE/'RngConclusionRules.lean',out/'rng/RngConclusionRules.lean')
    for lv in data['levels']:
        name=lv['level']
        folder=work/name
        public=out/'rng'/name.lower()
        env={**os.environ,'LEAN_PATH':os.pathsep.join([str(folder),*libs])}
        shutil.copyfile(HERE/'RngConclusionRules.lean',folder/'RngConclusionRules.lean')
        source,names,conclusions=generate(lv)
        (folder/'Conclusions.lean').write_text(source)
        (folder/'AuditConclusions.lean').write_text('import Conclusions\n'+
                ''.join(f'#print axioms Recording.{n}\n' for n in names))
        for module in ('RngConclusionRules','Conclusions'):
            call([lean,'-DwarningAsError=true','-o',module+'.olean',module+'.lean'],folder,
                 env=env,log=folder/(module+'.log'))
        log=call([lean,'AuditConclusions.lean'],folder,env=env,log=folder/'conclusions-audit.log')
        pattern=r"'(Recording\.\w+)' depends on axioms: \[([^\]]*)\]"
        axioms={n:[x.strip() for x in a.split(',')] for n,a in re.findall(pattern,log,re.S)}
        expected_names={'Recording.'+n for n in names}
        allowed=set(receipt['levels'][name]['axioms']['Recording.all256'])
        if (set(axioms)!=expected_names or re.sub(pattern,'',log,flags=re.S).strip() or
            any(set(v)-STANDARD != allowed-STANDARD for v in axioms.values())):
            raise ValueError('new conclusions do not inherit exactly the audited compiler axioms')
        for f in ('Conclusions.lean','AuditConclusions.lean','conclusions-audit.log'):
            shutil.copyfile(folder/f,public/f)
        lv['conclusions']={**conclusions,'source':f'rng/{name.lower()}/Conclusions.lean',
                           'audit':f'rng/{name.lower()}/conclusions-audit.log',
                           'theorems':sorted(expected_names)}
        receipt['levels'][name]['conclusions']={**conclusions,'axioms':axioms,
                      'sourceSha256':{f:sha(public/f) for f in ('Conclusions.lean','AuditConclusions.lean','conclusions-audit.log')},
                      'objectSha256':sha(folder/'Conclusions.olean')}
        print(f"{name}: proved {conclusions['safeExitCount']} safe exits, {conclusions['lastInputSafeExitCount']} on final input",flush=True)
    write_json(out/'rng.json',data)
    receipt['dataSha256']=sha(out/'rng.json')
    receipt['conclusionsJob']=os.environ.get('SLURM_JOB_ID')
    receipt['conclusionsGeneratorSha256']=sha(HERE/'conclusions.py')
    receipt['conclusionsRulesSha256']=sha(HERE/'RngConclusionRules.lean')
    write_json(receipt_file,receipt)

if __name__=='__main__':
    main()
