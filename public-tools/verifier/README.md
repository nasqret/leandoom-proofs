# Check your run with Lean

Unpack the companion ZIP into a writable directory. It contains the complete source for two deterministic models, a native player, a Python verifier and skills for Codex and Claude Code. You need Python 3.9 or later and the pinned stock Lean toolchain. The native player also needs the C build tools used by Lake. Run these commands from the extracted directory. [Install Lean and elan](https://lean-lang.org/install/)

```sh
elan toolchain install leanprover/lean4:v4.33.0
python3 verify.py check examples/prooflab-first-room.json
```

The example takes 19 inputs. Lean proves that the final input reaches the first exit with the player alive, then proves the exact endpoint. The terminal prints the path of `receipt.json`. Its named attempt directory contains `Inputs.lean`, `Inspect.lean`, `Certificate.lean`, `Audit.lean`, compiled objects and logs.

## Play, record and verify automatically

1. Create a folder for recordings. Start the local watcher there.
2. On the website, open the training course. Select human control or a recorded route. Choose **Pair local Lean** and select the same directory in the browser's directory picker.
3. Play through the exit or save a partial tape. The browser writes the recording. The watcher checks it and returns a receipt into the same folder. Keep the verifier running while the page waits.
4. On browsers without a writable directory picker, download the tape and save it into the watched directory. Read the resulting receipt in the terminal. A separate one-off `check` accepts any recording filename.

```sh
mkdir -p paired-runs
python3 verify.py watch paired-runs
# Process the currently saved recordings once and return.
python3 verify.py watch paired-runs --once
```

The watcher reads `prooflab-*.json`. The default receipt location is `.proofs/<SHA-256 of exact JSON bytes>/receipt.json` inside the watched directory. Leave this location at its default when pairing the browser. An independent `check` may use `--output PATH`. A second hash encodes the command values canonically as concatenated little-endian 32-bit unsigned integers. Reformatting a JSON file preserves the command digest and changes the file digest. No online account or network verifier is needed.

## Play the Lean Doom engine on your maps

Supply a local Doom-format Episode One IWAD, such as your own shareware 1.9 `doom1.wad` or Freedoom: Phase 1. The compiled engine renders frames on your machine and records the keyboard masks for each simulation tick. The launcher prints a private loopback URL. The bundled player accepts the ordinary movement, turn, use, attack and weapon controls on the current CombatV2 revision. [Freedoom downloads](https://freedoom.github.io/download.html) · [Alaska Hoffman's upstream port](https://github.com/alaskahoffman/leandoom)

```sh
(cd combat && lake build map-player)
python3 play.py /path/to/your.wad
# In another terminal, from the same extracted companion
python3 verify.py watch paired-runs --iwad /path/to/your.wad
```

The current recording schema binds the IWAD SHA-256. Legacy recordings without that field select shareware 1.9, digest `1d7d43be501e67d927e415e0b8f3e29c3bf33075e859721816f652a526cac771`. Select E1M1–E1M9 individually. The run theorem starts at the engine's ordinary spawn in that slot. A transition to another level or a campaign ending requires further semantics and a separate statement. The browser's classic Freedoom player uses a different engine. Only exports labelled CombatV2 or Proof Lab can be verified by this tool.

## What the certificate says

For a command list of length `n`, write `s₀` for the spawn and `sᵢ₊₁ = step sᵢ kᵢ`. The first theorem checks the commands are ordinary, every state is alive, every strict prefix has a clear exit flag, and the last state has the exit flag set. CombatV2 additionally checks the absence of a physics error at every prefix. The second theorem identifies the final coordinates, health and other observed fields. One unfinished or post-exit input sequence can have a valid computed endpoint and a proved false passage predicate. [Grid definitions](ProofGrid.lean) · [CombatV2 definitions](combat/OriginalReplay.lean)

The nine authored teaching rooms use representable integer grid coordinates and a small step function. Their proof terms use `by decide +kernel`. The real CombatV2 map parser, fixed-point simulation, item pickups, enemy state and moving geometry make reduction considerably larger. The default real-engine mode uses `native_decide` and reports its compiler-dependent axiom. `--trust kernel` requests ordinary kernel reduction on precisely the same model, map and commands. Long real runs can require substantial memory and time with that setting. `--timeout N` bounds each child process in seconds. [Lean on decidable propositions](https://lean-lang.org/theorem_proving_in_lean4/type_classes.html) · [Lean tactic reference](https://lean-lang.org/doc/reference/latest/Tactic-Proofs/Tactic-Reference/)

| Receipt | Meaning |
| --- | --- |
| `kernel-passage` | The first safe exit and final observation were checked with ordinary kernel reduction. |
| `compiler-passage` | Both facts were checked using Lean's compiler-assisted evaluation. |
| `kernel-prefix` / `compiler-prefix` | Lean checked the final observation and proved the first-safe-exit predicate false for this tape under the recorded trust setting. |
| `rejected` | The tool could not produce the promised proof, for example after a mismatched IWAD, incorrect claimed endpoint or failed build. |

The training verifier runs `Inspect.lean` to compute a proposed final state. CombatV2 uses the bundled native `replay-inspect` executable to compute its proposal directly from the whole IWAD. The verifier then generates a proof of that proposal, compiles it, imports the result in a new Lean process and checks the axiom list of both declarations. The receipt records the rules digest, world digest, exact commands digest, source/object digests, Lean revision and all axiom names. JSON validation and disk-to-Lean quotation are part of the input pipeline. The theorem itself speaks about the data literal in `Inputs.lean`. Original commercial map literals appear in local generated input modules and objects. Keep those files in the owner's private workspace.

## Reproduce examples or pair an agent

```sh
python3 verify.py check examples/prooflab-e1m2.json --iwad /path/to/doom1.wad
python3 verify.py check examples/prooflab-e1m7.json --iwad /path/to/doom1.wad
python3 verify.py check /path/to/my-run.json --iwad /path/to/your.wad --trust kernel
python3 route_tests.py /path/to/new-validation-directory
```

The release includes Hangar (978 and 993), Nuclear Plant (1,017 and a quiet 1,013), Computer Station (4,161) and a Military Base prefix (933). The examples contain our input commands. The program reads the map bytes from the supplied IWAD. A regenerated original certificate will use the map bytes in that file, the recorded input values and the bundled CombatV2 rules. The named level, file hash, command hash and trust setting distinguish records for different maps or different proof methods. The standalone authored-route compilation and fresh audits are included in `validation/`.

Open the extracted directory as a workspace in Codex or Claude Code. Ask the agent to “use the verify-doom-run skill on my recording and report both audited declarations.” The ZIP contains the same skill in both agents’ project discovery locations. The source tree keeps the common skill in `skills/verify-doom-run/`. [Agent prompts](PROMPTS.md) · [Codex skills](https://developers.openai.com/codex/skills/) · [Claude Code skills](https://code.claude.com/docs/en/skills)

The independent verifier, teaching model and documentation use MIT. The port and CombatV2-derived source use GPL-2.0-or-later. The included Freedoom preview has the Freedoom contributors' license. [MIT license](LICENSE) · [Engine source and notices](combat/NOTICE.md) · [Freedoom artwork license](game/freedoom-COPYING.txt)

The original kernel composition recipe, its complete PROOF01 fixture, the historical Nuclear Plant bindings and audited roots are under [stock/](stock/README.md). Run `python3 stock/check_fixture.py fixture-check` to rebuild an entire split-scan proof from source.
