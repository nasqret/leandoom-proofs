import LeanDoomProofs.CombatData.Block037
import LeanDoomProofs.CombatData.Block036
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

private theorem safe_312 : combatSafe twoImp_state_312 := by unfold combatSafe; decide +kernel

private theorem safe_313 : combatSafe twoImp_state_313 := by unfold combatSafe; decide +kernel

private theorem safe_314 : combatSafe twoImp_state_314 := by unfold combatSafe; decide +kernel

private theorem safe_315 : combatSafe twoImp_state_315 := by unfold combatSafe; decide +kernel

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 313"
  out.flush

private theorem normalized_312 : combat_tickNormalized twoImp_state_312 8192 = twoImp_state_313 := by combat_kernel_close

private theorem actual_312 : twoImp_state_312.tickCombatV1 8192 = twoImp_state_313 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_312 8192) normalized_312

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 314"
  out.flush

private theorem normalized_313 : combat_tickNormalized twoImp_state_313 8192 = twoImp_state_314 := by combat_kernel_close

private theorem actual_313 : twoImp_state_313.tickCombatV1 8192 = twoImp_state_314 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_313 8192) normalized_313

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 315"
  out.flush

private theorem normalized_314 : combat_tickNormalized twoImp_state_314 8192 = twoImp_state_315 := by combat_kernel_close

private theorem actual_314 : twoImp_state_314.tickCombatV1 8192 = twoImp_state_315 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_314 8192) normalized_314

/-- Complete checked transitions 313 through 315, with every prefix alive and error-free. -/
theorem twoImp_segment_037 : CombatSegment twoImp_state_312 twoImp_inputs_037 twoImp_state_315 := by
  doom_kernel_exact (combat_segment_cons twoImp_state_312 twoImp_state_313 twoImp_state_315 8192 [8192, 8192] actual_312 safe_312
    (combat_segment_cons twoImp_state_313 twoImp_state_314 twoImp_state_315 8192 [8192] actual_313 safe_313
    (combat_segment_cons twoImp_state_314 twoImp_state_315 twoImp_state_315 8192 [] actual_314 safe_314
    (combat_segment_nil twoImp_state_315 safe_315))))

#print axioms twoImp_segment_037
end LeanDoomProofs
