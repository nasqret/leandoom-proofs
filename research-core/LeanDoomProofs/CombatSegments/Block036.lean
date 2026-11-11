import LeanDoomProofs.CombatData.Block036
import LeanDoomProofs.CombatData.Block035
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

private theorem safe_310 : combatSafe twoImp_state_310 := by unfold combatSafe; decide +kernel

private theorem safe_311 : combatSafe twoImp_state_311 := by unfold combatSafe; decide +kernel

private theorem safe_312 : combatSafe twoImp_state_312 := by unfold combatSafe; decide +kernel

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 311"
  out.flush

private theorem normalized_310 : combat_tickNormalized twoImp_state_310 8192 = twoImp_state_311 := by combat_kernel_close

private theorem actual_310 : twoImp_state_310.tickCombatV1 8192 = twoImp_state_311 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_310 8192) normalized_310

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 312"
  out.flush

private theorem normalized_311 : combat_tickNormalized twoImp_state_311 8192 = twoImp_state_312 := by combat_kernel_close

private theorem actual_311 : twoImp_state_311.tickCombatV1 8192 = twoImp_state_312 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_311 8192) normalized_311

/-- Complete checked transitions 311 through 312, with every prefix alive and error-free. -/
theorem twoImp_segment_036 : CombatSegment twoImp_state_310 twoImp_inputs_036 twoImp_state_312 := by
  doom_kernel_exact (combat_segment_cons twoImp_state_310 twoImp_state_311 twoImp_state_312 8192 [8192] actual_310 safe_310
    (combat_segment_cons twoImp_state_311 twoImp_state_312 twoImp_state_312 8192 [] actual_311 safe_311
    (combat_segment_nil twoImp_state_312 safe_312)))

#print axioms twoImp_segment_036
end LeanDoomProofs
