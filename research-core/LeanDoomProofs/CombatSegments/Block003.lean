import LeanDoomProofs.CombatData.Block003
import LeanDoomProofs.CombatData.Block002
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

private theorem safe_26 : combatSafe twoImp_state_26 := by unfold combatSafe; decide +kernel

private theorem safe_27 : combatSafe twoImp_state_27 := by unfold combatSafe; decide +kernel

private theorem safe_28 : combatSafe twoImp_state_28 := by unfold combatSafe; decide +kernel

private theorem safe_29 : combatSafe twoImp_state_29 := by unfold combatSafe; decide +kernel

private theorem safe_30 : combatSafe twoImp_state_30 := by unfold combatSafe; decide +kernel

private theorem safe_31 : combatSafe twoImp_state_31 := by unfold combatSafe; decide +kernel

private theorem safe_32 : combatSafe twoImp_state_32 := by unfold combatSafe; decide +kernel

private theorem safe_33 : combatSafe twoImp_state_33 := by unfold combatSafe; decide +kernel

private theorem safe_34 : combatSafe twoImp_state_34 := by unfold combatSafe; decide +kernel

private theorem safe_35 : combatSafe twoImp_state_35 := by unfold combatSafe; decide +kernel

private theorem safe_36 : combatSafe twoImp_state_36 := by unfold combatSafe; decide +kernel

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 27"
  out.flush

private theorem normalized_26 : combat_tickNormalized twoImp_state_26 8192 = twoImp_state_27 := by combat_kernel_close

private theorem actual_26 : twoImp_state_26.tickCombatV1 8192 = twoImp_state_27 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_26 8192) normalized_26

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 28"
  out.flush

private theorem normalized_27 : combat_tickNormalized twoImp_state_27 8192 = twoImp_state_28 := by combat_kernel_close

private theorem actual_27 : twoImp_state_27.tickCombatV1 8192 = twoImp_state_28 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_27 8192) normalized_27

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 29"
  out.flush

private theorem normalized_28 : combat_tickNormalized twoImp_state_28 8192 = twoImp_state_29 := by combat_kernel_close

private theorem actual_28 : twoImp_state_28.tickCombatV1 8192 = twoImp_state_29 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_28 8192) normalized_28

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 30"
  out.flush

private theorem normalized_29 : combat_tickNormalized twoImp_state_29 8192 = twoImp_state_30 := by combat_kernel_close

private theorem actual_29 : twoImp_state_29.tickCombatV1 8192 = twoImp_state_30 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_29 8192) normalized_29

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 31"
  out.flush

private theorem normalized_30 : combat_tickNormalized twoImp_state_30 8192 = twoImp_state_31 := by combat_kernel_close

private theorem actual_30 : twoImp_state_30.tickCombatV1 8192 = twoImp_state_31 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_30 8192) normalized_30

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 32"
  out.flush

private theorem normalized_31 : combat_tickNormalized twoImp_state_31 8192 = twoImp_state_32 := by combat_kernel_close

private theorem actual_31 : twoImp_state_31.tickCombatV1 8192 = twoImp_state_32 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_31 8192) normalized_31

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 33"
  out.flush

private theorem normalized_32 : combat_tickNormalized twoImp_state_32 8192 = twoImp_state_33 := by combat_kernel_close

private theorem actual_32 : twoImp_state_32.tickCombatV1 8192 = twoImp_state_33 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_32 8192) normalized_32

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 34"
  out.flush

private theorem normalized_33 : combat_tickNormalized twoImp_state_33 8192 = twoImp_state_34 := by combat_kernel_close

private theorem actual_33 : twoImp_state_33.tickCombatV1 8192 = twoImp_state_34 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_33 8192) normalized_33

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 35"
  out.flush

private theorem normalized_34 : combat_tickNormalized twoImp_state_34 8192 = twoImp_state_35 := by combat_kernel_close

private theorem actual_34 : twoImp_state_34.tickCombatV1 8192 = twoImp_state_35 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_34 8192) normalized_34

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 36"
  out.flush

private theorem normalized_35 : combat_tickNormalized twoImp_state_35 8192 = twoImp_state_36 := by combat_kernel_close

private theorem actual_35 : twoImp_state_35.tickCombatV1 8192 = twoImp_state_36 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_35 8192) normalized_35

/-- Complete checked transitions 27 through 36, with every prefix alive and error-free. -/
theorem twoImp_segment_003 : CombatSegment twoImp_state_26 twoImp_inputs_003 twoImp_state_36 := by
  doom_kernel_exact (combat_segment_cons twoImp_state_26 twoImp_state_27 twoImp_state_36 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_26 safe_26
    (combat_segment_cons twoImp_state_27 twoImp_state_28 twoImp_state_36 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_27 safe_27
    (combat_segment_cons twoImp_state_28 twoImp_state_29 twoImp_state_36 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_28 safe_28
    (combat_segment_cons twoImp_state_29 twoImp_state_30 twoImp_state_36 8192 [8192, 8192, 8192, 8192, 8192, 8192] actual_29 safe_29
    (combat_segment_cons twoImp_state_30 twoImp_state_31 twoImp_state_36 8192 [8192, 8192, 8192, 8192, 8192] actual_30 safe_30
    (combat_segment_cons twoImp_state_31 twoImp_state_32 twoImp_state_36 8192 [8192, 8192, 8192, 8192] actual_31 safe_31
    (combat_segment_cons twoImp_state_32 twoImp_state_33 twoImp_state_36 8192 [8192, 8192, 8192] actual_32 safe_32
    (combat_segment_cons twoImp_state_33 twoImp_state_34 twoImp_state_36 8192 [8192, 8192] actual_33 safe_33
    (combat_segment_cons twoImp_state_34 twoImp_state_35 twoImp_state_36 8192 [8192] actual_34 safe_34
    (combat_segment_cons twoImp_state_35 twoImp_state_36 twoImp_state_36 8192 [] actual_35 safe_35
    (combat_segment_nil twoImp_state_36 safe_36)))))))))))

#print axioms twoImp_segment_003
end LeanDoomProofs
