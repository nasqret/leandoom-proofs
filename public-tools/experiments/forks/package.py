"""Check cluster results against three independently recorded historical routes and package them."""
import argparse
from collections import Counter
import json
from pathlib import Path
import shutil
from build import FIELDS, atomic_json, commands_hash, digest, pinned_tapes
from historical import CATALOGUE, PUBLIC, historical
from bundle import bundle

PHASES = ['absent','flying','exploding','gone']
THEOREM = 'HangarExperiment.allForkOutcomes'
PROOF = {'trust':'compiler','theorem':THEOREM,'label':'Compiler-assisted Lean replay','url':'fork-AllForks.lean','receipt':'fork-receipt.json'}


def process(run):
    i,summary,rows=run['index'],run['outcome'],run['tracks'];start=0 if i<3 else 886
    if set(summary)!=set(FIELDS) or [r[0] for r in rows]!=list(range(start,summary['tick']+1)):
        raise ValueError('invalid range or outcomes')
    if any(len(r)!=8 or r[6] not in range(4) or not 0<=r[7]<2**32 or (r[4] is None)!=(r[6]==0) or (r[5] is None)!=(r[6]==0) for r in rows):
        raise ValueError('invalid raw pose')
    for row in rows:row[6]=PHASES[row[6]]
    at923=rows[923-start];end=rows[-1]
    outcome={'firstExit':summary['exitTick'] or None,'finalTick':end[0],'lastTrackedTick':end[0],
        'finalHealth':summary['health'],'thirdMissileHitTick':summary['hitTick'] or None,
        'thirdMissileHitDamage':summary['hitDamage'],'thirdMissileHitCount':summary['hitCount'],
        'explosionTick':summary['explosionTick'] or None,'removalTick':summary['removalTick'] or None,
        'healthAt923':summary['hpAt923'],'phaseAt923':PHASES[summary['phaseAt923']],
        'finalPhase':PHASES[summary['phaseAtEnd']],'everyStateSafe':summary['everyStateSafe'],
        'everyCommandOrdinary':summary['everyCommandOrdinary']}
    if (outcome['finalHealth'],outcome['finalPhase'])!=(end[3],end[6]) or (outcome['healthAt923'],outcome['phaseAt923'])!=(at923[3],at923[6]):
        raise ValueError('pose and outcome disagree')
    for phase,field in [('exploding','explosionTick'),('gone','removalTick')]:
        if next((r[0] for r in rows if r[6]==phase),None)!=outcome[field]:raise ValueError('projectile phase transition disagrees')
    if bool(summary['hitTick'])!=bool(summary['hitCount']) or bool(summary['hitDamage'])!=bool(summary['hitCount']):
        raise ValueError('missile hit counter disagrees')
    if not summary['everyCommandOrdinary'] or not 0<=summary['hitCount']<=1:raise ValueError('unexpected command or repeated missile impact')
    return outcome,rows


def edited_route(index,rows,outcome,base,baseline):
    tick=887+(index-3)//2;left=(index-3)%2==0;side='left' if left else 'right';bit=8 if left else 16
    tape=base.copy();tape[tick-1]|=bit
    if [j+1 for j,(a,b) in enumerate(zip(tape,base)) if a!=b]!=[tick] or rows[:tick-886]!=baseline[886:tick]:
        raise ValueError('input edit or shared state prefix differs')
    if outcome['finalTick']!=993 and not outcome['firstExit'] and outcome['everyStateSafe']:raise ValueError('unexpected early termination')
    edit={'tick':tick,'originalMask':base[tick-1],'editedMask':tape[tick-1],'action':'Strafe '+side}
    events=[{'tick':886,'kind':'launch','detail':'The third imp fireball spawns.'},{'tick':tick,'kind':'edit','detail':f'Add strafe {side} for this input only.'}]
    hit=outcome['thirdMissileHitTick'];explosion=outcome['explosionTick'];removed=outcome['removalTick']
    if hit:events.append({'tick':hit,'kind':'hit','detail':f'Projectile 2 hits the player for {outcome["thirdMissileHitDamage"]} raw damage.'})
    if explosion and explosion!=hit:events.append({'tick':explosion,'kind':'explosion','detail':'The projectile begins exploding without a player hit.'})
    if removed:events.append({'tick':removed,'kind':'removed','detail':'Projectile 2 is removed.'})
    won=outcome['firstExit'] is not None
    end_detail='The level first requests its exit.' if won else 'The recorded controller ends without an exit.' if outcome['everyStateSafe'] else 'The trace reaches an unsafe state.'
    events.append({'tick':outcome['finalTick'],'kind':'exit' if won else 'end','detail':end_detail})
    return {'id':f'strafe-{tick}-{side}','label':f'Strafe {side} at {tick}','kind':'strafe','edit':edit,
        'tracks':rows,'events':sorted(events,key=lambda e:e['tick']),'result':outcome,'commandsU32LESha256':commands_hash(tape),
        'proof':{**PROOF,'row':index},'trackProvenance':'Recorded CombatV2 replay. Earlier rows come from the identical original prefix.'}


