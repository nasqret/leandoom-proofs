"""Build, replay, certify, and publish the fixed post-spawn RNG experiment."""
import argparse
from concurrent.futures import ThreadPoolExecutor
import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess
import sys
import time

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[2]
COMPANION = ROOT / 'public-tools/verifier'
sys.path.insert(0, str(COMPANION))
import models
from verify import audit, STANDARD

LEVEL_TAPES = {
    'E1M1': ROOT / 'public-site/evidence/recordings/prooflab-e1m1-993.json',
    'E1M2': COMPANION / 'examples/prooflab-e1m2.json',
}
FIELDS = ('index', 'firstExitTick', 'firstDeathTick', 'errorTick', 'health', 'shots',
          'xRaw', 'yRaw', 'angleRaw')
SCOPE = ('Change only the gameplay RNG index immediately after ordinary CombatV2 spawn, '
         'then use the identical recorded ordinary inputs through the end of each tape.')
STEP = 16


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def write_json(path, data):
    path.write_text(json.dumps(data, separators=(',', ':'), allow_nan=False) + '\n')


def call(cmd, folder, *, env=None, log=None):
    result = subprocess.run(cmd, cwd=folder, env=env, text=True, stdout=subprocess.PIPE,
                            stderr=subprocess.STDOUT)
    if log:
        log.write_text(result.stdout)
    if result.returncode:
        raise RuntimeError(f'{cmd[0]} failed in {folder}: {result.stdout[-4000:]}')
    return result.stdout.strip()


def outcome_literal(row):
    fields = []
    for k in FIELDS:
        n = row[k]
        if k in ('firstExitTick', 'firstDeathTick', 'errorTick'):
            fields.append('none' if n is None else f'some {n}')
        else:
            fields.append(str(n))
    return '⟨' + ', '.join(fields) + '⟩'


def display_frame(row):
    f = dict(row)
    f['x'] = f.pop('xRaw') / 65536
    f['y'] = f.pop('yRaw') / 65536
    f['angle'] = f.pop('angleRaw') * 360 / 2**32
    f['alive'] = f['health'] > 0
    return f


def sample_ticks(frames, stride, critical=()):
    return sorted(set(range(0, len(frames), stride)) | set(critical) | {len(frames) - 1})


def sample_frames(frames, stride, critical=()):
    return [display_frame(frames[i]) for i in sample_ticks(frames, stride, critical)]


def did_win(o):
    t = o['firstExitTick']
    return t is not None and all(o[k] is None or o[k] > t for k in ('firstDeathTick', 'errorTick'))


