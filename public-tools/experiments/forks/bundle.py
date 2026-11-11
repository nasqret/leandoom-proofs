"""Write a reproducible public experiment source archive from a checked run."""
import json
from pathlib import Path
from zipfile import ZipFile, ZipInfo, ZIP_DEFLATED
from build import HERE
from historical import CATALOGUE,ROOT


def bundle(raw,destination):
    verifier=ROOT/'public-tools/verifier'
    contents={f'forks/{n}':(HERE/n).read_bytes() for n in ['build.py','ForkModel.lean','ForkCapture.lean','verify.sbatch']}
    contents.update({f'checked/{n}':(raw/n).read_bytes() for n in ['AllForks.lean','ForkAudit.lean','FalseImpact.lean','ForkAudit.log','FalseImpact.log','receipt.json']})
    for path in sorted((verifier/'combat').rglob('*')):
        rel=path.relative_to(verifier)
        if path.is_file() and not any(p.startswith('.') for p in rel.parts) and path.suffix in {'.lean','.md','.json','.toml',''}:
            contents['verifier/'+rel.as_posix()]=path.read_bytes()
    contents['verifier/models.py']=(verifier/'models.py').read_bytes()
    catalogue=json.loads(CATALOGUE.read_text());contents['native-routes.json']=json.dumps([r for r in catalogue if r['level']=='E1M1'],separators=(',',':')).encode()+b'\n'
    contents['README.md']=b'''# Replay the 72 one-input Hangar experiments

Use a Linux compute node with stock Lean 4.33.0 (commit `d8b18978322d`), Lake and Python 3.9 or later. Supply your own original shareware Doom 1.9 IWAD. Its SHA-256 is `1d7d43be501e67d927e415e0b8f3e29c3bf33075e859721816f652a526cac771`.

```
python3 forks/build.py verifier /path/to/doom1.wad native-routes.json result
```

`result/AllForks.lean` covers three historical controllers and 72 additional one-tick strafe edits. Compare its SHA-256 against `checked/receipt.json`. The driver reconstructs the locally supplied map quotation, checks each theorem, freshly imports the compiled modules, and tries a wrong impact time. Inspect `result/ForkAudit.log` for transitive assumptions including the native-decision axiom. `phase` distinguishes absent, flying, exploding, and removed; in serialized outcomes zero means that an event was never seen. The negative control must fail inside the tactic. Consult `verifier/combat/NOTICE.md` and `COPYING.md` for engine source provenance and license.
'''
    temp=destination.with_suffix('.tmp')
    with ZipFile(temp,'w',compression=ZIP_DEFLATED) as out:
        for name,data in sorted(contents.items()):
            entry=ZipInfo(name,(1980,1,1,0,0,0));entry.compress_type=ZIP_DEFLATED;entry.external_attr=0o100644<<16
            out.writestr(entry,data)
    temp.replace(destination)
