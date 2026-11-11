# Reproduce the classic player checks

Serve the released site from a local HTTP server, open its Classic engine page in Chromium, and use the game-data selector. For the original maps, choose your own legally obtained IWAD through the file input. The player retains that file in browser memory.

The function in `check-browser.js` can be pasted into the developer console on the player page. Evaluate `await checkClassicMap(1)` through `await checkClassicMap(9)`. Each request launches a fresh map on medium difficulty when the default difficulty is selected. The function captures WebGL pixel hashes after draw calls, turns via the game's key bridge, checks that the paused renderer issues zero draw calls and sees the next frame after resuming. Only hashes, dimensions and sampled colour counts leave the page. Frame digests can vary with the time of capture.

```sh
python3 check-sources.py /path/to/classic/engine-source.zip /path/to/an/episode-one.wad
```

The source checker locates the classic C functions for ordinary, secret and finale progression. It inspects the selected archive for the corresponding exit markers on E1M3, E1M8 and E1M9 and emits a hash and booleans. The release report is `classic/checks.json`. It distinguishes rendered map starts from a playthrough of the entire episode.
