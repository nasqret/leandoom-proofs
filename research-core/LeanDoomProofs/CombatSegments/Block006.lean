import LeanDoomProofs.CombatData.Block006
import LeanDoomProofs.CombatData.Block005
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

private theorem safe_60 : combatSafe twoImp_state_60 := by unfold combatSafe; decide +kernel

private theorem safe_61 : combatSafe twoImp_state_61 := by unfold combatSafe; decide +kernel

private theorem safe_62 : combatSafe twoImp_state_62 := by unfold combatSafe; decide +kernel

private theorem safe_63 : combatSafe twoImp_state_63 := by unfold combatSafe; decide +kernel

private theorem safe_64 : combatSafe twoImp_state_64 := by unfold combatSafe; decide +kernel

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 61"
  out.flush

private theorem normalized_60 : combat_tickNormalized twoImp_state_60 8192 = twoImp_state_61 := by combat_kernel_close

private theorem actual_60 : twoImp_state_60.tickCombatV1 8192 = twoImp_state_61 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_60 8192) normalized_60

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 62"
  out.flush

private theorem normalized_61 : combat_tickNormalized twoImp_state_61 8192 = twoImp_state_62 := by combat_kernel_close

private theorem actual_61 : twoImp_state_61.tickCombatV1 8192 = twoImp_state_62 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_61 8192) normalized_61

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 63"
  out.flush

private theorem normalized_62 : combat_tickNormalized twoImp_state_62 8192 = twoImp_state_63 := by combat_kernel_close

private theorem actual_62 : twoImp_state_62.tickCombatV1 8192 = twoImp_state_63 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_62 8192) normalized_62

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 64"
  out.flush

private theorem normalized_63 : combat_tickNormalized twoImp_state_63 8192 = twoImp_state_64 := by combat_kernel_close

private theorem actual_63 : twoImp_state_63.tickCombatV1 8192 = twoImp_state_64 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_63 8192) normalized_63

/-- Complete checked transitions 61 through 64, with every prefix alive and error-free. -/
theorem twoImp_segment_006 : CombatSegment twoImp_state_60 twoImp_inputs_006 twoImp_state_64 := by
  doom_kernel_exact (combat_segment_cons twoImp_state_60 twoImp_state_61 twoImp_state_64 8192 [8192, 8192, 8192] actual_60 safe_60
    (combat_segment_cons twoImp_state_61 twoImp_state_62 twoImp_state_64 8192 [8192, 8192] actual_61 safe_61
    (combat_segment_cons twoImp_state_62 twoImp_state_63 twoImp_state_64 8192 [8192] actual_62 safe_62
    (combat_segment_cons twoImp_state_63 twoImp_state_64 twoImp_state_64 8192 [] actual_63 safe_63
    (combat_segment_nil twoImp_state_64 safe_64)))))

#print axioms twoImp_segment_006
end LeanDoomProofs
