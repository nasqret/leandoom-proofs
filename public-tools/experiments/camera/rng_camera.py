"""Render first-person CombatV2 RNG interventions and compare every frame to the independent census."""
import argparse
from concurrent.futures import ThreadPoolExecutor
import hashlib
import json
import os
from pathlib import Path
import struct
import subprocess
from capture import FPS,IWAD,sha

WORKER_SHA='8d367ee3c41ef679e37af5e5d888c33c3318310d214e752edbff7a3c13a34477'
CASES={'E1M1':(5,40,176),'E1M2':(25,0,1,5)}
PACK = struct.Struct('<IiiIIIII??')


def compile_player(combat,work):
    worker=combat/'MapWorker.lean'
    if sha(worker)!=WORKER_SHA:raise ValueError('unexpected source of released map player')
    source=worker.read_text()
    for before,after in [
        ('serve (iwad level : String)','serve (iwad level : String) (index : UInt8)'),
        ('  let start ← checked (Simulation.spawn map true 1)','  let ordinary ← checked (Simulation.spawn map true 1)\n  let start := { ordinary with rng := { ordinary.rng with play := index } }'),
        ('("kills", toJson s.kills),','("kills", toJson s.kills), ("launches", toJson s.projectiles.size),'),
        ('let [iwad, level] := args','let [iwad, level, rawIndex] := args'),
        ('    serve iwad level','    let some index := rawIndex.toNat? | throw (IO.userError "invalid play index")\n    unless index < 256 do throw (IO.userError "invalid play index")\n    serve iwad level index.toUInt8')]:
        if source.count(before)!=1:raise ValueError('camera source anchor changed')
        source=source.replace(before,after)
    work.mkdir(parents=True,exist_ok=True)
    (work/'RngCameraPlayer.lean').write_text(source)
    (work/'lakefile.lean').write_text('import Lake\nopen Lake DSL\npackage cameraStudy\nrequire proofCompanion from '+json.dumps(str(combat))+'\nlean_exe «rng-camera-player» where\n  root := `RngCameraPlayer\n')
    (work/'lean-toolchain').write_bytes((combat/'lean-toolchain').read_bytes())
    subprocess.run(['lake','build','rng-camera-player'],cwd=work,check=True)
    return work/'.lake/build/bin/rng-camera-player'


