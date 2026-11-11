"""Recheck the published Theater chapter theorems against a freshly verified tape."""
import hashlib
import json
import os
from pathlib import Path
import re
import shutil
import subprocess

SITE=Path(__file__).resolve().parents[2]/'public-site'

def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()

def published_film(site, receipt):
    level = receipt['level']
    primary = site / 'evidence/passages' / level.lower() / 'film.json'
    candidates = [json.loads(primary.read_bytes())] if primary.is_file() else []
    alternate = site / 'theater/alternates.json'
    if alternate.is_file():
        candidates.extend(json.loads(alternate.read_bytes())['routes'].get(level, []))
    matches = [film for film in candidates if film['id'] == level and
               film['recordingSha256'] == receipt['recordingSha256'] and
               film['rulesSha256'] == receipt['rulesSha256']]
    if len(matches) > 1:
        raise ValueError('Ambiguous Theater recording ' + receipt['recordingSha256'])
    return matches[0] if matches else None


def check_chapters(project, attempt, receipt):
    film = published_film(SITE, receipt)
    if film is None:
        return
    if sha(attempt/'Inputs.lean') != receipt['sources']['Inputs.lean']:
        raise ValueError('Changed generated map or tape source')
    records={}
    for c in film['chapters']:
        if c['module']!='Certificate':
            records.setdefault(c['module'],[]).append(c)
    def lake(*args):
        return subprocess.check_output(['lake',*args],cwd=project,text=True).strip()
    paths=lake('env','printenv','LEAN_PATH').split(os.pathsep)
    libs=[(project/p).resolve() for p in lake('-q','query','@lean-doom/Doom:shared','LeanDoomProofs:shared','+OriginalReplay:dynlib').splitlines()]
    env=dict(os.environ,LEAN_PATH=os.pathsep.join(map(str,[attempt,*[(project/p).resolve() for p in paths]])))
    lean=Path(subprocess.check_output(['lean','--print-prefix'],cwd=project,text=True).strip())/'bin'/'lean'
    def compile_module(name,flags=()):
        return subprocess.check_output([lean,'-DwarningAsError=true',*flags,'-o',name+'.olean',name+'.lean'],
                                       cwd=attempt,env=env,text=True,stderr=subprocess.STDOUT)
    summary={}
    for module,items in records.items():
        src=(SITE/'theater'/items[0]['sourceFile']).resolve()
        if not src.is_relative_to((SITE/'theater/source').resolve()) or src.name!=module+'.lean' or not module.isidentifier():
            raise ValueError('Invalid published source path')
        if any(c['sourceSha256']!=sha(src) for c in items):
            raise ValueError('Changed chapter source '+module)
        if 'import CentralInputs\n' in src.read_text():
            # The original E1M6 observer used this name for the very same map and tape.
            (attempt/'CentralInputs.lean').write_text('import Inputs\n')
            compile_module('CentralInputs')
        shutil.copyfile(src,attempt/src.name)
        compile_module(module,['--load-dynlib='+str(p) for p in libs])
        declarations=sorted({c['declaration'] for c in items})
        if any(not re.fullmatch(r'[A-Za-z][A-Za-z0-9_.]*',d) for d in declarations):
            raise ValueError('Invalid published declaration')
        audit=module+'TheaterAudit'
        (attempt/(audit+'.lean')).write_text('import '+module+'\n'+''.join('#print axioms '+d+'\n' for d in declarations))
        text=compile_module(audit)
        (attempt/(audit+'.log')).write_text(text)
        found=re.findall(r"'([\w.]+)' depends on axioms: \[([^\]]*)\]",text,re.S)
        if {d for d,_ in found}!=set(declarations):
            raise ValueError('Missing chapter audit for '+module)
        for d,raw in found:
            axioms=[a.strip() for a in raw.split(',')]
            if any(a not in ('propext','Classical.choice','Quot.sound') and
                   not re.fullmatch(re.escape(d)+r'\._native\.native_decide\.ax_\d+(?:_\d+)*',a) for a in axioms):
                raise ValueError('Unexpected chapter axiom for '+d)
            summary[d]={'axioms':axioms,'sourceSha256':sha(src),'objectSha256':sha(attempt/(module+'.olean'))}
    (attempt/'theater-chapters.json').write_text(json.dumps({'recordingSha256':receipt['recordingSha256'],
         'rulesSha256':receipt['rulesSha256'],'inputsSourceSha256':sha(attempt/'Inputs.lean'),'declarations':summary},indent=2)+'\n')
    print(f'{len(summary)} Theater declaration(s) checked and independently imported.')
