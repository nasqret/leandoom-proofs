# Reproduce the classic player checks

Serve the released site from a local HTTP server, open its Classic engine page in Chromium, and use the game-data selector. For the original maps, choose your own legally obtained IWAD through the file input. The player retains that file in browser memory.

The function in `check-browser.js` can be pasted into the developer console on the player page. Evaluate `await checkClassicMap(1)` through `await checkClassicMap(9)`. Each request launches a fresh map on medium difficulty when the default difficulty is selected. The function captures WebGL pixel hashes after draw calls, turns via the game's key bridge, checks that the paused renderer issues zero draw calls and sees the next frame after resuming. Only hashes, dimensions and sampled colour counts leave the page. Frame digests can vary with the time of capture.

```sh
python3 check-sources.py /path/to/classic/engine-source.zip /path/to/an/episode-one.wad
```

The source checker locates the classic C functions for ordinary, secret and finale progression. It inspects the selected archive for the corresponding exit markers on E1M3, E1M8 and E1M9 and emits a hash and booleans. The release report is `classic/checks.json`. It distinguishes rendered map starts from a playthrough of the entire episode.

## Continuous episode validation

The released campaign report records two real human controllers from the Doom Speed Demo Archive. Both reach the original episode finale through all nine maps at Ultra-Violence on the local shareware 1.9 IWAD. The recording metadata credits kuckkuck and Zero-Master. The terminal health values are 5 and 7. At E1M8 the stock engine triggers the finale when health falls to 10 or below in the terminal damage sector.

The release includes a MIT-licensed headless observer in the site's `classic/replay.cjs`. With Node.js 22 or later, a matching engine directory, local IWAD and extracted LMP, run

```sh
node public-site/classic/replay.cjs public-site/classic /path/to/doom1.wad /path/to/route.lmp result.json
```

The observer verifies the SHA-256 of both runtime files and uses the engine's built-in timedemo mode. The host receives the exact frame callback that Emscripten normally registers. It dispatches those frames without a wall-clock delay or graphics initialization. The original C logic reads the LMP, applies inputs and updates the world. The observer reads the WASM memory through the shipped DWARF addresses. It checks every map entry and intermission, the secret-exit flag, the secret return and GS_FINALE. The report includes the difficulty, monster setting, accumulated cheat flags, per-map counters and all three input hashes. Running the same file on another IWAD can produce a different path.
