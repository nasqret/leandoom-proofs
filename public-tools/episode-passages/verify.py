"""Rebuild a named CombatV2 episode revision and verify a recording from ordinary spawn."""
import argparse
import hashlib
import json
from pathlib import Path
import shutil
import subprocess
import sys
import tempfile

HERE = Path(__file__).resolve().parent
BASE = HERE.parent / 'verifier'
sys.path.insert(0, str(BASE))
import models


def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def materialize(name, destination):
    catalog = json.loads((HERE / 'editions.json').read_text())
    if name not in catalog:
        raise ValueError(f'Unknown engine edition {name!r}')
    edition = catalog[name]
    if not destination.is_dir() or any(destination.iterdir()):
        raise ValueError('Use an empty directory for the isolated engine checkout')
    shutil.copytree(BASE / 'combat', destination / 'combat',
                    ignore=shutil.ignore_patterns('.lake', '__pycache__', 'lake-manifest.json', '*.olean', '*.ilean'))
    for filename in ('models.py', 'verify.py', 'lean-toolchain'):
        shutil.copyfile(BASE / filename, destination / filename)
    if models.rules_digest(True) != edition['baseRulesSha256']:
        raise ValueError('The original CombatV2 release differs from the registered base')
    for item in edition['overlays']:
        path = Path(item['path'])
        if path.is_absolute() or '..' in path.parts or path.suffix != '.lean':
            raise ValueError('Invalid overlay path')
        source = HERE / 'editions' / name / path
        if digest(source) != item['sha256']:
            raise ValueError(f'Changed edition source for {path}')
        target = destination / 'combat' / path
        target.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(source, target)
    # The original verifier is reused with the new schema and engine name.
    # Its recording hash covers the original submitted bytes.
    parser = destination / 'models.py'
    text = parser.read_text()
    original = 'COMBAT = '+repr(models.COMBAT)
    if text.count(original) != 1:
        raise ValueError('Unexpected verifier schema declaration')
    parser.write_text(text.replace(original, 'COMBAT = '+repr((edition['schema'],name))))
    probe = 'import models; print(models.rules_digest(True))'
    actual = subprocess.check_output([sys.executable, '-B', '-c', probe], cwd=destination, text=True).strip()
    if actual != edition['rulesSha256']:
        raise ValueError(f'Reconstructed rules differ for {name}: {actual}')
    return edition


def main():
    cli=argparse.ArgumentParser(description=__doc__)
    sub=cli.add_subparsers(dest='action',required=True)
    prepare=sub.add_parser('prepare',help='Create a source-only edition checkout')
    prepare.add_argument('edition')
    prepare.add_argument('directory',type=Path)
    check=sub.add_parser('check',help='Check the full submitted run and import its axiom audit')
    check.add_argument('recording',type=Path)
    check.add_argument('--iwad',type=Path,required=True)
    check.add_argument('--output',type=Path,required=True)
    args=cli.parse_args()
    if args.action=='prepare':
        args.directory.mkdir(parents=True,exist_ok=True)
        print(materialize(args.edition,args.directory)['rulesSha256'])
        return
    recording=args.recording.resolve()
    if recording.stat().st_size>16*1024*1024:
        raise ValueError('Recording exceeds the supported size')
    blob=recording.read_bytes()
    doc=json.loads(blob)
    with tempfile.TemporaryDirectory(prefix='lean-doom-edition-') as tmp:
        checkout=Path(tmp)
        edition=materialize(doc['engine'],checkout)
        if doc['schema'] != edition['schema']:
            raise ValueError('The recording schema differs from the selected engine')
        output=args.output.resolve()
        subprocess.run([sys.executable,checkout/'verify.py','check',recording,'--iwad',args.iwad.resolve(),
                        '--output',output,'--trust','compiler'],check=True)
        receipt=json.loads((output/hashlib.sha256(blob).hexdigest()/'receipt.json').read_text())
        if receipt['rulesSha256']!=edition['rulesSha256'] or receipt['engine']!=doc['engine'] or not receipt['passage']:
            raise ValueError('The completed check differs from the selected edition')

if __name__=='__main__':main()
