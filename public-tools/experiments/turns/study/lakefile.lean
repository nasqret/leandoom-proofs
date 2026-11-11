import Lake
open Lake DSL
package turnStudy
require proofCompanion from "../../../verifier/combat"
lean_lib TurnFamily
lean_exe «turn-capture» where
  root := `TurnCapture
