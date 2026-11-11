import LeanDoomProofs.CombatData.Block013
import LeanDoomProofs.CombatData.Block012
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

private theorem safe_108 : combatSafe twoImp_state_108 := by unfold combatSafe; decide +kernel

private theorem safe_109 : combatSafe twoImp_state_109 := by unfold combatSafe; decide +kernel

private theorem safe_110 : combatSafe twoImp_state_110 := by unfold combatSafe; decide +kernel

private theorem safe_111 : combatSafe twoImp_state_111 := by unfold combatSafe; decide +kernel

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 109"
  out.flush

private theorem normalized_108 : combat_tickNormalized twoImp_state_108 18 = twoImp_state_109 := by combat_kernel_close

private theorem actual_108 : twoImp_state_108.tickCombatV1 18 = twoImp_state_109 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_108 18) normalized_108

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 110"
  out.flush

private theorem normalized_109 : combat_tickNormalized twoImp_state_109 18 = twoImp_state_110 := by combat_kernel_close

private theorem actual_109 : twoImp_state_109.tickCombatV1 18 = twoImp_state_110 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_109 18) normalized_109

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 111"
  out.flush

private theorem normalized_110 : combat_tickNormalized twoImp_state_110 18 = twoImp_state_111 := by combat_kernel_close

private theorem actual_110 : twoImp_state_110.tickCombatV1 18 = twoImp_state_111 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_110 18) normalized_110

/-- Complete checked transitions 109 through 111, with every prefix alive and error-free. -/
theorem twoImp_segment_013 : CombatSegment twoImp_state_108 twoImp_inputs_013 twoImp_state_111 := by
  doom_kernel_exact (combat_segment_cons twoImp_state_108 twoImp_state_109 twoImp_state_111 18 [18, 18] actual_108 safe_108
    (combat_segment_cons twoImp_state_109 twoImp_state_110 twoImp_state_111 18 [18] actual_109 safe_109
    (combat_segment_cons twoImp_state_110 twoImp_state_111 twoImp_state_111 18 [] actual_110 safe_110
    (combat_segment_nil twoImp_state_111 safe_111))))

#print axioms twoImp_segment_013
end LeanDoomProofs
