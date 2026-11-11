# Player and course sources

The browser course records commands in a small grid model. Each of nine original maps has a direct route, a cautious route that preserves all three health points, and a survey that visits a medikit. The first-person renderer interpolates between cells for presentation. The Lean transition consumes exactly one command per step. The observation includes position, facing, health, key, bulkhead and exit.

Running `python3 build_course.py --output /tmp/episode.json` rebuilds the episode from its authored rows. Compare it with the released `game/episode.json`. Run `node check-course.mjs /path/to/public/site` to compare the JavaScript replay of all 27 tapes with the independent Lean receipts in `downloads/routes.json`. The complete formal sources are in the verification kit. Route search uses breadth-first search; the released passage theorems establish concrete winning runs. They do not assert global optimality.

The native player runs the CombatV2 Lean definitions with its user's own IWAD. The bridge serves a loopback-only game page and converts no world state back into the simulation. The worker returns its own RGB camera frame and numeric observations after each input batch. Use the play instructions at `game/native.html`. To repeat the map and input tests after building the worker, run this command from this directory with local paths.

```sh
python3 native/check_player.py /path/to/map-player /path/to/doom1.wad --routes /path/to/game/native-routes.json
```

The same command accepts Freedoom: Phase 1. The `--freedoom-still FILE.ppm` option writes the opening render only when the IWAD digest matches Freedoom 0.13.0. The `game/native-verification.json` report binds the worker, released image, all nine starts for both IWADs and the shareware route outcomes. The browser records inputs and IWAD SHA-256. Each formal verification resolves the world from the matching local IWAD.
