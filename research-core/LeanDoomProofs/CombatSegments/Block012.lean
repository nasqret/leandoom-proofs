import LeanDoomProofs.CombatData.Block012
import LeanDoomProofs.CombatData.Block011
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

private theorem safe_101 : combatSafe twoImp_state_101 := by unfold combatSafe; decide +kernel

private theorem safe_102 : combatSafe twoImp_state_102 := by unfold combatSafe; decide +kernel

private theorem safe_103 : combatSafe twoImp_state_103 := by unfold combatSafe; decide +kernel

private theorem safe_104 : combatSafe twoImp_state_104 := by unfold combatSafe; decide +kernel

private theorem safe_105 : combatSafe twoImp_state_105 := by unfold combatSafe; decide +kernel

private theorem safe_106 : combatSafe twoImp_state_106 := by unfold combatSafe; decide +kernel

private theorem safe_107 : combatSafe twoImp_state_107 := by unfold combatSafe; decide +kernel

private theorem safe_108 : combatSafe twoImp_state_108 := by unfold combatSafe; decide +kernel

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 102"
  out.flush

private theorem normalized_101 : combat_tickNormalized twoImp_state_101 18 = twoImp_state_102 := by combat_kernel_close

private theorem actual_101 : twoImp_state_101.tickCombatV1 18 = twoImp_state_102 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_101 18) normalized_101

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 103"
  out.flush

private theorem normalized_102 : combat_tickNormalized twoImp_state_102 18 = twoImp_state_103 := by combat_kernel_close

private theorem actual_102 : twoImp_state_102.tickCombatV1 18 = twoImp_state_103 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_102 18) normalized_102

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 104"
  out.flush

private theorem normalized_103 : combat_tickNormalized twoImp_state_103 18 = twoImp_state_104 := by combat_kernel_close

private theorem actual_103 : twoImp_state_103.tickCombatV1 18 = twoImp_state_104 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_103 18) normalized_103

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 105"
  out.flush

private theorem normalized_104 : combat_tickNormalized twoImp_state_104 18 = twoImp_state_105 := by combat_kernel_close

private theorem actual_104 : twoImp_state_104.tickCombatV1 18 = twoImp_state_105 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_104 18) normalized_104

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 106"
  out.flush

private theorem normalized_105 : combat_tickNormalized twoImp_state_105 18 = twoImp_state_106 := by combat_kernel_close

private theorem actual_105 : twoImp_state_105.tickCombatV1 18 = twoImp_state_106 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_105 18) normalized_105

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 107"
  out.flush

private theorem normalized_106 : combat_tickNormalized twoImp_state_106 18 = twoImp_state_107 := by combat_kernel_close

private theorem actual_106 : twoImp_state_106.tickCombatV1 18 = twoImp_state_107 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_106 18) normalized_106

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 108"
  out.flush

private theorem normalized_107 : combat_tickNormalized twoImp_state_107 18 = twoImp_state_108 := by combat_kernel_close

private theorem actual_107 : twoImp_state_107.tickCombatV1 18 = twoImp_state_108 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_107 18) normalized_107

/-- Complete checked transitions 102 through 108, with every prefix alive and error-free. -/
theorem twoImp_segment_012 : CombatSegment twoImp_state_101 twoImp_inputs_012 twoImp_state_108 := by
  doom_kernel_exact (combat_segment_cons twoImp_state_101 twoImp_state_102 twoImp_state_108 18 [18, 18, 18, 18, 18, 18] actual_101 safe_101
    (combat_segment_cons twoImp_state_102 twoImp_state_103 twoImp_state_108 18 [18, 18, 18, 18, 18] actual_102 safe_102
    (combat_segment_cons twoImp_state_103 twoImp_state_104 twoImp_state_108 18 [18, 18, 18, 18] actual_103 safe_103
    (combat_segment_cons twoImp_state_104 twoImp_state_105 twoImp_state_108 18 [18, 18, 18] actual_104 safe_104
    (combat_segment_cons twoImp_state_105 twoImp_state_106 twoImp_state_108 18 [18, 18] actual_105 safe_105
    (combat_segment_cons twoImp_state_106 twoImp_state_107 twoImp_state_108 18 [18] actual_106 safe_106
    (combat_segment_cons twoImp_state_107 twoImp_state_108 twoImp_state_108 18 [] actual_107 safe_107
    (combat_segment_nil twoImp_state_108 safe_108))))))))

#print axioms twoImp_segment_012
end LeanDoomProofs
