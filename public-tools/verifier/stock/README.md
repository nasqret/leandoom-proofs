# Stock-kernel composition and the historical proofs

The historic passage proof joins concrete equalities for complete simulation states. It first proves that the exact map bytes parse and the ordinary spawn equals the initial state. Each provider proves `CheckedReplay.scan s inputs = some t` for a particular block, including the guard on each input. `append_checked` joins two such blocks when both name exactly the same intermediate simulation. Health, position and elapsed time alone could agree while the random stream, actors or door state differed.

## Rebuild an entire example

The original PROOF01 map is included with its complete historical split-scan proof. It has a player, an exit wall and a single ordinary Use input. These commands build every fixture provider from source, assemble the passage, independently elaborate the literal tape and run a fresh stock Lean axiom audit of seven declarations. Choose an unused destination directory.

```sh
python3 stock/check_fixture.py fixture-check
cat fixture-check/Audit.log
```

A reader can change the mask in a copy of `stock/tape.json` and rerun the recipe. The submitted equality for the original Use input will then fail to typecheck. The assembly code is in [assemble.py](assemble.py); the scanner and completeness theorem are in [CheckedReplay.lean](providers/CheckedReplay.lean).

## Reconstruct a statement for an owned map

The general command `python3 verify.py check RECORDING --iwad ARCHIVE --trust kernel` quotes the locally supplied map group, parses it, performs the ordinary spawn, and asks stock Lean to prove the first safe exit and the actual final observation from the exact tape. This direct strategy is portable. On the long commercial levels, the successful historical standard-axiom proofs used many additional local full-state and individual engine-stage lemmas to make typechecking practical.

The original Nuclear Plant assembly consumed checked intervals covering inputs 1–19, 20–531 and 532–1017. The saved script, binding names, genuine emitted winner, fresh axiom log and direct-provider SHA-256 manifest are included here. You can regenerate the final Lean statement from the recorded inputs with only Python.

```sh
python3 -c 'import json,pathlib; d=json.loads(pathlib.Path("examples/prooflab-e1m2.json").read_text()); pathlib.Path("nuclear-tape.json").write_text(json.dumps({"map":d["level"],"inputs":d["commands"]}))'
python3 stock/assemble.py nuclear-tape.json stock/nuclear.json NuclearWinner.lean
```

The source includes a hash of the serialized tape and separate Lean definitions of its literal masks. A change of JSON formatting can alter the provenance comment. For the historical consumer with its private compiled providers present, set `LEAN_PATH` to the provider directories, then run:

```sh
python3 stock/certify.py nuclear-tape.json stock/nuclear.json stock/historical-e1m2/providers.json /absolute/path/to/pinned/linux/lean new-kernel-result
```

This last command checks the exact historical Linux compiler binary and provider digests. It writes `accepted.json` after auditing the fresh winning object and its independently supplied tape identity. The original induction used 48,569 provider modules. Many contain quoted portions of the commercial game. The public kit includes the general rules, bindings and clean synthetic example; reproducing the historical warm-cache timing requires the privately built map-specific providers. The original cached-provider run took 49.392 seconds for the four new compilation/audit stages. [Historical receipt](historical-e1m2/accepted.json) · [Fresh import from that run](historical-e1m2/Audit.log)

Port-derived stock fixture code and linked engine components use GPL-2.0-or-later. The independent Python automation uses the companion's MIT license. [GPL terms](../combat/COPYING.md) · [MIT terms](../LICENSE)
