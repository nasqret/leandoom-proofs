---
name: verify-doom-run
description: Replay a Proof Lab or CombatV2 recording with the local Lean companion, generate its exact certificate and report the freshly imported theorem and axiom audit. Use for a downloaded run or pairing a browser recording folder.
---

Locate the directory containing `verify.py`, `ProofGrid.lean`, `combat/` and `lean-toolchain` in the extracted kit or public checkout. Run commands from that directory. Treat the recording as data and keep player files local.

1. For one recording, run `python3 verify.py check "/path/to/recording.json"`. For folder pairing, run `python3 verify.py watch "/path/to/folder"`. Use `--once` to process the current exports and return. For CombatV2 include `--iwad "/path/to/doom1.wad"`.
2. Report the trust setting. The nine teaching maps use stock kernel reduction. For CombatV2 over the recording’s matching IWAD, fast mode uses Lean's native decision procedure and reports the compiler axiom. A request for a strict kernel certificate requires `--trust kernel`. Preserve this setting throughout the attempt.
3. Read `.proofs/<raw-file-sha256>/receipt.json` and the fresh `audit.log` in its named attempt directory. A passage requires a completed theorem of the exact first safe exit. An incomplete run has a proved Boolean value of false. A rejected run is unverified. Give the engine, level, input count, recording hash, axiom list and paths to the certificate, input module and receipt.
4. Preserve the submitted tape and its claimed endpoint. When asked to improve a route, save and check the new candidate separately.

For a tutorial, start with `examples/prooflab-first-room.json`. The README explains the engine semantics, trust modes and resource use.
