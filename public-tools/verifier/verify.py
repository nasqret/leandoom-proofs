#!/usr/bin/env python3
"""Check a saved run or pair a local Lean installation with a browser folder."""
import argparse
import json
import os
from pathlib import Path
import re
import shutil
import subprocess
import sys
import tempfile
import time

from models import BOOLS, COMBAT, NATS, ROOT, combat_data, digest, grid_data, observed_literal, parse, rules_digest

STANDARD = {'propext', 'Classical.choice', 'Quot.sound'}
NATIVE_NUM = ('tick','x','y','health','armor','bullets','shells','shots','kills')


def call(argv, cwd, env=None, log=None, timeout=None):
    try:
        proc = subprocess.run(argv, cwd=cwd, env=env, text=True, stdout=subprocess.PIPE,
                              stderr=subprocess.STDOUT, timeout=timeout)
    except FileNotFoundError as e:
        raise RuntimeError(f'Missing executable {argv[0]}. Install the pinned Lean toolchain with elan.') from e
    if log:
        log.write_text(proc.stdout)
    if proc.returncode:
        raise RuntimeError((proc.stdout[-2800:] or f'{argv[0]} returned {proc.returncode}').strip())
    return proc.stdout.strip()


def audit(text, names, trust):
    result = {}
    pattern = r"'(Recording\.\w+)' (?:depends on axioms: \[([^\]]*)\]|does not depend on any axioms)"
    if re.sub(pattern, '', text, flags=re.S).strip():
        raise RuntimeError('unexpected output from the independent axiom check')
    for name, axioms in re.findall(pattern, text, re.S):
        if name in result:
            raise RuntimeError('duplicate axiom report for '+name)
        deps = [a.strip() for a in axioms.split(',') if a.strip()]
        for ax in deps:
            if ax in STANDARD:
                continue
            if trust=='compiler' and (ax in {'Lean.ofReduceBool','Lean.trustCompiler'} or
                                      re.fullmatch(r'(?:Recording\.)?'+re.escape(name.split('.')[-1])+r'\._native\.native_decide\.ax_[0-9_]+',ax)):
                continue
            raise RuntimeError('Unexpected axiom in '+name+': '+ax)
        result[name] = deps
    if set(result)!=set(names):
        raise RuntimeError('The fresh Lean import did not audit the expected declarations')
    return result


