"""Bind the frames in each camera suffix to the independently replayed state trace."""
import argparse
import hashlib
import json
from pathlib import Path
import subprocess

from capture import digest_state, sha

ROOT = Path(__file__).resolve().parents[3]

def check(site, decode=False):
    folder = site / 'theater/lab/camera'
    manifest = json.loads((folder / 'cameras.json').read_text())
    evidence = json.loads((site / 'evidence/experiments/forks.json').read_text())
    routes = {r['id']:r for r in evidence['routes']}
    baseline = routes[evidence['baseline']]['tracks']
    clips = manifest['clips']
    if set(clips) != set(routes) - {evidence['baseline']} or len(clips) != 74:
        raise ValueError('Each edited recording must have its own camera')
    total = 0
    for name, clip in clips.items():
        route = routes[name]
        first, last = clip['firstTick'], clip['lastTick']
        if not (0 <= first <= last == route['result']['finalTick']):
            raise ValueError('Clip overlaps the wrong part of '+name)
        if Path(clip['file']).name != clip['file'] or sha(folder / clip['file']) != clip['sha256']:
            raise ValueError('Camera file mismatch for '+name)
        track = route['tracks']
        full = baseline[:track[0][0]] + track
        digest = hashlib.sha256()
        for i in range(first, last+1):
            tick, x, y, hp, px, py, phase, angle = full[i]
            if tick != i: raise ValueError('Tick mismatch for '+name)
            digest.update(digest_state(tick,x,y,angle,hp,tick==route['result']['firstExit']))
        if digest.hexdigest() != clip['stateSha256'] or clip['frames'] != last-first+1:
            raise ValueError('Camera observations disagree with the replay for '+name)
        if decode:
            payload = subprocess.check_output(['ffprobe','-v','error','-count_frames','-show_streams','-of','json',folder / clip['file']])
            streams = json.loads(payload)['streams']
            if len(streams)!=1 or streams[0]['codec_name']!='h264' or streams[0]['avg_frame_rate']!='35/1' or int(streams[0]['nb_read_frames']) != clip['frames']:
                raise ValueError('Encoded video timing mismatch for '+name)
        total += clip['frames']
    return total

if __name__ == '__main__':
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--decode',action='store_true')
    p.add_argument('--site',type=Path,default=ROOT / 'public-site')
    args=p.parse_args()
    print(f'{check(args.site,args.decode)} camera frames agree with independent CombatV2 replay observations.')
