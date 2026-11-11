import LeanDoomProofs.CombatData.Block000
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

private theorem safe_0 : combatSafe twoImp_state_0 := by unfold combatSafe; decide +kernel

private theorem safe_1 : combatSafe twoImp_state_1 := by unfold combatSafe; decide +kernel

private theorem safe_2 : combatSafe twoImp_state_2 := by unfold combatSafe; decide +kernel

private theorem safe_3 : combatSafe twoImp_state_3 := by unfold combatSafe; decide +kernel

private theorem safe_4 : combatSafe twoImp_state_4 := by unfold combatSafe; decide +kernel

private theorem safe_5 : combatSafe twoImp_state_5 := by unfold combatSafe; decide +kernel

private theorem safe_6 : combatSafe twoImp_state_6 := by unfold combatSafe; decide +kernel

private theorem safe_7 : combatSafe twoImp_state_7 := by unfold combatSafe; decide +kernel

private theorem safe_8 : combatSafe twoImp_state_8 := by unfold combatSafe; decide +kernel

private theorem safe_9 : combatSafe twoImp_state_9 := by unfold combatSafe; decide +kernel

private theorem safe_10 : combatSafe twoImp_state_10 := by unfold combatSafe; decide +kernel

private theorem safe_11 : combatSafe twoImp_state_11 := by unfold combatSafe; decide +kernel

private theorem safe_12 : combatSafe twoImp_state_12 := by unfold combatSafe; decide +kernel

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 1"
  out.flush

private theorem normalized_0 : combat_tickNormalized twoImp_state_0 0 = twoImp_state_1 := by combat_kernel_close

private theorem actual_0 : twoImp_state_0.tickCombatV1 0 = twoImp_state_1 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_0 0) normalized_0

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 2"
  out.flush

private theorem normalized_1 : combat_tickNormalized twoImp_state_1 0 = twoImp_state_2 := by combat_kernel_close

private theorem actual_1 : twoImp_state_1.tickCombatV1 0 = twoImp_state_2 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_1 0) normalized_1

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 3"
  out.flush

private theorem normalized_2 : combat_tickNormalized twoImp_state_2 0 = twoImp_state_3 := by combat_kernel_close

private theorem actual_2 : twoImp_state_2.tickCombatV1 0 = twoImp_state_3 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_2 0) normalized_2

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 4"
  out.flush

private theorem normalized_3 : combat_tickNormalized twoImp_state_3 0 = twoImp_state_4 := by combat_kernel_close

private theorem actual_3 : twoImp_state_3.tickCombatV1 0 = twoImp_state_4 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_3 0) normalized_3

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 5"
  out.flush

private theorem normalized_4 : combat_tickNormalized twoImp_state_4 0 = twoImp_state_5 := by combat_kernel_close

private theorem actual_4 : twoImp_state_4.tickCombatV1 0 = twoImp_state_5 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_4 0) normalized_4

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 6"
  out.flush

private theorem normalized_5 : combat_tickNormalized twoImp_state_5 0 = twoImp_state_6 := by combat_kernel_close

private theorem actual_5 : twoImp_state_5.tickCombatV1 0 = twoImp_state_6 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_5 0) normalized_5

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 7"
  out.flush

private theorem normalized_6 : combat_tickNormalized twoImp_state_6 0 = twoImp_state_7 := by combat_kernel_close

private theorem actual_6 : twoImp_state_6.tickCombatV1 0 = twoImp_state_7 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_6 0) normalized_6

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 8"
  out.flush

private theorem normalized_7 : combat_tickNormalized twoImp_state_7 0 = twoImp_state_8 := by combat_kernel_close

private theorem actual_7 : twoImp_state_7.tickCombatV1 0 = twoImp_state_8 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_7 0) normalized_7

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 9"
  out.flush

private theorem normalized_8 : combat_tickNormalized twoImp_state_8 0 = twoImp_state_9 := by combat_kernel_close

private theorem actual_8 : twoImp_state_8.tickCombatV1 0 = twoImp_state_9 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_8 0) normalized_8

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 10"
  out.flush

private theorem normalized_9 : combat_tickNormalized twoImp_state_9 0 = twoImp_state_10 := by combat_kernel_close

private theorem actual_9 : twoImp_state_9.tickCombatV1 0 = twoImp_state_10 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_9 0) normalized_9

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 11"
  out.flush

private theorem normalized_10 : combat_tickNormalized twoImp_state_10 0 = twoImp_state_11 := by combat_kernel_close

private theorem actual_10 : twoImp_state_10.tickCombatV1 0 = twoImp_state_11 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_10 0) normalized_10

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 12"
  out.flush

private theorem normalized_11 : combat_tickNormalized twoImp_state_11 0 = twoImp_state_12 := by combat_kernel_close

private theorem actual_11 : twoImp_state_11.tickCombatV1 0 = twoImp_state_12 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_11 0) normalized_11

/-- Complete checked transitions 1 through 12, with every prefix alive and error-free. -/
theorem twoImp_segment_000 : CombatSegment twoImp_state_0 twoImp_inputs_000 twoImp_state_12 := by
  doom_kernel_exact (combat_segment_cons twoImp_state_0 twoImp_state_1 twoImp_state_12 0 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] actual_0 safe_0
    (combat_segment_cons twoImp_state_1 twoImp_state_2 twoImp_state_12 0 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0] actual_1 safe_1
    (combat_segment_cons twoImp_state_2 twoImp_state_3 twoImp_state_12 0 [0, 0, 0, 0, 0, 0, 0, 0, 0] actual_2 safe_2
    (combat_segment_cons twoImp_state_3 twoImp_state_4 twoImp_state_12 0 [0, 0, 0, 0, 0, 0, 0, 0] actual_3 safe_3
    (combat_segment_cons twoImp_state_4 twoImp_state_5 twoImp_state_12 0 [0, 0, 0, 0, 0, 0, 0] actual_4 safe_4
    (combat_segment_cons twoImp_state_5 twoImp_state_6 twoImp_state_12 0 [0, 0, 0, 0, 0, 0] actual_5 safe_5
    (combat_segment_cons twoImp_state_6 twoImp_state_7 twoImp_state_12 0 [0, 0, 0, 0, 0] actual_6 safe_6
    (combat_segment_cons twoImp_state_7 twoImp_state_8 twoImp_state_12 0 [0, 0, 0, 0] actual_7 safe_7
    (combat_segment_cons twoImp_state_8 twoImp_state_9 twoImp_state_12 0 [0, 0, 0] actual_8 safe_8
    (combat_segment_cons twoImp_state_9 twoImp_state_10 twoImp_state_12 0 [0, 0] actual_9 safe_9
    (combat_segment_cons twoImp_state_10 twoImp_state_11 twoImp_state_12 0 [0] actual_10 safe_10
    (combat_segment_cons twoImp_state_11 twoImp_state_12 twoImp_state_12 0 [] actual_11 safe_11
    (combat_segment_nil twoImp_state_12 safe_12)))))))))))))

#print axioms twoImp_segment_000
end LeanDoomProofs