def proof(doc, out, args):
    is_combat = (doc['schema'],doc['engine'])==COMBAT
    trust = (('compiler' if is_combat else 'kernel') if args.trust=='auto' else args.trust)
    if not is_combat and trust=='compiler':
        raise ValueError('The teaching episode uses stock kernel verification. Choose --trust kernel.')
    imported,defs,world_hash = combat_data(doc,args.iwad) if is_combat else grid_data(doc)
    home = Path(call(['lean','--print-prefix'],ROOT))
    lean = home/'bin'/('lean.exe' if os.name=='nt' else 'lean')
    version = call([lean,'--version'],ROOT)
    if not version.startswith('Lean (version 4.33.0,') or 'd8b18978322d' not in version:
        raise RuntimeError('Expected stock Lean 4.33.0 with commit d8b18978322d; got '+version)
    env = os.environ.copy()
    env['LEAN_PATH'] = str(out)
    limit = args.timeout or None
    native_flags=[]
    native_objects={}
    if is_combat:
        project=ROOT/'combat'
        call(['lake','build','OriginalReplay','replay-inspect'],project,log=out/'engine-build.log',timeout=limit)
        paths = call(['lake','env',sys.executable,'-c',"import os; print(os.environ['LEAN_PATH'])"],project)
        imported_paths=[str((project/path).resolve()) for path in paths.split(os.pathsep) if path]
        env['LEAN_PATH']=os.pathsep.join([str(out),*imported_paths])
        if trust=='compiler' and not args.no_shared:
            targets=['@lean-doom/Doom:shared','LeanDoomProofs:shared','+OriginalReplay:dynlib']
            results=call(['lake','-q','query',*targets],project,log=out/'shared-libraries.log',timeout=limit)
            libraries=[(project/line.strip()).resolve() for line in results.splitlines()]
            if len(libraries)!=len(targets) or not all(p.is_file() for p in libraries):
                raise RuntimeError('Lake did not resolve the three replay libraries. Try --no-shared on this platform.')
            native_flags=['--load-dynlib='+str(path) for path in libraries]
            native_objects={target:digest(path.read_bytes()) for target,path in zip(targets,libraries)}
    else:
        shutil.copyfile(ROOT/'ProofGrid.lean',out/'ProofGrid.lean')
        call([lean,'-DwarningAsError=true','-o','ProofGrid.olean','ProofGrid.lean'],out,env,out/'model.log',limit)

    def compile_file(name, source, compiler_flags=()):
        (out/(name+'.lean')).write_text(source)
        return call([lean,*compiler_flags,'-DwarningAsError=true','-o',name+'.olean',name+'.lean'],out,env,out/(name+'.log'),limit)
    compile_file('Inputs',imported+'\nset_option maxRecDepth 65536\nnamespace Recording\n'+defs+'end Recording\n')
    obs = ('OriginalReplay.observation group mapName tape' if is_combat else
           'ProofGrid.observe (ProofGrid.play room tape)')
    fn = ('OriginalReplay.passage group mapName tape' if is_combat else
          'ProofGrid.safeFirstExit room (ProofGrid.initial room) tape')
    query = ('import Inputs\nopen Recording\ndef main : IO Unit :=\n  IO.println (Lean.Json.mkObj '
             f'[("final", Lean.toJson ({obs})), ("passage", Lean.toJson ({fn}))]).compress\n')
    (out/'Inspect.lean').write_text(query)
    if is_combat:
        # Compute the candidate from the whole IWAD; the theorem independently
        # replays the quoted map group in Inputs.lean.
        mask_file=out/'commands.txt'
        mask_file.write_text(''.join(f'{k}\n' for k in doc['commands']))
        executable=project/'.lake/build/bin'/('replay-inspect.exe' if os.name=='nt' else 'replay-inspect')
        proposal=[executable,args.iwad.resolve(),doc['level'],mask_file]
    else:
        proposal=[lean,'--run','Inspect.lean']
    result=json.loads(call(proposal,out,env,out/'observation.log',limit))
    final=result['final']
    if not isinstance(final,dict):
        raise ValueError('The model could not load the level or spawn its player')
    claim=doc.get('final')
    if claim is not None:
        if not isinstance(claim,dict):
            raise ValueError('malformed claimed final observation')
        if is_combat:
            extra=set(claim)-set(final)-{'error'}
            if extra:
                raise ValueError('unsupported claimed final fields: '+', '.join(sorted(extra)))
            for k in set(final) & set(claim):
                if type(claim[k]) is not type(final[k]) or claim[k]!=final[k]:
                    raise ValueError(f'the claimed final {k} differs from Lean replay')
            if 'error' in claim and (claim['error'] is None)!=final['errorFree']:
                raise ValueError('the claimed error flag differs from Lean replay')
            if claim.get('error') is not None:
                raise ValueError('supply errorFree=false to check an error flag; error message text is outside the observation')
        elif any(final[k]!=claim[k] for k in (*NATS,*BOOLS)):
            raise ValueError('the claimed final state differs from Lean replay')
    won=result['passage']
    if is_combat:
        literal='some ⟨'+','.join([*(str(final[k]) for k in NATIVE_NUM),
                                  str(final['exit']).lower(),str(final['errorFree']).lower()])+'⟩'
    else:
        literal=observed_literal(final)
    tactic='decide +kernel' if trust=='kernel' else 'native_decide'
    label='passage' if won else 'incomplete'
    theorem = (f'import Inputs\nset_option maxRecDepth 65536\nset_option maxHeartbeats 0\n'
               f'namespace Recording\ntheorem {label} : {fn} = {str(won).lower()} := by {tactic}\n'
               f'theorem finalObservation : {obs} = {literal} := by {tactic}\nend Recording\n')
    compile_file('Certificate',theorem,native_flags)
    names=['Recording.'+label,'Recording.finalObservation']
    (out/'Audit.lean').write_text('import Certificate\n'+''.join('#print axioms '+name+'\n' for name in names))
    ax=audit(call([lean,'Audit.lean'],out,env,out/'audit.log',limit),names,trust)
    return {'status':trust+'-'+('passage' if won else 'prefix'),'trust':trust,'passage':won,'final':final,
            'message':('First safe exit proved' if won else 'Recording checked; exact first safe exit condition is false')+
                       (' by the stock Lean kernel.' if trust=='kernel' else ' with Lean compiler trust.'),
            'axioms':ax,'lean':version,'worldSha256':world_hash,'rulesSha256':rules_digest(is_combat),
            'proofSharedLibraries':native_objects,
            'sources':{p.name:digest(p.read_bytes()) for p in sorted(out.glob('*.lean'))},
            'objects':{p.name:digest(p.read_bytes()) for p in sorted(out.glob('*.olean'))}}

