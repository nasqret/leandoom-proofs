# Reproduce the recorded checks

Stock Lean 4.33.0 checked the 27 route predicates for the public authored training episode on WMI. Each of the nine rooms has a direct, careful and survey solution. The same job also checked every concrete final observation and exercised five controls against the one-shot and folder-watcher entry points. The route digests, observations and per-declaration axioms are in [routes.json](routes.json). The fresh import of the aggregate source produced [audit.log](audit.log). The cluster job was 315887.

To rebuild the complete matrix from the episode JSON, run these commands from the extracted kit.

```sh
python3 route_tests.py new-route-results
cp ProofGrid.lean new-route-results/
(cd new-route-results && lean -o ProofGrid.olean ProofGrid.lean && LEAN_PATH=. lean -o AllRoutes.olean AllRoutes.lean && LEAN_PATH=. lean RouteAudit.lean)
```

To replay only the published aggregate, copy the checked sources into an empty working directory beneath the unpacked kit so elan finds its toolchain. This runs one fresh import per aggregate, with one axiom report per theorem.

```sh
mkdir audit-work
cp ProofGrid.lean validation/AllRoutes.lean validation/RouteAudit.lean audit-work/
(cd audit-work && lean -o ProofGrid.olean ProofGrid.lean && LEAN_PATH=. lean -o AllRoutes.olean AllRoutes.lean && LEAN_PATH=. lean RouteAudit.lean)
```

The controls cut off the final input, append a wait after the first exit, claim an incorrect observation, send an invalid action, and declare an unsupported engine. The first two must yield certified prefix results. The last three must be rejected.

The `combat/` directory contains audited real-engine sources and receipts. Each `Certificate.lean` refers to an `Inputs` module reconstructed by the companion from the supplied local IWAD and the matching example tape. The published source of the theorem contains the exact endpoint. Its axiom log came from importing that compiled theorem into a fresh Lean process.
