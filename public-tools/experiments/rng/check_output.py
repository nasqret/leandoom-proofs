"""Check the downloaded RNG case table and its bindings without executing Lean."""
import argparse
import hashlib
import json
from pathlib import Path
import re


def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def require(condition, description):
    if not condition:
        raise ValueError(description)


def number(token):
    if token == 'none':
        return None
    return int(token.removeprefix('some '))


def peak_frame(row):
    return (row['x'], row['y'], row['angle'], row['health'], row['shots'],
            row['kills'], row['launches'], row['exit'], row['error'])


def check_level(level, output, receipt, complete):
    name, baseline = level['level'], level['baselineIndex']
    outcomes = {r['index']:r for r in level['outcomes']}
    require(len(outcomes)==len(level['outcomes']) and baseline in outcomes, 'missing or duplicate ID')
    require(outcomes[baseline]['firstExitTick']==level['commands'] and outcomes[baseline]['won'], 'baseline exit')
    phases = set(range(256)) if complete else {baseline}
    require(set(outcomes)==phases,'case coverage')
    require((output/level['source']).is_file(),'theorem source missing')
    if complete:
        entry=receipt['levels'][name]
        require(entry['commandSha256']==level['commandSha256'],'controller binding')
        require(entry['safeExitCount']==sum(r['won'] for r in outcomes.values()),'win tally')
        bundle=(output/level['source']).parent
        for file,h in entry['sourceSha256'].items():
            require(digest(bundle/file)==h, 'certificate module hash '+file)
        require(digest(bundle/'audit.log')==entry['auditSha256'],'audit log')
        expected=[]
        for b in range(16):
            source=(bundle/f'RngBlock{b:02}.lean').read_text()
            require(f'some ({baseline}, expected{b:02})' in source,'wrong spawn index in Lean certificate')
            expected.extend([[number(x.strip()) for x in row.split(',')] for row in re.findall('⟨([^⟩]+)⟩',source)])
        keys=('index','firstExitTick','firstDeathTick','errorTick','health','shots','xRaw','yRaw','angleRaw')
        require(expected==[[outcomes[i][k] for k in keys] for i in range(256)],'Lean expected table differs from JSON')
        track_file=output/level['trackFile']
        require(digest(track_file)==entry['trackSha256'],'track file digest')
        dense=json.loads(track_file.read_text())
        require(dense['level']==name and dense['stride']==12 and len(dense['phaseTrackIds'])==256,'track header')
        if 'conclusions' in level:
            conclusions=level['conclusions']
            supplement=entry['conclusions']
            for file,h in supplement['sourceSha256'].items():
                require(digest(bundle/file)==h, 'supplementary proof binding '+file)
            require(conclusions['safeExitCount']==entry['safeExitCount'] and
                    conclusions['lastInputSafeExitCount']==sum(
                        r['won'] and r['firstExitTick']==level['commands'] for r in outcomes.values()),
                    'named count differs')
            require(set(conclusions['theorems'])==set(supplement['axioms']), 'missing named axiom audit')
            if 'exceptionalIndices' in conclusions:
                expectation=conclusions['exceptionalKind']=='winning'
                exceptions=[i for i,o in outcomes.items() if o['won']==expectation]
                require(conclusions['exceptionalIndices']==exceptions,'incorrect exceptional set')
    baseline_by_tick={f['tick']:f for f in outcomes[baseline]['samples']}
    for ix,row in outcomes.items():
        frames=row['samples']; ticks=[f['tick'] for f in frames]; by_tick={f['tick']:f for f in frames}
        require(ticks==sorted(set(ticks)) and ticks[0]==0 and ticks[-1]==level['commands'],'sample ticks')
        require((frames[-1]['x'],frames[-1]['y'],frames[-1]['angle'],frames[-1]['health'],frames[-1]['shots'])==
                (row['xRaw']/65536,row['yRaw']/65536,row['angleRaw']*360/2**32,row['health'],row['shots']),'endpoint')
        for field in ('firstExitTick','firstDeathTick','errorTick','divergenceTick'):
            t=row[field]
            if t is not None:
                require(t in by_tick and max(0,t-1) in by_tick,'missing onset frame')
        t=row['divergenceTick']
        if t is not None:
            require(peak_frame(by_tick[t])!=peak_frame(baseline_by_tick[t]), 'identical divergence')
            if t:
                require(peak_frame(by_tick[t-1])==peak_frame(baseline_by_tick[t-1]),'different pre-divergence frame')
        if complete:
            track=dense['tracks'][dense['phaseTrackIds'][ix]]
            dense_ticks=[r[0] for r in track]
            require(dense_ticks==sorted(set(dense_ticks)) and max(b-a for a,b in zip(dense_ticks,dense_ticks[1:]))<=12,'dense sample spacing')
            required={0,level['commands']}
            for field in ('firstExitTick','firstDeathTick','errorTick','divergenceTick'):
                if row[field] is not None:
                    required.update((row[field],max(0,row[field]-1)))
            require(required<=set(dense_ticks),'critical tick missing from dense track')
            if ix==baseline and level.get('baselineCadence')==1:
                require(dense_ticks==list(range(level['commands']+1)),'ordinary track omits ticks')
                ordinary=next(t for t in level['traces'] if t['index']==ix)
                require([f['tick'] for f in ordinary['frames']]==dense_ticks,'ordinary trace omits ticks')
    return f'{name}: {len(outcomes)} case(s), ordinary index {baseline}'


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('manifest',type=Path)
    args=parser.parse_args()
    output=args.manifest.resolve().parent
    data=json.loads(args.manifest.read_text())
    require(data['schema']=='doom-rng-scan-v1' and data['status'] in ('partial','verified'),'manifest header')
    receipt=json.loads((output/data['receipt']).read_text())
    require(digest(args.manifest)==receipt['dataSha256'],'published data hash')
    require([l['level'] for l in data['levels']]==['E1M1','E1M2'],'expected maps')
    for level in data['levels']:
        print(check_level(level, output, receipt, data['status']=='verified'))

if __name__=='__main__':
    main()
