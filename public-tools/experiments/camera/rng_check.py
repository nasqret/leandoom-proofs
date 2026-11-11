"""Check the RNG film release against its 512-case evidence and its actual H.264 files."""
import argparse
import hashlib
import json
from pathlib import Path
import struct
import subprocess
from capture import sha
from rng_camera import CASES,WORKER_SHA,IWAD


def check(site):
    directory=site/'theater/lab/camera';manifest=json.loads((directory/'rng.json').read_text())
    evidence=json.loads((site/'evidence/experiments/rng.json').read_text());catalogue=json.loads((site/'game/native-routes.json').read_text())
    if evidence['status']!='verified' or manifest['iwadSha256']!=IWAD or manifest['releasedPlayerSourceSha256']!=WORKER_SHA:
        raise ValueError('manifest does not identify the pinned game and verified census')
    levels={r['level']:r for r in evidence['levels']}
    if set(manifest['levels'])!=set(CASES):raise ValueError('missing level')
    all_frames=0
    for level,indices in CASES.items():
        data=levels[level];clips=manifest['levels'][level]
        if set(clips)!=set(map(str,indices)) or str(data['baselineIndex']) not in clips:raise ValueError('unexpected phase selection')
        tape=next(r['commands'] for r in catalogue if r['level']==level and len(r['commands'])==data['commands'])
        packed=hashlib.sha256(b''.join(struct.pack('<I',i) for i in tape)).hexdigest(); text=''.join(f'{i}\n' for i in tape)
        if hashlib.sha256(text.encode()).hexdigest()!=data['commandSha256']:raise ValueError('tape not bound to published theorem')
        n=len(tape)+1
        for index in indices:
            row=clips[str(index)];outcome=data['outcomes'][index];file=directory/row['file']
            if file.name!=f'rng-{level.lower()}-{index:03}.mp4' or sha(file)!=row['sha256'] or row['commandsU32LESha256']!=packed:
                raise ValueError('mismatched file or input tape')
            if (row['firstTick'],row['lastTick'],row['frames'],row['verifiedTicks'])!=(0,len(tape),n,n):raise ValueError('incomplete movie')
            for cam,obs in [('firstDeathTick','firstDeathTick'),('firstExitTick','firstExitTick'),('finalHealth','health'),('finalShots','shots')]:
                if row[cam]!=outcome[obs]:raise ValueError(f'{level}/{index} disagrees with census on {obs}')
            stream=json.loads(subprocess.check_output(['ffprobe','-v','error','-of','json','-show_entries','stream=codec_name,width,height,r_frame_rate,nb_frames',str(file)],text=True))['streams']
            if len(stream)!=1 or (stream[0]['codec_name'],stream[0]['width'],stream[0]['height'],stream[0]['r_frame_rate'],int(stream[0]['nb_frames']))!=('h264',320,200,'35/1',n):
                raise ValueError('invalid video stream')
            all_frames+=n;print(level,index,n,row['firstDeathTick'],row['firstExitTick'],row['finalHealth'])
    print('Verified',sum(map(len,CASES.values())),'movies and',all_frames,'frames')

if __name__=='__main__':
    cli=argparse.ArgumentParser(description=__doc__);cli.add_argument('public_site',type=Path);check(cli.parse_args().public_site)
