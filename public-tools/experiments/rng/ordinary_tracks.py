"""Retain every ordinary-start tick in the public track files and audit its source."""
import argparse
import gzip
import json
from pathlib import Path
from run import HERE, ROOT, display_frame, sha, write_json
from baseline import SOURCES


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--work',type=Path,required=True)
    parser.add_argument('--output',type=Path,required=True)
    parser.add_argument('--iwad',help=argparse.SUPPRESS)
    parser.add_argument('--workers',help=argparse.SUPPRESS)
    parser.add_argument('--historical',action='store_true',help='also compare every field with both sealed original native runs')
    args=parser.parse_args()
    out=args.output.resolve()
    data=json.loads((out/'rng.json').read_text())
    receipt_path=out/'rng/receipt.json'
    receipt=json.loads(receipt_path.read_text())
    if data['status']!='verified' or sha(out/'rng.json')!=receipt['dataSha256']:
        raise ValueError('unbound classification')
    for lv in data['levels']:
        name=lv['level']
        ix=lv['baselineIndex']
        raw=args.work/name/f'frames-{ix:03}.json'
        frames=json.loads(raw.read_text())
        if len(frames)!=lv['commands']+1 or any(f['tick']!=i for i,f in enumerate(frames)):
            raise ValueError('non-consecutive ordinary trace')
        dense_path=out/lv['trackFile']
        rec=receipt['levels'][name]
        if sha(dense_path)!=rec['trackSha256']:
            raise ValueError('unbound dense track')
        dense=json.loads(dense_path.read_text())
        packed=[[f[k] for k in dense['columns']] for f in frames]
        old=dense['phaseTrackIds'][ix]
        if any(r!=packed[r[0]] for r in dense['tracks'][old]):
            raise ValueError('recovered ordinary track differs from previous tracked points')
        if args.historical:
            hist=ROOT/'research/proof-theater/live/evidence'/SOURCES[name][0]/'conversion/native'
            native=json.loads((hist/'receipt.json').read_text())
            src=gzip.decompress((hist/'trace.jsonl.gz').read_bytes())
            import hashlib
            if hashlib.sha256(src).hexdigest()!=native['trace_sha256']:
                raise ValueError('historical certificate digest mismatch')
            original=[json.loads(line) for line in src.splitlines()]
            fields={'tick':'t','xRaw':'x','yRaw':'y','angleRaw':'angle','health':'health','shots':'shots',
                    'kills':'kills','launches':'projectiles','exit':'exit'}
            if len(original)!=len(frames) or any(
                    any(f[k]!=old_frame[v] for k,v in fields.items()) or
                    f['error'] != (old_frame['error'] is not None) for f,old_frame in zip(frames,original)):
                raise ValueError('ordinary native replay differs from archived native replay')
            if original[0]['rng_play']!=ix:
                raise ValueError('ordinary gameplay RNG byte differs')
            rec['historicalOrdinaryTraceSha256']=native['trace_sha256']
        if dense['phaseTrackIds'].count(old)==1:
            dense['tracks'][old]=packed
        else:
            dense['phaseTrackIds'][ix]=len(dense['tracks'])
            dense['tracks'].append(packed)
        display=[display_frame(f) for f in frames]
        ordinary=lv['outcomes'][ix]
        if any(f!=display[f['tick']] for f in ordinary['samples']):
            raise ValueError('ordinary primary sample mismatch')
        changes={i for i in range(1,len(frames)) if any(
                    frames[i][k]!=frames[i-1][k] for k in ('health','kills','launches','exit','error'))}
        ticks={f['tick'] for f in ordinary['samples']} | {i for t in changes for i in (t-1,t)}
        ordinary['samples']=[display[i] for i in sorted(ticks)]
        trace=next(t for t in lv['traces'] if t['index']==ix)
        trace['frames']=display
        lv['baselineCadence']=1
        dense['baselineCadence']=1
        write_json(dense_path,dense)
        rec['trackSha256']=sha(dense_path)
        rec['fullOrdinaryTraceSha256']=sha(raw)
    write_json(out/'rng.json',data)
    receipt['dataSha256']=sha(out/'rng.json')
    receipt['ordinaryTrackExporterSha256']=sha(HERE/'ordinary_tracks.py')
    write_json(receipt_path,receipt)

if __name__=='__main__':
    main()
