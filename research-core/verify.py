#!/usr/bin/env python3
"""Prepare a content-pinned external engine and check the historical gameplay proof core."""
import argparse
import hashlib
import json
from pathlib import Path
import re
import shutil
import subprocess
import tempfile

ROOT = Path(__file__).resolve().parent
UPSTREAM = json.loads((ROOT/'evidence/upstream.json').read_text())
INPUTS = json.loads((ROOT/'evidence/proof-inputs.json').read_text())
FROZEN_INPUT = '69a1e0554258e31cd91ad4be6f43aaed257dabd60e7059a7573f709684fa71c1'
FROZEN_COMMIT = 'dd795d67c075b3c3d1149494ddec6aff756e2a64'
URL = 'https://github.com/alaskahoffman/leandoom'
VENDOR = ROOT/'vendor/leandoom'

def require(condition, detail):
    if not condition:
        raise ValueError(detail)

def digest(data):
    return hashlib.sha256(data).hexdigest()

def check_files(root, hashes):
    for name, expected in hashes.items():
        relative = Path(name)
        require(not relative.is_absolute() and '..' not in relative.parts, 'Invalid manifest path')
        path = root/relative
        require(path.is_file() and not path.is_symlink(), f'Missing regular file {name}')
        require(digest(path.read_bytes()) == expected, f'Unexpected content in {name}')

def check_source(check_upstream):
    require(INPUTS['sha256'] == FROZEN_INPUT == digest(json.dumps(INPUTS['files'], sort_keys=True).encode()), 'Input manifest mismatch')
    require(UPSTREAM['commit'] == FROZEN_COMMIT and UPSTREAM['url'] == URL,'Engine identity mismatch')
    selected = {k:v for k,v in INPUTS['files'].items() if check_upstream or not k.startswith('vendor/leandoom/')}
    check_files(ROOT, selected)
    if check_upstream:
        check_files(VENDOR, {k:UPSTREAM['files'][k] for k in ['lake-manifest.json','lean-toolchain','COPYING.md']})
    print(f'Verified {len(selected)} frozen input hashes.')

def setup(existing):
    check_source(False)
    if VENDOR.exists():
        check_source(True)
        print('Pinned dependency already present.')
        return
    VENDOR.parent.mkdir(exist_ok=True)
    with tempfile.TemporaryDirectory(dir=VENDOR.parent) as temp:
        stage = Path(temp)
        if existing is None:
            original = stage/'download'
            subprocess.run(['git','init','--quiet',str(original)],check=True)
            subprocess.run(['git','-C',str(original),'fetch','--quiet','--depth=1',URL,FROZEN_COMMIT],check=True)
            subprocess.run(['git','-C',str(original),'checkout','--quiet','--detach','FETCH_HEAD'],check=True)
            commit = subprocess.check_output(['git','-C',str(original),'rev-parse','HEAD'],text=True).strip()
            require(commit == FROZEN_COMMIT,'Git returned another commit')
        else:
            original = existing.resolve()
        check_files(original, UPSTREAM['files'])
        dependency = stage/'dependency'
        require(all('/' not in p or Path(p).parts[0] == 'Doom' for p in UPSTREAM['files'] if p.endswith('.lean')), 'Unexpected dependency layout')
        for name in UPSTREAM['files']:
            if name.endswith('.lean') or name in ['lake-manifest.json','lean-toolchain','COPYING.md']:
                target = dependency/name
                target.parent.mkdir(parents=True,exist_ok=True)
                shutil.copyfile(original/name,target)
        dependency.rename(VENDOR)
    check_source(True)
    print(f'Checked {len(UPSTREAM["files"])} pinned upstream files and installed its Lean sources.')

def check_audit(record):
    reports = {}
    for line in record.splitlines():
        match = re.fullmatch(r"'(LeanDoomProofs\.\w+)' (?:depends on axioms: \[([^\]]*)\]|does not depend on any axioms)",line)
        require(match is not None, f'Unexpected audit line: {line}')
        name, axioms = match.groups()
        require(name not in reports, f'Duplicate report for {name}')
        reports[name] = [a.strip() for a in axioms.split(',')] if axioms else []
    expected = json.loads((ROOT/'evidence/axiom-audit.json').read_text())['theorems']
    inventory = json.loads((ROOT/'evidence/theorems.json').read_text())['declarations']
    require(len(reports) == 277 and reports == expected and set(inventory) == set(reports), 'Axiom audit differs from the frozen inventory')
    require(all(set(values) <= {'propext','Classical.choice','Quot.sound'} for values in reports.values()), 'Unexpected axiom')
    print('277 declarations match their retained axiom reports.')

def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('action',choices=['check','setup','audit'])
    parser.add_argument('--from-dir',type=Path,help='Use a complete checkout of the pinned upstream revision for setup.')
    args = parser.parse_args()
    if args.action == 'setup':
        setup(args.from_dir)
    else:
        require(args.from_dir is None,'--from-dir applies only to setup')
        check_source(args.action == 'audit' or VENDOR.is_dir())
    check_audit((ROOT/'evidence/axioms.txt').read_text())
    if args.action == 'audit':
        subprocess.run(['lake','build','LeanDoomProofs'],cwd=ROOT,check=True)
        result = subprocess.run(['lake','env','lean','-DwarningAsError=true','ProofAudit.lean'],cwd=ROOT,text=True,capture_output=True)
        require(result.returncode == 0,result.stdout+result.stderr)
        check_audit(result.stdout)
        print('Fresh Lean import and kernel audit completed.')
if __name__ == '__main__':
    main()