def check(path, args):
    data=path.read_bytes()
    key=digest(data)
    base=(args.output or path.parent/'.proofs').resolve()/key
    base.mkdir(parents=True,exist_ok=True)
    attempt=Path(tempfile.mkdtemp(prefix='check-',dir=base))
    receipt={'schema':'proof-lab-receipt-v1','recordingSha256':key,'attempt':attempt.name,
             'status':'rejected','passage':False,'level':None,'engine':None}
    try:
        doc=parse(data)
        receipt.update(level=doc['level'],engine=doc['engine'],commands=len(doc['commands']))
        tape=b''.join(n.to_bytes(4,'little') for n in doc['commands'])
        receipt['commandsU32LESha256']=digest(tape)
        receipt.update(proof(doc,attempt,args))
    except (ValueError,RuntimeError,OSError,subprocess.TimeoutExpired,RecursionError) as e:
        receipt['message']=str(e)[:3200]
        # Failure to compile is an unverified recording, not a mathematical disproof.
        receipt['passage']=None
    result=attempt/'receipt.json'
    result.write_text(json.dumps(receipt,indent=2)+'\n')
    tmp=attempt/'publish.json'
    shutil.copyfile(result,tmp)
    os.replace(tmp,base/'receipt.json')
    print(f"{path.name}: {receipt['status']} · {receipt['message']}\n{base/'receipt.json'}",flush=True)
    return receipt


def main():
    cli=argparse.ArgumentParser(description=__doc__)
    sub=cli.add_subparsers(dest='command',required=True)
    for cmd in ('check','watch'):
        p=sub.add_parser(cmd)
        p.add_argument('path',type=Path)
        p.add_argument('--output',type=Path,help='receipt parent directory; defaults to .proofs beside the recording')
        p.add_argument('--iwad',type=Path,help='same local archive as the CombatV2 recording, e.g. shareware 1.9 or Freedoom Phase 1')
        p.add_argument('--trust',choices=['auto','kernel','compiler'],default='auto',
                       help='auto uses the stock kernel for the lab and compiler-assisted evaluation for original CombatV2')
        p.add_argument('--timeout',type=int,default=0,help='timeout in seconds for each Lean process (0 lets it finish)')
        p.add_argument('--no-shared',action='store_true',help='use the slower interpreter for native_decide on platforms without working Lean shared-library loading')
        if cmd=='watch':
            p.add_argument('--once',action='store_true',help='check existing matching files, then exit')
    args=cli.parse_args()
    if args.timeout<0:
        cli.error('timeout must be zero or positive')
    if args.command=='check':
        if not args.path.is_file() or args.path.stat().st_size>16*1024*1024:
            cli.error('choose a recording file of at most 16 MiB')
        return int(check(args.path,args)['status']=='rejected')
    if not args.path.is_dir():
        cli.error('choose an existing folder for the recording exchange')
    print(f'Watching {args.path.resolve()} for prooflab-*.json. Stop with Ctrl-C.',flush=True)
    seen=set()
    failed=False
    while True:
        for path in sorted(args.path.glob('prooflab-*.json')):
            if path.is_symlink() or not path.is_file() or path.stat().st_size>16*1024*1024:
                continue
            key=(path,digest(path.read_bytes()))
            if key in seen:
                continue
            seen.add(key)
            failed |= check(path,args)['status']=='rejected'
        if args.once:
            return int(failed)
        time.sleep(.8)


if __name__=='__main__':
    try:
        raise SystemExit(main())
    except KeyboardInterrupt:
        raise SystemExit(130)
