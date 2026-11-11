import Lake
open Lake DSL

package rngInvestigation

require proofCompanion from "../../verifier/combat"

lean_lib RngExperiment

lean_exe «rng-scan» where
  root := `RngScan
