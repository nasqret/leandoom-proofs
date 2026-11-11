"""Recover three stored WMI replays and the third projectile's positions from proof-state literals."""
import argparse
import gzip
import json
import re
import shutil
import tempfile
import zipfile
from pathlib import Path
from build import atomic_json, commands_hash, digest, pinned_tapes

ROOT = Path(__file__).resolve().parents[3]
PUBLIC = ROOT/'public-site/evidence/experiments'
CATALOGUE = ROOT/'public-site/game/native-routes.json'
ARCHIVE = ROOT/'research/evidence/e1m1/route-assembly/passage993'
PROJECTILES = ROOT/'research/scenario-certificates/e1m1-projectiles/evidence'
TRACE_PATHS = [ROOT/'play/replay_movie/hangar/frames.jsonl.gz',
    ROOT/'research/route-optimization/search/result/trace.jsonl',
    ROOT/'research/campaign/intake/evidence/conversion-315378/learned/native/trace.jsonl.gz']


def projectile_xy():
    parts = ARCHIVE/'source-parts'
    manifest = json.loads((parts/'manifest.json').read_text())
    projectile = {}
    with tempfile.TemporaryDirectory() as tmp:
        target = Path(tmp)/'source.zip'
        with target.open('wb') as archive:
            for row in manifest['parts']:
                part = parts/row['name']
                if digest(part) != row['sha256']:
                    raise ValueError('stored source part mismatch')
                with part.open('rb') as src:
                    shutil.copyfileobj(src,archive)
        if digest(target) != manifest['archive_sha256']:
            raise ValueError('stored module archive mismatch')
        with zipfile.ZipFile(target) as archive:
            for tick in range(886,940):
                source = archive.read(f'E1M1Tic{tick}Data.lean').decode()
                definitions = dict(re.findall(r'^def (\S+) : [^\n]*? :=\s*(.*?)(?=^def |\Z)',source,re.M|re.S))
                final = definitions[definitions[f'E1M1Tic{tick}.finish'].strip()]
                bodies = definitions[re.search(r'projectiles := ([\w.]+)',final).group(1)]
                body = bodies.split('{ source := ')[3].split('{ source := ')[0]
                x,y = map(int,re.search(r'x := \{ raw := (-?\d+) \}, y := \{ raw := (-?\d+) \}',body).groups())
                current = 'gone' if 'removed := Bool.true' in body else 'exploding' if 'exploding := Bool.true' in body else 'flying'
                expected = 'flying' if tick<923 else 'exploding' if tick<939 else 'gone'
                if current!=expected: raise ValueError(f'unexpected projectile phase at {tick}')
                projectile[tick] = [x,y,current]
    records = json.loads((PROJECTILES/'projectile-profile-302723.json').read_text())['records']
    for tick in range(886,940):
        r=records[tick-1]
        if r.get('projectile_slots') and projectile[tick][:2] != r['projectile_slots'][2][1:3]:
            raise ValueError(f'projectile position mismatch at {tick}')
    if 'Doom.Projectile.Event.hit 0 24' not in records[922]['events_text']:
        raise ValueError('historical impact observation changed')
    return projectile,manifest['archive_sha256']


def native_trace(path):
    with (gzip.open(path,'rt') if path.suffix=='.gz' else path.open()) as f:
        return [json.loads(line) for line in f]


