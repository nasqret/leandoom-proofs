# Extend the lab

## Add a human or trained controller

Record a tape in the course or native Lean player. Preserve the original JSON as the witness. Optimizations produce new tapes, each with its own hash and certificate. Use the local verifier to get the actual observation and inspect the generated theorem and fresh import audit. A compiler-assisted receipt lists its generated native-decision axiom. Store the controller, the small result and the public proof source under the verifier examples and validation directories. Map bytes and derived map-data source stay on the machine that holds the IWAD.

## Add a training route

The level definitions and search live in [the course builder](public-tools/game/build_course.py). Rebuild the episode file, then regenerate route certificates on the proof machine using [the matrix procedure](public-tools/verifier/validation/README.md). Update the public JSON and aggregate Lean file from the new results. Verify that JavaScript’s observations agree with Lean for the same input values.

```sh
node public-tools/game/check-course.mjs public-site
python3 public-tools/verifier/package.py public-site/downloads/lean-doom-companion.zip
```

Refresh the companion SHA-256 sidecar and check its embedded manifest before tagging a release. Provide dates and job or local toolchain information with each proof result.

## Add a film or dashboard entry

The theater reads [films.json](public-site/theater/films.json). Each film specifies its own frame rate, total frame count and exit tick. Each chapter binds a source line and an excerpt to its first displayed frame. The player synchronizes from decoded video time. Use a relative media URL, a source digest and a silent gameplay video covered by the relevant publication terms. The separate edited-film index supports narrated-by-text or censored presentations with regular browser video controls.

The map dashboard reads [maps.json](public-site/evidence/maps.json) and the portable checker receipts. Include the statement, source location, source digest and axiom report. Distinguish the starting conditions for a local switch theorem from a complete passage. The CombatV1 core is a frozen named edition; a change to its declarations should have a separately identified source package.

## Preview and deploy

```sh
python3 public-tools/release/validate.py
python3 -m http.server 8000 --directory public-site
```

Check code highlighting after seeking, keyboard controls, the manual record/export path and links from the student edition. GitHub Actions validates the checked-in site and deploys it from main. After Pages reports success, compare the downloaded public bytes with a clean checkout.

```sh
python3 public-tools/release/verify_live.py --revision "$(git rev-parse HEAD)"
```

An annotated `vMAJOR.MINOR.PATCH` tag packages the companion, research core, student notebook, two book archives and study vault as a public GitHub Release. Update `RELEASE.md` before creating that tag. The release workflow publishes a checksum list alongside the downloads.
