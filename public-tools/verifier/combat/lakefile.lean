import Lake
open Lake DSL

package proofCompanion where

require «lean-doom» from "upstream"

lean_lib LeanDoomProofs where
  roots := #[`LeanDoomProofs.WeaponTotal, `LeanDoomProofs.CombatGeometryV2, `LeanDoomProofs.CombatV2]

@[default_target]
lean_lib OriginalReplay

lean_exe «map-player» where
  root := `MapWorker

lean_exe «replay-inspect» where
  root := `ReplayInspect
