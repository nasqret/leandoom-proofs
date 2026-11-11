import LeanDoomProofs.CombatData.Block001
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

private theorem safe_12 : combatSafe twoImp_state_12 := by unfold combatSafe; decide +kernel

private theorem safe_13 : combatSafe twoImp_state_13 := by unfold combatSafe; decide +kernel

private theorem safe_14 : combatSafe twoImp_state_14 := by unfold combatSafe; decide +kernel

private theorem safe_15 : combatSafe twoImp_state_15 := by unfold combatSafe; decide +kernel

private theorem safe_16 : combatSafe twoImp_state_16 := by unfold combatSafe; decide +kernel

private theorem safe_17 : combatSafe twoImp_state_17 := by unfold combatSafe; decide +kernel

private theorem safe_18 : combatSafe twoImp_state_18 := by unfold combatSafe; decide +kernel

private theorem safe_19 : combatSafe twoImp_state_19 := by unfold combatSafe; decide +kernel

private theorem safe_20 : combatSafe twoImp_state_20 := by unfold combatSafe; decide +kernel

private theorem safe_21 : combatSafe twoImp_state_21 := by unfold combatSafe; decide +kernel

private theorem safe_22 : combatSafe twoImp_state_22 := by unfold combatSafe; decide +kernel

private theorem safe_23 : combatSafe twoImp_state_23 := by unfold combatSafe; decide +kernel

private theorem safe_24 : combatSafe twoImp_state_24 := by unfold combatSafe; decide +kernel

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 13"
  out.flush

private theorem normalized_12 : combat_tickNormalized twoImp_state_12 0 = twoImp_state_13 := by combat_kernel_close

private theorem actual_12 : twoImp_state_12.tickCombatV1 0 = twoImp_state_13 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_12 0) normalized_12

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 14"
  out.flush

private theorem normalized_13 : combat_tickNormalized twoImp_state_13 0 = twoImp_state_14 := by combat_kernel_close

private theorem actual_13 : twoImp_state_13.tickCombatV1 0 = twoImp_state_14 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_13 0) normalized_13

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 15"
  out.flush

private theorem normalized_14 : combat_tickNormalized twoImp_state_14 0 = twoImp_state_15 := by combat_kernel_close

private theorem actual_14 : twoImp_state_14.tickCombatV1 0 = twoImp_state_15 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_14 0) normalized_14

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 16"
  out.flush

private theorem normalized_15 : combat_tickNormalized twoImp_state_15 0 = twoImp_state_16 := by combat_kernel_close

private theorem actual_15 : twoImp_state_15.tickCombatV1 0 = twoImp_state_16 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_15 0) normalized_15

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 17"
  out.flush

private theorem normalized_16 : combat_tickNormalized twoImp_state_16 0 = twoImp_state_17 := by combat_kernel_close

private theorem actual_16 : twoImp_state_16.tickCombatV1 0 = twoImp_state_17 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_16 0) normalized_16

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 18"
  out.flush

private theorem normalized_17 : combat_tickNormalized twoImp_state_17 0 = twoImp_state_18 := by combat_kernel_close

private theorem actual_17 : twoImp_state_17.tickCombatV1 0 = twoImp_state_18 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_17 0) normalized_17

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 19"
  out.flush

private theorem normalized_18 : combat_tickNormalized twoImp_state_18 0 = twoImp_state_19 := by combat_kernel_close

private theorem actual_18 : twoImp_state_18.tickCombatV1 0 = twoImp_state_19 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_18 0) normalized_18

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 20"
  out.flush

private theorem normalized_19 : combat_tickNormalized twoImp_state_19 0 = twoImp_state_20 := by combat_kernel_close

private theorem actual_19 : twoImp_state_19.tickCombatV1 0 = twoImp_state_20 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_19 0) normalized_19

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 21"
  out.flush

private theorem normalized_20 : combat_tickNormalized twoImp_state_20 0 = twoImp_state_21 := by combat_kernel_close

private theorem actual_20 : twoImp_state_20.tickCombatV1 0 = twoImp_state_21 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_20 0) normalized_20

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 22"
  out.flush

private theorem normalized_21 : combat_tickNormalized twoImp_state_21 0 = twoImp_state_22 := by combat_kernel_close

private theorem actual_21 : twoImp_state_21.tickCombatV1 0 = twoImp_state_22 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_21 0) normalized_21

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 23"
  out.flush

private theorem normalized_22 : combat_tickNormalized twoImp_state_22 0 = twoImp_state_23 := by combat_kernel_close

private theorem actual_22 : twoImp_state_22.tickCombatV1 0 = twoImp_state_23 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_22 0) normalized_22

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 24"
  out.flush

private theorem normalized_23 : combat_tickNormalized twoImp_state_23 0 = twoImp_state_24 := by combat_kernel_close

private theorem actual_23 : twoImp_state_23.tickCombatV1 0 = twoImp_state_24 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_23 0) normalized_23

/-- Complete checked transitions 13 through 24, with every prefix alive and error-free. -/
theorem twoImp_segment_001 : CombatSegment twoImp_state_12 twoImp_inputs_001 twoImp_state_24 := by
  doom_kernel_exact (combat_segment_cons twoImp_state_12 twoImp_state_13 twoImp_state_24 0 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] actual_12 safe_12
    (combat_segment_cons twoImp_state_13 twoImp_state_14 twoImp_state_24 0 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0] actual_13 safe_13
    (combat_segment_cons twoImp_state_14 twoImp_state_15 twoImp_state_24 0 [0, 0, 0, 0, 0, 0, 0, 0, 0] actual_14 safe_14
    (combat_segment_cons twoImp_state_15 twoImp_state_16 twoImp_state_24 0 [0, 0, 0, 0, 0, 0, 0, 0] actual_15 safe_15
    (combat_segment_cons twoImp_state_16 twoImp_state_17 twoImp_state_24 0 [0, 0, 0, 0, 0, 0, 0] actual_16 safe_16
    (combat_segment_cons twoImp_state_17 twoImp_state_18 twoImp_state_24 0 [0, 0, 0, 0, 0, 0] actual_17 safe_17
    (combat_segment_cons twoImp_state_18 twoImp_state_19 twoImp_state_24 0 [0, 0, 0, 0, 0] actual_18 safe_18
    (combat_segment_cons twoImp_state_19 twoImp_state_20 twoImp_state_24 0 [0, 0, 0, 0] actual_19 safe_19
    (combat_segment_cons twoImp_state_20 twoImp_state_21 twoImp_state_24 0 [0, 0, 0] actual_20 safe_20
    (combat_segment_cons twoImp_state_21 twoImp_state_22 twoImp_state_24 0 [0, 0] actual_21 safe_21
    (combat_segment_cons twoImp_state_22 twoImp_state_23 twoImp_state_24 0 [0] actual_22 safe_22
    (combat_segment_cons twoImp_state_23 twoImp_state_24 twoImp_state_24 0 [] actual_23 safe_23
    (combat_segment_nil twoImp_state_24 safe_24)))))))))))))

#print axioms twoImp_segment_001
end LeanDoomProofs