def pack(raw,public):
    meta=json.loads((raw/'receipt.json').read_text())
    if meta['theorem']!=THEOREM or meta['trust']!='compiler' or digest(raw/'tracks.jsonl')!=meta['tracksSha256']:
        raise ValueError('mismatched capture or theorem receipt')
    if 'sorryAx' in meta['audit'] or THEOREM+'._native.native_decide.ax_' not in meta['audit']:raise ValueError('unexpected theorem trust')
    data=historical(public);routes=data['routes'];base,_=pinned_tapes(CATALOGUE)
    runs=[json.loads(l) for l in (raw/'tracks.jsonl').read_text().splitlines()]
    if [r['index'] for r in runs]!=list(range(75)):raise ValueError('incomplete sweep')
    for i,run in enumerate(runs):
        outcome,rows=process(run)
        if i<3:
            route=routes[i]
            if route['result']!=outcome or route['tracks']!=rows:raise ValueError(f'independent historical route {i} differs')
            route['outcomeProof']={**PROOF,'row':i}
        else:
            routes.append(edited_route(i,rows,outcome,base,routes[0]['tracks']))
    results=[r['result'] for r in routes[3:]];counts=Counter(r['thirdMissileHitTick'] for r in results)
    data['sweep']={'firstEditTick':887,'lastEditTick':922,'directions':['left','right'],'cases':len(results),
        'hitTicks':{str(k):v for k,v in sorted(counts.items(),key=lambda p:p[0] or 0) if k is not None},
        'noHitThroughEnd':counts[None],'removedWithoutPlayerHit':sum(not r['thirdMissileHitTick'] and bool(r['removalTick']) for r in results),
        'firstExits':dict(Counter(str(r['firstExit']) for r in results if r['firstExit'])),
        'noExitByEnd':sum(not r['firstExit'] for r in results),'theorem':THEOREM}
    for name in ('AllForks','ForkModel','ForkCapture','ForkAudit'):
        src=raw/(name+'.lean')
        if digest(src)!=meta['sourceHashes'][src.name]:raise ValueError('published source mismatch')
        shutil.copyfile(src,public/('fork-'+src.name))
    archive=public/'fork-rebuild.zip';bundle(raw,archive)
    receipt={**meta,'rebuildArchive':archive.name,'rebuildSha256':digest(archive),'trackFields':data['trackFields'],'rowOrder':'Original 993, early Use 992, learned turn 978, then input 887 through 922 with left then right.',
        'scope':'The theorem checks the 75 per-route outcomes. Native coordinates were cross-checked against three independent historical tracks. Each single added strafe retains the entire original suffix.'}
    atomic_json(public/'fork-receipt.json',receipt);atomic_json(public/'forks.json',data)
    print(json.dumps(data['sweep'],indent=2))

if __name__=='__main__':
    cli=argparse.ArgumentParser(description=__doc__);cli.add_argument('raw',type=Path)
    cli.add_argument('--public',type=Path,default=PUBLIC);args=cli.parse_args();pack(args.raw,args.public)
