# Public edition implementation plan

## Replay experiments

1. Reproduce the Hangar exit at ticks 993, 992 and 978. Reuse the common prefix and expose the first differing control.
2. Change a single control between launch and impact, preserve every later input, and track the same missile through the remainder of the tape. Record both the local collision and the full passage outcome.
3. For Hangar and Nuclear Plant, set only the post-spawn gameplay cursor to each of its 256 positions. Check the baseline against ordinary spawn and distinguish table observations from audited Lean declarations.
4. Use one theater entry point. Test seeking, branch selection, level changes, full-grid coverage and an independent rebuild before making the experiment public.

Completed on Helios. The public bundle includes both complete RNG tables with named exceptional sets, all 72 strafe branches, 81 checked native camera clips, the turn census, and the student chapter. The recording, native playback and theorem evidence are labelled separately.

## 1. Establish the publication boundary
Inventory the research history, including archived generated modules. Record upstream revisions, source licenses, game-data hashes, freely licensed replacements and the rights basis for displayed gameplay. Preserve the private research history. Prepare an independent, parentless public Git tree. Check file provenance, license notices, nested archives, and browser network behavior before publication.

## 2. Implement play, recording and replay
Provide original artwork and maps, deterministic movement, synchronized Lean source, multiple winning routes, pause, seek, restart and export. Supply a classic source port for E1M1–E1M9 including normal exits, secret progression and the finale, with a freely redistributable IWAD or a visitor-selected local file. Show the named engine. Provide the pinned native Lean engine and the route to the CombatV2 results. Distinguish map loading, completed gameplay, recorded exits and checked passage.

## 3. Present the real proofs
Publish free-to-watch instructional gameplay with source readouts tied to the original frames. Include Hangar and Nuclear Plant, playback speed, chapter seeking, keyboard controls, the real source identity, proof scope and status of each original map. Use original visual identity on the landing page.

## 4. Pair local proof checking
Ship a companion and Codex and Claude Code skills. Specify the recording schema, engine identity, start state, safety and victory predicates. Bind proof output to the actual recording. Test winning and losing routes, altered controls and an unsupported engine. Label native observations and kernel results distinctly.

## 5. Teach the formalization
Publish a chapter on upstream (Lean)DOOM, this revision and the game loop. Provide an executed notebook with illustrations, screenshots, executable examples and formulas. Teach witnesses, induction, fixed-point arithmetic, effectful collision queries, state sharing and bounded verification. Link the reading list to primary sources. Publish the reusable Lean library and its 277-declaration catalog.

## 6. Verify and publish
Test project-path deployment, desktop and narrow viewports, actual playback, local file ingestion, downloads and the nine maps. Run Lean on WMI. Check unauthenticated GitHub and Pages responses and their source revision. Retain deployment and verification evidence, including remaining limitations of the real engine and level proofs.

## Acceptance and further work

- The public address is backed by an independent history. Public Notices distinguish MIT, GPL, BSD, OFL and fan-video permissions.
- The website includes stock Lean and compiler-assisted receipts. Compare all controller tapes at the native player and inspect the two stock-kernel passage roots in the level dashboard.
- WMI 315887 verified the 27 demonstration tapes. WMI 315929 added a third original map with a whole-passage Lean theorem. WMI 315907 checked the packaged core import against its 277-declaration historical report.
- WMI 315888 executed the illustrated notebook and 315894 produced the strict Jupyter Book build. The public directory includes rendered and downloadable editions and the Obsidian vault.
- The classic browser check exercised all nine original map starts and all nine Freedoom map starts, including actual controls, pause and resume. Source and marker checks identify the secret exit, secret return and finale. Two full Ultra-Violence replays then completed all nine original maps through the secret route and finale. WMI 315957 classified both possible complete itineraries of the abstract map progression.
- The outstanding mathematics is a stock-kernel Computer Station replay, complete original-map routes and passage certificates for the other six maps, and a correspondence proof for the named research revision. Global optimal time and ammunition across the original campaign are open.

## Reproducible checks for maintainers

1. Run `python3 public-tools/release/validate.py` in the clean public checkout. It checks local HTML links, nested downloadable sources, the allowlisted Freedoom digest and excluded file types, film digests and the binding of the formal route receipts to the actual commands.
2. Run `node public-tools/game/check-course.mjs public-site` for a separate JavaScript evaluation against the stock Lean receipts. Use the companion matrix and single-tape instructions for a fresh Lean run.
3. Compare the browser engine and local data against the hashes in `public-site/classic/provenance.json`. The reusable `replay.cjs` observer reproduces a classic campaign from a visitor-supplied IWAD and an external controller.
4. Execute the notebook and strict Jupyter Book build using the education scripts. Read the recording and engine assumptions alongside the source code. Rebuild the downloadable vault and offline editions whenever research coverage changes.
5. Push the curated public branch, inspect the GitHub Actions result and compare unauthenticated Pages responses with the release checkout. Follow `CONTRIBUTING.md` to add a new witness, map or gallery chapter.

The public map selector also covers all four classic episode prefixes present in a visitor’s IWAD. WMI 315975 checked 36 Freedoom and nine shareware starts in the native worker. WMI 315969 checked a four-input native CombatV2 prefix and final observation for each of the 36 Freedoom levels. These are start and prefix claims.

The replay lab now includes the certified minimum for the 2,750 final-turn edits and their individual paths. To extend the bound, specify which earlier controls may change and account for every additional continuation.

## 2026-11-11 · Command Control

Command Control is complete in the sector-actions revision. Continue route synthesis and proof checking on the remaining original maps, and publish each synchronized film with its engine, inputs, trust tier and independent camera evidence.

## All nine original map slots · 2026-11-11

Completed the individual original-map passages, matched first-person films, source-linked chapters and named-edition reproduction. Open research questions include a continuous run through the secret exit with inventory and RNG carryover, one shared engine revision for every map, and reducing reliance on compiler-assisted proofs.
