"""Recover ordinary spawn cases from retained WMI replay receipts; does not execute Lean."""
import argparse
import gzip
import hashlib
import json
from pathlib import Path
import struct

from run import LEVEL_TAPES, ROOT, SCOPE, display_frame, models, sample_frames, sha, write_json

SOURCES = {
    'E1M1': ('original-315491', 'CertifiedE1M1Prefix992.lean', 'certifiedAuthenticE1M1'),
    'E1M2': ('operator-315489', 'CertifiedAuthenticE1M2.lean', 'NuclearFullPassage.certifiedAuthenticE1M2'),
}


def check(condition, message):
    if not condition:
        raise ValueError(message)


def baseline(level):
    origin, theorem_file, theorem = SOURCES[level]
    base = ROOT/'research/proof-theater/live/evidence'/origin/'conversion/native'
    receipt = json.loads((base/'receipt.json').read_text())
    packed = gzip.decompress((base/'trace.jsonl.gz').read_bytes())
    check(hashlib.sha256(packed).hexdigest()==receipt['trace_sha256'], 'trace hash mismatch')
    check(sha(base/'tape.json')==receipt['tape_sha256'], 'archived tape hash mismatch')
    doc = models.parse(LEVEL_TAPES[level].read_bytes())
    commands = doc['commands']
    archived_inputs = json.loads((base/'tape.json').read_text())['inputs']
    binary_hash = hashlib.sha256(b''.join(struct.pack('<I',k) for k in commands)).hexdigest()
    check(archived_inputs==commands and binary_hash==receipt['inputs_u32le_sha256'], 'tape differs from replay')
    check(receipt['iwad_sha256']==doc.get('iwadSha256',models.IWAD), 'IWAD mismatch')
    check((receipt['engine'],receipt['map'],receipt['input_count'],receipt['result'])==
          ('CombatV2',level,len(commands),'native_first_exit'), 'wrong engine or route')
    raw = [json.loads(line) for line in packed.splitlines()]
    check(len(raw)==len(commands)+1==receipt['matched_states'] and
          all(r['t']==i for i,r in enumerate(raw)), 'nonconsecutive ticks')
    check(raw[-1]==receipt['final'] and all(r['error'] is None and r['health']>0 for r in raw),
          'endpoint or prefix safety mismatch')
    check(not any(r['exit'] for r in raw[:-1]) and raw[-1]['exit'], 'non-final first exit')
    check(receipt['spawn']=='Simulation.spawn map true 1' and receipt['tick']=='Simulation.tickCombatV2 mask true',
          'unsupported replay contract')
    frames = [{'tick':r['t'],'xRaw':r['x'],'yRaw':r['y'],'angleRaw':r['angle'],'health':r['health'],
               'shots':r['shots'],'kills':r['kills'],'launches':r['projectiles'],'exit':r['exit'],
               'error':r['error'] is not None} for r in raw]
    initial, final = raw[0], raw[-1]
    expected = (5,48,0,993) if level=='E1M1' else (25,73,73,1017)
    check((initial['rng_play'],final['health'],final['shots'],final['t'])==expected, 'wrong ordinary endpoint')
    phase, finalframe = initial['rng_play'], display_frame(frames[-1])
    changes = {i for i in range(1,len(frames))
               if any(frames[i][k] != frames[i-1][k] for k in ('health','kills','launches','exit'))}
    critical = {i for t in changes for i in (t-1,t)}
    outcome = {'index':phase,'won':True,'firstExitTick':final['t'],'firstDeathTick':None,'errorTick':None,
               'xRaw':final['x'],'yRaw':final['y'],'angleRaw':final['angle'],'x':finalframe['x'],
               'y':finalframe['y'],'angle':finalframe['angle'],'health':final['health'],'shots':final['shots'],
               'samples':sample_frames(frames,70,critical),'divergenceTick':None}
    source='../roots/'+theorem_file
    check(theorem_file in [p.name for p in (ROOT/'public-site/evidence/roots').glob('*.lean')],
          'published passage source absent')
    trace = {'index':phase,'divergenceTick':None,'frames':sample_frames(frames,4,critical)}
    command_digest = hashlib.sha256(''.join(f'{k}\n' for k in commands).encode()).hexdigest()
    result = {'level':level,'commands':len(commands),'baselineIndex':phase,'commandSha256':command_digest,
              'recordingSha256':sha(LEVEL_TAPES[level]),'iwadSha256':receipt['iwad_sha256'],'outcomes':[outcome],
              'traces':[trace],'source':source,'receipt':'rng/baseline-receipt.json'}
    report = {'level':level,'slurmJob':str(receipt['slurm_job']),'baselineIndex':phase,
              'startingMiscIndex':initial['rng_misc'],'commandSha256':command_digest,
              'inputsU32LESha256':binary_hash,'recordingSha256':result['recordingSha256'],
              'nativeReceiptSha256':sha(base/'receipt.json'),'iwadSha256':receipt['iwad_sha256'],
              'nativeTraceJsonlSha256':receipt['trace_sha256'],'compressedTraceSha256':sha(base/'trace.jsonl.gz'),
              'archivedTapeSha256':receipt['tape_sha256'],'matchedStates':receipt['matched_states'],
              'matchedFields':receipt['matched_fields'],'ordinaryPassageTheorem':theorem,
              'ordinaryPassageSource':'../../roots/'+theorem_file,
              'ordinaryPassageSourceSha256':sha(ROOT/'public-site/evidence/roots'/theorem_file),
              'sourceTree':'research/proof-theater/live/evidence/'+origin+'/conversion/native'}
    return result,report


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--output',type=Path,default=ROOT/'public-site/evidence/experiments')
    args=p.parse_args()
    out=args.output.resolve()
    if (out/'rng.json').is_file() and json.loads((out/'rng.json').read_text())['status']=='verified':
        raise ValueError('a complete all-index certificate is already present; choose a fresh output directory')
    (out/'rng').mkdir(parents=True,exist_ok=True)
    levels=[]; receipts=[]
    for level in LEVEL_TAPES:
        data,report=baseline(level)
        levels.append(data); receipts.append(report)
    artifact={'schema':'doom-rng-scan-v1','status':'partial','scope':SCOPE,
              'trust':'Archived native tracks for the two ordinary starts, each with an existing stock-kernel passage proof. Alternate gameplay indices await certification.',
              'receipt':'rng/baseline-receipt.json','levels':levels}
    write_json(out/'rng.json',artifact)
    write_json(out/'rng/ordinary-baselines.json',artifact)
    write_json(out/'rng/baseline-receipt.json',{'schema':'doom-rng-ordinary-baselines-v1',
               'checkedCases':2,'plannedCases':512,'alternateCasesChecked':0,
               'dataFile':'ordinary-baselines.json','dataSha256':sha(out/'rng.json'),'levels':receipts})

if __name__=='__main__':
    main()
