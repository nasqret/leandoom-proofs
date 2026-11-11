# Lean Doom Lab

[![An explorer approaches a firelit base beneath an eclipse](public-site/assets/base.webp)](https://nasqret.github.io/leandoom-proofs/)

Play a route, pause on a game tick and inspect its Lean proof. [Launch the lab](https://nasqret.github.io/leandoom-proofs/) · [Proof theater](https://nasqret.github.io/leandoom-proofs/theater/) · [Level dashboard](https://nasqret.github.io/leandoom-proofs/evidence/)

| Where to start | What you can do |
|---|---|
| [Classic game](https://nasqret.github.io/leandoom-proofs/classic/) | Play Episode One in Chocolate Doom. Freedoom: Phase 1 ships with the site. To play id Software’s levels, select your own IWAD locally. |
| [Replay experiments](https://nasqret.github.io/leandoom-proofs/theater/lab/) | Change one Hangar input, follow the fireball on both cameras, or replay the same controls from each of the 256 gameplay RNG positions on Hangar and Nuclear Plant. |
| [Proof course](https://nasqret.github.io/leandoom-proofs/game/) | Play nine authored maps in the browser. Follow direct, careful or survey routes, take manual control, scrub the replay, or export new inputs. All 27 supplied route witnesses have stock Lean kernel audits. |
| [Native Lean engine](https://nasqret.github.io/leandoom-proofs/game/native.html) | Run CombatV2 on your computer. Load your IWAD, play any available E1–E4 slot, and pair the resulting input tape with Lean. |
| [Student edition](https://nasqret.github.io/leandoom-proofs/learn/) | Read about (Lean)DOOM, map parsing, integer physics and passage proofs. Run or modify the illustrated notebook and its Lean exercises. |
| [Research core](research-core/) | Inspect the frozen CombatV1 library, 277 named declarations, its dependency pin and its axiom reports. |

## Verify a recording

Download and extract the [self-contained companion](https://nasqret.github.io/leandoom-proofs/downloads/lean-doom-companion.zip). Install the pinned Lean toolchain using elan. In the extracted kit run the following commands.

```sh
elan toolchain install leanprover/lean4:v4.33.0
python3 verify.py check examples/prooflab-first-room.json
mkdir -p paired-runs
python3 verify.py watch paired-runs
```

Select **Pair local Lean** in the course and choose that folder. Browsers without a writable directory picker can download a recording into the watched folder. The receipt identifies the exact input, toolchain, theorem and axiom audit. For a CombatV2 recording add `--iwad /path/to/your.wad`. In compiler-assisted mode the receipt discloses the extra trust of `native_decide`. The option `--trust kernel` requests stock kernel reduction. [Verification guide](public-tools/verifier/README.md) · [Agent prompts](public-tools/verifier/PROMPTS.md)

The Codex and Claude Code skills are included both in the kit and in this repository. Open the extracted kit in either agent and ask “Verify my latest recording and show its first-exit theorem, trust mode, and receipt.”

The published classic WebAssembly reached the episode finale on two independent Ultra-Violence recordings by kuckkuck and Zero-Master. Both play all nine original maps, including the secret exit and return. [Campaign transcripts and recording credits](https://nasqret.github.io/leandoom-proofs/classic/#campaign)

## Mathematical scope

For a given map, ordinary spawn and controller, the replay fixes every successor state. A first-safe-exit theorem says that the player remains alive, physics succeeds, every strict prefix has a clear exit flag and the last input raises it. A shorter route, different engine or arbitrary player requires a new argument. A route of length 993 proves an upper bound on the best completion time. A zero-shot completion also proves the optimal shot count, because shot counts are natural numbers.

Stock Lean also proves that the Episode One level-successor relation admits exactly two complete itineraries from Hangar: eight maps directly, or nine via Military Base. [Itinerary theorem and audit](public-site/evidence/ClassicCampaign.json)

Across all 36 Freedoom: Phase 1 levels, the native player rendered a start and the verifier certified a four-input prefix and its endpoint. [Per-map prefix certificates](public-site/downloads/native-episode-checks.json)

The two original maps with historical whole-route kernel proofs are E1M1 and E1M2 in CombatV2. Computer Station (E1M7) has a complete compiler-assisted first-safe-exit theorem for 4,161 inputs, ending at 45 health. Command Control (E1M4) reaches its first safe exit after 1,233 inputs in the separately specified CombatV2-SectorActions-V1 revision. It has a compiler-assisted passage proof, an independently checked clean build, and a separate theorem for the two key pickups, first shot and minimum health. [Replay the revised engine](public-tools/episode-passages/README.md). Toxin Refinery, Phobos Lab and Central Processing also have original-map passage theorems, matching films and clean-source checks in their named revisions. Nine original ordinary starts and four constructed scene completions have additional checked results. The original Doom executable, the browser’s classic port, the native Lean port, and the small proof course have different semantics. See the dashboard and the local-verifier receipts for current coverage and trust tiers.

## Work on the site

[Contributor instructions](CONTRIBUTING.md) cover new levels, films, controller tapes, trust settings and deployment.

```sh
python3 -m http.server 8000 --directory public-site
```

Open http://localhost:8000/. The site uses static assets and supports a GitHub Pages project subpath. A push to main runs the site validation and publishes the site directory. Use the downloadable [Jupyter Book](https://nasqret.github.io/leandoom-proofs/learn/jupyter-book.html), [notebook](https://nasqret.github.io/leandoom-proofs/learn/passage-lab.ipynb) and [Obsidian vault](obsidian-vault/) for study. Use the source archives to reproduce the course, research library and Jupyter Book independently.

The [project plan](PLAN.md), [research journal](JOURNAL.md) and [project memory](MEMORY.md) record the intended evidence, completed checks and open mathematical questions.

## Credits and licenses

Alaska Hoffman created [(Lean)DOOM](https://github.com/alaskahoffman/leandoom). [id Software](https://github.com/id-Software/DOOM) released the Doom engine source. [Freedoom](https://freedoom.github.io/) supplies the freely redistributable replacement game; [Chocolate Doom](https://www.chocolate-doom.org/) supplies the classic engine. The independently authored parts use MIT. Engine, fonts, replacement game data and educational fan-video uses retain their own terms. [License scope](LICENSE) · [Credits and primary sources](https://nasqret.github.io/leandoom-proofs/about/)
