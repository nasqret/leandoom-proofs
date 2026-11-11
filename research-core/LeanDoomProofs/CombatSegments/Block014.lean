import LeanDoomProofs.CombatData.Block014
import LeanDoomProofs.CombatData.Block013
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

private theorem safe_111 : combatSafe twoImp_state_111 := by unfold combatSafe; decide +kernel

private theorem safe_112 : combatSafe twoImp_state_112 := by unfold combatSafe; decide +kernel

private theorem safe_113 : combatSafe twoImp_state_113 := by unfold combatSafe; decide +kernel

private theorem safe_114 : combatSafe twoImp_state_114 := by unfold combatSafe; decide +kernel

private theorem safe_115 : combatSafe twoImp_state_115 := by unfold combatSafe; decide +kernel

private theorem safe_116 : combatSafe twoImp_state_116 := by unfold combatSafe; decide +kernel

private theorem safe_117 : combatSafe twoImp_state_117 := by unfold combatSafe; decide +kernel

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 112"
  out.flush

private theorem normalized_111 : combat_tickNormalized twoImp_state_111 18 = twoImp_state_112 := by combat_kernel_close

private theorem actual_111 : twoImp_state_111.tickCombatV1 18 = twoImp_state_112 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_111 18) normalized_111

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 113"
  out.flush

private theorem normalized_112 : combat_tickNormalized twoImp_state_112 18 = twoImp_state_113 := by combat_kernel_close

private theorem actual_112 : twoImp_state_112.tickCombatV1 18 = twoImp_state_113 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_112 18) normalized_112

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 114"
  out.flush

private theorem normalized_113 : combat_tickNormalized twoImp_state_113 18 = twoImp_state_114 := by combat_kernel_close

private theorem actual_113 : twoImp_state_113.tickCombatV1 18 = twoImp_state_114 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_113 18) normalized_113

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 115"
  out.flush

private theorem normalized_114 : combat_tickNormalized twoImp_state_114 18 = twoImp_state_115 := by combat_kernel_close

private theorem actual_114 : twoImp_state_114.tickCombatV1 18 = twoImp_state_115 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_114 18) normalized_114

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 116"
  out.flush

private theorem normalized_115 : combat_tickNormalized twoImp_state_115 18 = twoImp_state_116 := by combat_kernel_close

private theorem actual_115 : twoImp_state_115.tickCombatV1 18 = twoImp_state_116 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_115 18) normalized_115

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 117"
  out.flush

private theorem normalized_116 : combat_tickNormalized twoImp_state_116 18 = twoImp_state_117 := by combat_kernel_close

private theorem actual_116 : twoImp_state_116.tickCombatV1 18 = twoImp_state_117 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_116 18) normalized_116

/-- Complete checked transitions 112 through 117, with every prefix alive and error-free. -/
theorem twoImp_segment_014 : CombatSegment twoImp_state_111 twoImp_inputs_014 twoImp_state_117 := by
  doom_kernel_exact (combat_segment_cons twoImp_state_111 twoImp_state_112 twoImp_state_117 18 [18, 18, 18, 18, 18] actual_111 safe_111
    (combat_segment_cons twoImp_state_112 twoImp_state_113 twoImp_state_117 18 [18, 18, 18, 18] actual_112 safe_112
    (combat_segment_cons twoImp_state_113 twoImp_state_114 twoImp_state_117 18 [18, 18, 18] actual_113 safe_113
    (combat_segment_cons twoImp_state_114 twoImp_state_115 twoImp_state_117 18 [18, 18] actual_114 safe_114
    (combat_segment_cons twoImp_state_115 twoImp_state_116 twoImp_state_117 18 [18] actual_115 safe_115
    (combat_segment_cons twoImp_state_116 twoImp_state_117 twoImp_state_117 18 [] actual_116 safe_116
    (combat_segment_nil twoImp_state_117 safe_117)))))))

#print axioms twoImp_segment_014
end LeanDoomProofs