def trace_choice(outcomes, baseline):
    indexes = [baseline]
    for sorter in (lambda o: (did_win(o), o['health'], o['index']),
                   lambda o: (-o['health'], o['index']),
                   lambda o: (abs(o['health'] - outcomes[baseline]['health']), o['index'])):
        for row in sorted(outcomes, key=sorter):
            if row['index'] not in indexes:
                indexes.append(row['index'])
                break
    return indexes


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--iwad', type=Path, required=True)
    parser.add_argument('--work', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--workers', type=int, default=4)
    args = parser.parse_args()
    if not 1 <= args.workers <= 16:
        parser.error('workers must be in 1..16')
    wad, work, public = (p.resolve() for p in (args.iwad, args.work, args.output))
    public.mkdir(parents=True, exist_ok=True)
    files = public / 'rng'
    files.mkdir(exist_ok=True)
    work.mkdir(parents=True, exist_ok=True)
    lean = Path(call(['lean', '--print-prefix'], HERE)) / 'bin/lean'
    version = call([lean, '--version'], HERE)
    if '4.33.0' not in version or 'd8b18978322d' not in version:
        raise RuntimeError(f'unexpected toolchain: {version}')
    print('Building native evaluator and proof libraries', flush=True)
    call(['lake', 'build', 'rng-scan', 'RngExperiment:shared'], HERE, log=work/'build.log')
    paths = call(['lake','env', sys.executable, '-c', 'import os; print(os.environ["LEAN_PATH"])'], HERE)
    libpath = [str((HERE / p).resolve()) for p in paths.split(os.pathsep) if p]
    libraries = []
    for cwd, targets in [(COMPANION/'combat', ['@lean-doom/Doom:shared', 'LeanDoomProofs:shared', '+OriginalReplay:dynlib']),
                         (HERE, ['RngExperiment:shared'])]:
        output = call(['lake', '-q', 'query', *targets], cwd, log=work/('libs-'+cwd.name+'.log'))
        resolved = [(cwd / p.strip()).resolve() for p in output.splitlines()]
        if len(resolved) != len(targets) or not all(p.is_file() for p in resolved):
            raise RuntimeError(f'could not resolve {targets}: {output}')
        libraries.extend(resolved)
    flags = ['--load-dynlib='+str(p) for p in libraries]
    exe = HERE / '.lake/build/bin/rng-scan'
    shutil.copyfile(HERE/'RngExperiment.lean', files/'RngExperiment.lean')
    levels, level_evidence = [], {}
    for level, tape in LEVEL_TAPES.items():
        tick = time.monotonic()
        folder = work / level
        folder.mkdir(exist_ok=True)
        env = {**os.environ, 'LEAN_PATH':os.pathsep.join([str(folder), *libpath])}
        doc = models.parse(tape.read_bytes())
        imports, defs, iwad_hash = models.combat_data(doc, wad)
        masks = doc['commands']
        if (level, len(masks)) not in [('E1M1',993),('E1M2',1017)]:
            raise ValueError('unexpected ordinary tape')
        commands = folder/'commands.txt'
        commands.write_text(''.join(f'{k}\n' for k in masks))
        proposal_key = {'executable':sha(exe), 'rules':models.rules_digest(True), 'level':level,
                        'iwad':iwad_hash, 'commands':sha(commands)}
        print(f'{level}: replaying 256 index values', flush=True)
        def simulate(block):
            fn = folder / f'replay-{block:02}.jsonl'
            receipt = fn.with_suffix('.receipt.json')
            if receipt.is_file() and fn.is_file():
                old = json.loads(receipt.read_text())
                if old.get('key') == proposal_key and old.get('sha256') == sha(fn):
                    return fn
            temp = fn.with_suffix('.partial')
            with temp.open('w') as out:
                subprocess.run([exe, wad, level, commands, str(block*STEP), str((block+1)*STEP)],
                               cwd=folder, stdout=out, check=True)
            temp.replace(fn)
            write_json(receipt, {'key':proposal_key, 'sha256':sha(fn)})
            return fn
        with ThreadPoolExecutor(args.workers) as pool:
            chunks = list(pool.map(simulate, range(16)))
        outcomes, baseline, framefiles = [], None, {}
        for fn in chunks:
            with fn.open() as handle:
                for line in handle:
                    whole = json.loads(line)
                    ix, frames = whole['outcome']['index'], whole['frames']
                    if baseline is None:
                        baseline = whole['baselineIndex']
                    if (baseline != whole['baselineIndex'] or ix != len(outcomes) or
                        len(frames) != len(masks)+1 or any(f['tick']!=i for i,f in enumerate(frames))):
                        raise ValueError('index or trace mismatch')
                    outcome = whole['outcome']
                    if any(outcome[k] != frames[-1][k] for k in ('health','shots','xRaw','yRaw','angleRaw')):
                        raise ValueError('trace endpoint mismatch')
                    for event, pred in [('firstExitTick',lambda f:f['exit']),
                                        ('firstDeathTick',lambda f:f['health']==0),
                                        ('errorTick',lambda f:f['error'])]:
                        if next((f['tick'] for f in frames if pred(f)),None) != outcome[event]:
                            raise ValueError('trace event mismatch')
                    outcomes.append(outcome)
                    tracefile = folder / f'frames-{ix:03}.json'
                    write_json(tracefile,frames)
                    framefiles[ix] = tracefile
        if len(outcomes) != 256 or baseline is None:
            raise ValueError('incomplete index classification')
        known = outcomes[baseline]
        if known['firstExitTick'] != len(masks) or known['firstDeathTick'] is not None or known['errorTick'] is not None:
            raise ValueError('ordinary baseline does not reproduce the passage')
        expected_health_shots = (48,0) if level=='E1M1' else (73,73)
        if (known['health'], known['shots']) != expected_health_shots:
            raise ValueError('ordinary baseline disagrees with the released endpoint')
        print(f'{level}: replay complete; compiling block certificates', flush=True)
        (folder/'Inputs.lean').write_text(imports+'import RngExperiment\nset_option maxRecDepth 65536\nnamespace Recording\n'+defs+'end Recording\n')
        call([lean,'-DwarningAsError=true','-o','Inputs.olean','Inputs.lean'],folder,env=env,log=folder/'inputs.log')
        def certify(block):
            rows = outcomes[block*STEP:(block+1)*STEP]
            name = f'RngBlock{block:02}'
            expected = f'expected{block:02}'
            code = ('import Inputs\nset_option maxRecDepth 65536\nset_option maxHeartbeats 0\n'
                    'namespace Recording\n'+f'def {expected} : List RngExperiment.Outcome := [\n  '+
                    ',\n  '.join(map(outcome_literal, rows))+']\n'+
                    f'theorem block{block:02} : RngExperiment.classifyBlock group mapName tape {block} = '
                    f'some ({baseline}, {expected}) := by native_decide\nend Recording\n')
            (folder/(name+'.lean')).write_text(code)
            call([lean,*flags,'-DwarningAsError=true','-o',name+'.olean',name+'.lean'],folder,env=env,log=folder/(name+'.log'))
            return name
        with ThreadPoolExecutor(args.workers) as pool:
            names = list(pool.map(certify, range(16)))
        terms = [f'some ({baseline}, expected{i:02})' for i in range(16)]
        exprs = [f'RngExperiment.classifyBlock group mapName tape {i}' for i in range(16)]
        eqs = ', '.join(f'block{i:02}' for i in range(16))
        source = (''.join(f'import {name}\n' for name in names)+'namespace Recording\n'
                  'theorem all256 : RngExperiment.classify group mapName tape = [\n  '+
                  ',\n  '.join(terms)+'] := by\n  change [\n    '+',\n    '.join(exprs)+'] = _\n'
                  +'  rw ['+eqs+']\nend Recording\n')
        (folder/'Certificate.lean').write_text(source)
        call([lean,'-DwarningAsError=true','-o','Certificate.olean','Certificate.lean'],folder,env=env,log=folder/'certificate.log')
        (folder/'Audit.lean').write_text('import Certificate\n#print axioms Recording.all256\n'+
            ''.join(f'#print axioms Recording.block{i:02}\n' for i in range(16)))
        report = call([lean,'Audit.lean'],folder,env=env,log=folder/'audit.log')
        # all256 inherits the named native_decide axioms of all sixteen checked blocks.
        import re
        pattern = r"'(Recording\.\w+)' depends on axioms: \[([^\]]*)\]"
        rows = {name:[v.strip() for v in values.split(',')]
                for name, values in re.findall(pattern,report,re.S)}
        if re.sub(pattern,'',report,flags=re.S).strip() or len(rows)!=17:
            raise ValueError('incomplete axiom report')
        for i in range(16):
            name=f'Recording.block{i:02}'
            blockreport=f"'{name}' depends on axioms: ["+', '.join(rows[name])+']'
            audit(blockreport,[name],'compiler')
        constituent = set(x for i in range(16) for x in rows[f'Recording.block{i:02}'])
        if set(rows['Recording.all256']) - STANDARD != constituent - STANDARD:
            raise ValueError('unexpected transitive axioms')
        bundle = files / level.lower()
        bundle.mkdir(exist_ok=True)
        for name in [*(n+'.lean' for n in names),'Certificate.lean','Audit.lean','audit.log']:
            shutil.copyfile(folder/name, bundle/name)
        baseline_frames = json.loads(framefiles[baseline].read_text())
        differences = {}
        critical = {}
        for row in outcomes:
            ix = row['index']
            frames = json.loads(framefiles[ix].read_text())
            difference = next((i for i,(a,b) in enumerate(zip(frames, baseline_frames)) if a != b), None)
            differences[ix] = difference
            events = (difference, row['firstExitTick'], row['firstDeathTick'], row['errorTick'])
            critical[ix] = {i for t in events if t is not None for i in (max(0,t-1),t)}
        critical[baseline] = set.union(*critical.values())
        traces = []
        representatives = trace_choice(outcomes, baseline)
        columns = ['tick','xRaw','yRaw','angleRaw','health','shots','kills','launches','exit','error']
        track_ids = {}
        tracks = []
        phase_ids = []
        public_outcomes=[]
        for row in outcomes:
            ix = row['index']
            frames = json.loads(framefiles[ix].read_text())
            sample = sample_frames(frames, 70, critical[ix])
            divergence = differences[ix]
            if ix in representatives:
                traces.append({'index':ix, 'divergenceTick':divergence,
                               'frames':sample_frames(frames, 4, critical[ix])})
            packed = tuple(tuple(frames[i][k] for k in columns) for i in sample_ticks(frames,12,critical[ix]))
            if packed not in track_ids:
                track_ids[packed] = len(tracks)
                tracks.append(packed)
            phase_ids.append(track_ids[packed])
            final=sample[-1]
            public_outcomes.append({**row, 'won':did_win(row),'x':final['x'],'y':final['y'],
                                    'angle':final['angle'],'samples':sample,'divergenceTick':divergence})
        traces.sort(key=lambda t:representatives.index(t['index']))
        track_path = files / (level.lower()+'-tracks.json')
        write_json(track_path, {'schema':'doom-rng-phase-tracks-v1','level':level,'stride':12,
                    'columns':columns, 'phaseTrackIds':phase_ids, 'tracks':tracks})
        levels.append({'level':level,'commands':len(masks),'baselineIndex':baseline,
                       'commandSha256':sha(commands),'recordingSha256':sha(tape),'iwadSha256':iwad_hash,
                       'outcomes':public_outcomes,'traces':traces,'trackFile':'rng/'+track_path.name,
                       'source':f'rng/{level.lower()}/Certificate.lean','receipt':'rng/receipt.json'})
        level_evidence[level]={'caseCount':len(outcomes),'baselineIndex':baseline,
                      'safeExitCount':sum(did_win(o) for o in outcomes),'seconds':round(time.monotonic()-tick,3),
                      'commandSha256':sha(commands),'recordingSha256':sha(tape),'iwadSha256':iwad_hash,
                      'privateInputLeanSha256':sha(folder/'Inputs.lean'),'axioms':rows,
                      'certificateObjectSha256':sha(folder/'Certificate.olean'),'trackSha256':sha(track_path),
                      'sourceSha256':{p.name:sha(p) for p in sorted(bundle.glob('*.lean'))},
                      'blockObjectSha256':{n:sha(folder/(n+'.olean')) for n in names},
                      'auditSha256':sha(folder/'audit.log')}
        print(f'{level}: 256 certified, {level_evidence[level]["safeExitCount"]} safe exits',flush=True)
    meta={'schema':'doom-rng-scan-v1','status':'verified','scope':SCOPE,'trust':'compiler-assisted Lean (native_decide)',
          'receipt':'rng/receipt.json','source':'rng/RngExperiment.lean','levels':levels}
    write_json(public/'rng.json',meta)
    write_json(files/'receipt.json',{'schema':'doom-rng-scan-receipt-v1','toolchain':version,
               'slurmJob':os.environ.get('SLURM_JOB_ID'),'slurmCluster':os.environ.get('SLURM_CLUSTER_NAME'),
               'workers':args.workers,'engineRulesSha256':models.rules_digest(True),
               'definitionSha256':sha(HERE/'RngExperiment.lean'),'generatorSha256':sha(HERE/'run.py'),
               'commandDigestFormat':'UTF-8 unsigned decimal masks, one per line, each terminated by LF',
               'traceTrust':'native replay; separate from the Lean-certified endpoint and event ticks',
               'dataSha256':sha(public/'rng.json'),'levels':level_evidence,
               'sharedLibrarySha256':{p.name:sha(p) for p in libraries}})

if __name__ == '__main__':
    main()
