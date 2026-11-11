"""Render edited Hangar tapes using the native CombatV2 player."""
import argparse
from concurrent.futures import ThreadPoolExecutor
import hashlib
import json
from pathlib import Path
import struct
import subprocess

IWAD = '1d7d43be501e67d927e415e0b8f3e29c3bf33075e859721816f652a526cac771'
FPS = 35

def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()

def digest_state(tick, x, y, angle, hp, exited):
    return struct.pack('<IiiII?', tick, x, y, angle, hp, exited)

def routes(catalog):
    tapes = {len(r['commands']):r['commands'] for r in json.loads(catalog.read_text()) if r['level'] == 'E1M1'}
    base = tapes[993]
    yield 'early-use-992', base[:991]+[4096], 984
    yield 'learned-978', tapes[978], 960
    for tick in range(887, 923):
        for name, bit in [('left', 8), ('right', 16)]:
            branch = list(base)
            branch[tick-1] |= bit
            yield f'strafe-{tick}-{name}', branch, 886

def capture(case, args):
    key, tape, start = case
    output = args.output / (key + '.mp4')
    temp = output.with_suffix('.part.mp4')
    camera = subprocess.Popen([args.player, args.wad, 'E1M1'], stdin=subprocess.PIPE, stdout=subprocess.PIPE)
    encoder = None
    def step(keys):
        line = 'step ' + ' '.join(map(str, keys)) if keys else 'frame'
        camera.stdin.write((line+'\n').encode())
        camera.stdin.flush()
        head = json.loads(camera.stdout.readline())
        pixels = camera.stdout.read(head['bytes'])
        if head['error'] or len(pixels) != head['width']*head['height']*3:
            raise ValueError(f'{key} camera failed at {head["tick"]}')
        return head, pixels
    observed = hashlib.sha256()
    try:
        tick = 0
        while tick < start:
            keys = tape[tick:min(tick+35, start)]
            head, pixels = step(keys)
            tick += len(keys)
            if tick != head['tick'] or head['exit']: raise ValueError(f'{key} lost its shared opening')
        width, height = head['width'], head['height']
        encoder = subprocess.Popen([args.ffmpeg, '-hide_banner','-loglevel','error','-y',
            '-f','rawvideo','-pix_fmt','rgb24','-s',f'{width}x{height}','-r',str(FPS),'-i','pipe:0',
            '-an','-c:v','libx264','-threads','1','-preset','veryfast','-crf','22','-g','8','-bf','0',
            '-pix_fmt','yuv420p','-movflags','+faststart',temp],stdin=subprocess.PIPE)
        while True:
            if head['tick'] != tick: raise ValueError('Renderer did not advance exactly one tick')
            observed.update(digest_state(tick,head['x'],head['y'],head['angle'],head['health'],head['exit']))
            encoder.stdin.write(pixels)
            if tick == len(tape) or head['exit'] or head['health'] == 0: break
            head, pixels = step(tape[tick:tick+1])
            tick += 1
        encoder.stdin.close()
        if encoder.wait(): raise RuntimeError(f'{key} encoder failed')
        camera.stdin.write(b'quit\n')
        camera.stdin.close()
        if camera.wait(): raise RuntimeError(f'{key} native player failed')
        temp.replace(output)
        return key, {'file':output.name,'firstTick':start,'lastTick':tick,'frames':tick-start+1,
                     'sha256':sha(output),'stateSha256':observed.hexdigest()}
    finally:
        for proc in (encoder,camera):
            if proc is not None and proc.poll() is None:
                proc.kill()
                proc.wait()

def main():
    parser=argparse.ArgumentParser(description=__doc__)
    for field in ('player','wad','catalog','output','ffmpeg'):
        parser.add_argument('--'+field,type=Path,required=True)
    parser.add_argument('--workers',type=int,default=4)
    args=parser.parse_args()
    if sha(args.wad)!=IWAD: raise ValueError('Unexpected map archive')
    args.output.mkdir(parents=True,exist_ok=True)
    with ThreadPoolExecutor(max_workers=args.workers) as pool:
        clips=dict(pool.map(lambda case:capture(case,args),routes(args.catalog)))
    obj={'engine':'CombatV2','map':'E1M1','fps':FPS,'iwadSha256':IWAD,
         'rendererSha256':sha(args.player),'clips':clips}
    (args.output/'cameras.json').write_text(json.dumps(obj,separators=(',',':'))+'\n')

if __name__ == '__main__':
    main()
