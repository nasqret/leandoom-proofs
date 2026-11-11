import LeanDoomProofs.CombatData.Block002
import LeanDoomProofs.CombatData.Block001
import LeanDoomProofs.CombatKernel
import LeanDoomProofs.CombatTables
import LeanDoomProofs.CombatArithmetic
import LeanDoomProofs.CombatPath

namespace LeanDoomProofs
open Doom
set_option maxRecDepth 32768
set_option Elab.async false
set_option maxHeartbeats 2000000
set_option cbv.maxSteps 1000000
attribute [local cbv_opaque] Float.ofNat Float.ofScientific Float.ofBits Fixed.toFloat Tables.fineSine Tables.tanToAngle Tables.fineTangent
attribute [local cbv_eval] Nat.zero_mul Nat.mul_zero Nat.zero_add Nat.add_zero

private theorem safe_24 : combatSafe twoImp_state_24 := by unfold combatSafe; decide +kernel

private theorem safe_25 : combatSafe twoImp_state_25 := by unfold combatSafe; decide +kernel

private theorem safe_26 : combatSafe twoImp_state_26 := by unfold combatSafe; decide +kernel

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 25"
  out.flush

private theorem normalized_24 : combat_tickNormalized twoImp_state_24 0 = twoImp_state_25 := by combat_kernel_close

private theorem actual_24 : twoImp_state_24.tickCombatV1 0 = twoImp_state_25 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_24 0) normalized_24

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 26"
  out.flush

private theorem normalized_25 : combat_tickNormalized twoImp_state_25 0 = twoImp_state_26 := by combat_kernel_close

private theorem actual_25 : twoImp_state_25.tickCombatV1 0 = twoImp_state_26 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_25 0) normalized_25

/-- Complete checked transitions 25 through 26, with every prefix alive and error-free. -/
theorem twoImp_segment_002 : CombatSegment twoImp_state_24 twoImp_inputs_002 twoImp_state_26 := by
  doom_kernel_exact (combat_segment_cons twoImp_state_24 twoImp_state_25 twoImp_state_26 0 [0] actual_24 safe_24
    (combat_segment_cons twoImp_state_25 twoImp_state_26 twoImp_state_26 0 [] actual_25 safe_25
    (combat_segment_nil twoImp_state_26 safe_26)))

#print axioms twoImp_segment_002
end LeanDoomProofs
