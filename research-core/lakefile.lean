import Lake
open Lake DSL

package «leandoom-proofs» where
  version := v!"0.1.0"

require «lean-doom» from "vendor/leandoom"

@[default_target]
lean_lib LeanDoomProofs