def historical(public=PUBLIC):
    public.mkdir(parents=True,exist_ok=True)
    base, learned = pinned_tapes(CATALOGUE)
    early = base[:991]+[4096]
    if early[:939]!=base[:939] or learned[:939]!=base[:939]:
        raise ValueError('historical projectile trajectory is not shared')
    projectile,archive_hash=projectile_xy()
    notes={}
    routes=[]
    for i, (slug, label, tape, name, theorem) in enumerate([
      ('original-993','Original route',base,'CertifiedE1M1Prefix992','certifiedAuthenticE1M1'),
      ('early-use-992','Use one tick earlier',early,'CertifiedOptimizedHangar','certifiedOptimizedHangar'),
      ('learned-978','Learned turn',learned,'CertifiedLearnedHangar','certifiedLearnedHangar')]):
        trace_path=TRACE_PATHS[i]; trace=native_trace(trace_path)
        if [r.get('tick',r.get('t')) for r in trace] != list(range(len(tape)+1)):
            raise ValueError(f'short native trace for {slug}')
        if any(r['exit'] or r['error'] or r['health']<=0 for r in trace[:-1]) or not trace[-1]['exit'] or trace[-1]['health']<=0:
            raise ValueError(f'first-exit contract failed for {slug}')
        tracks=[]
        for tick,r in enumerate(trace):
            pos=projectile[min(tick,939)] if tick>=886 else [None,None,'absent']
            tracks.append([tick,r['x'],r['y'],r['health'],*pos,r['angle']]);
        if i==0:
            report=ARCHIVE/'fresh-source/core/result.json'; rec=json.loads(report.read_text()); root=ROOT/'public-site/evidence/roots'/f'{name}.lean'
            module=json.load(gzip.open(ARCHIVE/'fresh-source/core/fresh-module-records.json.gz','rt'))[name]
            source=json.loads((ARCHIVE/'verified-terminal-source.json').read_text())['declarations'][theorem]['source_sha256']; url='../roots/'+root.name; job=rec['fresh_compilation_job']; axioms=rec['axioms']
        else:
            branch='composition' if i==1 else 'learned-composition'
            root=ROOT/f'research/route-optimization/proof/{branch}/generated/{name}.lean'
            report=ROOT/f'research/route-optimization/replay/evidence/{len(tape)}/result.json'; rec=json.loads(report.read_text()); module=rec['compiler_modules'][name]
            if rec['status']!='kernel-checked' or rec['inputs_sha256']!=commands_hash(tape):
                raise ValueError('historical stock receipt mismatch')
            source=module['source_sha256']; url=f'fork-{name}.lean';shutil.copyfile(root,public/url);job=rec['job'];axioms=module['axioms'][theorem]
        if digest(root)!=source or set(axioms)!={'propext','Classical.choice','Quot.sound'}:
            raise ValueError('unexpected historical proof source or axioms')
        notes[slug]={'theorem':theorem,'inputSha256':commands_hash(tape),'source':url,'sourceSha256':source,
            'objectSha256':module['object_sha256'],'axioms':axioms,'slurmJob':str(job),'sourceReportSha256':digest(report),
            'nativeTraceSha256':digest(trace_path),'trackRows':len(trace)}
        edit={'tick':992,'originalMask':base[991],'editedMask':4096,'action':'Use'} if i==1 else None
        events=[{'tick':886,'kind':'launch','detail':'The third imp fireball spawns.'},
                {'tick':923,'kind':'hit','detail':'Projectile 2 hits the player for 24 raw damage.'},
                {'tick':939,'kind':'removed','detail':'The explosion animation finishes.'}]
        if i==2:
            events.append({'tick':next(j+1 for j,(a,b) in enumerate(zip(base,tape)) if a!=b),'kind':'edit','detail':'The learned ending first changes the original controls.'})
        if i==1:events.append({'tick':992,'kind':'edit','detail':'Use replaces the original input.'})
        events.append({'tick':len(tape),'kind':'exit','detail':'The level first requests its exit.'})
        routes.append({'id':slug,'label':label,'kind':['original','early-use','learned-turn'][i],'edit':edit,'tracks':tracks,'events':events,
          'commandsU32LESha256':commands_hash(tape),'result':{'firstExit':len(tape),'finalTick':len(tape),'finalHealth':trace[-1]['health'],
          'lastTrackedTick':len(tape),'thirdMissileHitTick':923,'thirdMissileHitDamage':24,'thirdMissileHitCount':1,'explosionTick':923,
          'removalTick':939,'healthAt923':tracks[923][3],'phaseAt923':'exploding','finalPhase':'gone','everyStateSafe':True,'everyCommandOrdinary':True},
          'proof':{'trust':'kernel','label':'Stock-kernel passage','url':url,'receipt':'fork-historical.json','theorem':theorem},
          'trackProvenance':'Stored WMI player trace and the projectile fields in the imported original proof states. The two shortcuts share the original controls through slot 2 removal.'})
    atomic_json(public/'fork-historical.json',{'map':'E1M1','routes':notes,'projectileStatesArchiveSha256':archive_hash,
       'projectileProfileSha256':digest(PROJECTILES/'projectile-profile-302723.json'),'projectileSlot':2,'projectileDamage':24,'damageTick':923,
       'scope':'The three stock-kernel roots prove passage. The displayed tracks join historical native player observations with literal projectile positions and phases in the original proof states. The controls agree until after the missile is removed.'})
    return {'version':1,'map':'E1M1','ticksPerSecond':35,'coordinateScale':65536,'projectileSlot':2,'baseline':'original-993',
      'trackFields':['tick','playerXRaw','playerYRaw','health','projectileXRaw','projectileYRaw','phase','angleBAM'],
      'routes':routes}

if __name__=='__main__':
    cli=argparse.ArgumentParser(description=__doc__)
    cli.add_argument('output_dir',type=Path,help='destination for historical routes and their roots')
    dest=cli.parse_args().output_dir
    atomic_json(dest/'forks-historical.json',historical(dest))