def capture(case,args,player):
    level,index=case;slug=f'rng-{level.lower()}-{index:03}';out=args.output/(slug+'.mp4');temp=out.with_suffix('.part.mp4')
    folder=args.oracle/level;oracle=folder/f'frames-{index:03}.json';expected=json.loads(oracle.read_text());tape=[int(s) for s in (folder/'commands.txt').read_text().splitlines() if s]
    if len(tape)!={'E1M1':993,'E1M2':1017}[level] or len(expected)!=len(tape)+1:raise ValueError('incomplete evidence')
    camera=subprocess.Popen([player,args.iwad,level,str(index)],stdin=subprocess.PIPE,stdout=subprocess.PIPE);encoder=None
    rgb=hashlib.sha256();telemetry=hashlib.sha256();first_death=None;first_exit=None
    try:
        for t,frame in enumerate(expected):
            cmd='frame' if t==0 else f'step {tape[t-1]}'
            camera.stdin.write((cmd+'\n').encode());camera.stdin.flush()
            head=json.loads(camera.stdout.readline());pixels=camera.stdout.read(head['bytes']); w,h=head['width'],head['height']
            if len(pixels)!=w*h*3 or head['map']!=level or len(pixels)!=head['bytes'] or (w,h)!=(320,200):raise ValueError('invalid camera buffer')
            got=[head['tick'],head['x'],head['y'],head['angle'],head['health'],head['shots'],head['kills'],head['launches'],head['exit'],head['error'] is not None]
            want=[frame[k] for k in ('tick','xRaw','yRaw','angleRaw','health','shots','kills','launches','exit','error')]
            if t!=frame['tick'] or got!=want:raise ValueError(f'{slug} native camera disagrees with independent observer at tick {t}: {got} / {want}')
            telemetry.update(PACK.pack(*got));rgb.update(pixels)
            if first_death is None and head['health']==0:first_death=t
            if first_exit is None and head['exit']:first_exit=t
            if encoder is None:
                encoder=subprocess.Popen([args.ffmpeg,'-loglevel','error','-y','-f','rawvideo','-pix_fmt','rgb24','-s',f'{w}x{h}','-r',str(FPS),'-i','pipe:0','-an','-c:v','libx264','-threads','1','-preset','veryfast','-crf','22','-g','8','-bf','0','-pix_fmt','yuv420p','-movflags','+faststart',temp],stdin=subprocess.PIPE)
            encoder.stdin.write(pixels)
        camera.stdin.write(b'quit\n');camera.stdin.close();encoder.stdin.close()
        if camera.wait() or encoder.wait():raise ValueError('camera or encoder failed')
        decoded=subprocess.run([args.ffmpeg,'-loglevel','error','-progress','pipe:1','-i',temp,'-map','0:v:0','-f','null','-'],check=True,capture_output=True,text=True)
        frames=[int(s[6:]) for s in decoded.stdout.splitlines() if s.startswith('frame=')]
        if frames[-1]!=len(expected):raise ValueError('decoded frame count differs from run length')
        temp.replace(out);print(slug,len(expected),first_death,first_exit,flush=True)
        return level,str(index),{'file':out.name,'firstTick':0,'lastTick':len(tape),'frames':len(expected),'fps':FPS,'width':w,'height':h,
          'sha256':sha(out),'rawRgbSha256':rgb.hexdigest(),'stateSha256':telemetry.hexdigest(),'independentObserverSha256':sha(oracle),
          'commandsU32LESha256':hashlib.sha256(b''.join(struct.pack('<I',v) for v in tape)).hexdigest(),
          'firstDeathTick':first_death,'firstExitTick':first_exit,'finalHealth':head['health'],'finalShots':head['shots'],
          'finalKills':head['kills'],'launches':head['launches'],'verifiedTicks':len(expected)}
    finally:
        for process in (encoder,camera):
            if process is not None and process.poll() is None:process.kill();process.wait()
        if temp.exists():temp.unlink()


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    for key in ('combat','work','iwad','oracle','output','ffmpeg'):
        parser.add_argument('--'+key,type=lambda s:Path(s).resolve(),required=True)
    parser.add_argument('--workers',type=int,default=4)
    args=parser.parse_args()
    if sha(args.iwad)!=IWAD or not 1<=args.workers<=8:raise ValueError('unexpected IWAD or worker count')
    args.output.mkdir(parents=True,exist_ok=True); player=compile_player(args.combat,args.work)
    selection=[(level,index) for level,indices in CASES.items() for index in indices]
    levels={level:{} for level in CASES}
    with ThreadPoolExecutor(max_workers=args.workers) as pool:
        for level,index,result in pool.map(lambda case:capture(case,args,player),selection):levels[level][index]=result
    report={'schema':'rng-release-cameras-v1','engine':'CombatV2','fps':FPS,'rendering':'Native first-person CombatV2 camera, including every command after death or exit.',
        'comparison':'Each native frame header matched the separately compiled RNG observer on tick, x, y, angle, health, shots, kills, launches, exit and physics error. Every encoded frame was decoded and counted.',
        'iwadSha256':IWAD,'releasedPlayerSourceSha256':WORKER_SHA,'rngCameraSourceSha256':sha(args.work/'RngCameraPlayer.lean'),
        'buildScriptSha256':sha(Path(__file__)),'rendererSha256':sha(player),'encoderSha256':sha(args.ffmpeg),
        'slurmJob':os.environ.get('SLURM_JOB_ID'),'levels':levels}
    dest=args.output/'rng.json';tmp=dest.with_suffix('.tmp');tmp.write_text(json.dumps(report,separators=(',',':'))+'\n');tmp.replace(dest)

if __name__=='__main__':main()
