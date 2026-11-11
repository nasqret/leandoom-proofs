import LeanDoomProofs.CombatData.Block004
import LeanDoomProofs.CombatData.Block003
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

private theorem safe_36 : combatSafe twoImp_state_36 := by unfold combatSafe; decide +kernel

private theorem safe_37 : combatSafe twoImp_state_37 := by unfold combatSafe; decide +kernel

private theorem safe_38 : combatSafe twoImp_state_38 := by unfold combatSafe; decide +kernel

private theorem safe_39 : combatSafe twoImp_state_39 := by unfold combatSafe; decide +kernel

private theorem safe_40 : combatSafe twoImp_state_40 := by unfold combatSafe; decide +kernel

private theorem safe_41 : combatSafe twoImp_state_41 := by unfold combatSafe; decide +kernel

private theorem safe_42 : combatSafe twoImp_state_42 := by unfold combatSafe; decide +kernel

private theorem safe_43 : combatSafe twoImp_state_43 := by unfold combatSafe; decide +kernel

private theorem safe_44 : combatSafe twoImp_state_44 := by unfold combatSafe; decide +kernel

private theorem safe_45 : combatSafe twoImp_state_45 := by unfold combatSafe; decide +kernel

private theorem safe_46 : combatSafe twoImp_state_46 := by unfold combatSafe; decide +kernel

private theorem safe_47 : combatSafe twoImp_state_47 := by unfold combatSafe; decide +kernel

private theorem safe_48 : combatSafe twoImp_state_48 := by unfold combatSafe; decide +kernel

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 37"
  out.flush

private theorem normalized_36 : combat_tickNormalized twoImp_state_36 8192 = twoImp_state_37 := by combat_kernel_close

private theorem actual_36 : twoImp_state_36.tickCombatV1 8192 = twoImp_state_37 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_36 8192) normalized_36

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 38"
  out.flush

private theorem normalized_37 : combat_tickNormalized twoImp_state_37 8192 = twoImp_state_38 := by combat_kernel_close

private theorem actual_37 : twoImp_state_37.tickCombatV1 8192 = twoImp_state_38 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_37 8192) normalized_37

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 39"
  out.flush

private theorem normalized_38 : combat_tickNormalized twoImp_state_38 8192 = twoImp_state_39 := by combat_kernel_close

private theorem actual_38 : twoImp_state_38.tickCombatV1 8192 = twoImp_state_39 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_38 8192) normalized_38

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 40"
  out.flush

private theorem normalized_39 : combat_tickNormalized twoImp_state_39 8192 = twoImp_state_40 := by combat_kernel_close

private theorem actual_39 : twoImp_state_39.tickCombatV1 8192 = twoImp_state_40 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_39 8192) normalized_39

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 41"
  out.flush

private theorem normalized_40 : combat_tickNormalized twoImp_state_40 8192 = twoImp_state_41 := by combat_kernel_close

private theorem actual_40 : twoImp_state_40.tickCombatV1 8192 = twoImp_state_41 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_40 8192) normalized_40

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 42"
  out.flush

private theorem normalized_41 : combat_tickNormalized twoImp_state_41 8192 = twoImp_state_42 := by combat_kernel_close

private theorem actual_41 : twoImp_state_41.tickCombatV1 8192 = twoImp_state_42 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_41 8192) normalized_41

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 43"
  out.flush

private theorem normalized_42 : combat_tickNormalized twoImp_state_42 8192 = twoImp_state_43 := by combat_kernel_close

private theorem actual_42 : twoImp_state_42.tickCombatV1 8192 = twoImp_state_43 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_42 8192) normalized_42

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 44"
  out.flush

private theorem normalized_43 : combat_tickNormalized twoImp_state_43 8192 = twoImp_state_44 := by combat_kernel_close

private theorem actual_43 : twoImp_state_43.tickCombatV1 8192 = twoImp_state_44 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_43 8192) normalized_43

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 45"
  out.flush

private theorem normalized_44 : combat_tickNormalized twoImp_state_44 8192 = twoImp_state_45 := by combat_kernel_close

private theorem actual_44 : twoImp_state_44.tickCombatV1 8192 = twoImp_state_45 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_44 8192) normalized_44

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 46"
  out.flush

private theorem normalized_45 : combat_tickNormalized twoImp_state_45 8192 = twoImp_state_46 := by combat_kernel_close

private theorem actual_45 : twoImp_state_45.tickCombatV1 8192 = twoImp_state_46 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_45 8192) normalized_45

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 47"
  out.flush

private theorem normalized_46 : combat_tickNormalized twoImp_state_46 8192 = twoImp_state_47 := by combat_kernel_close

private theorem actual_46 : twoImp_state_46.tickCombatV1 8192 = twoImp_state_47 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_46 8192) normalized_46

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 48"
  out.flush

private theorem normalized_47 : combat_tickNormalized twoImp_state_47 8192 = twoImp_state_48 := by combat_kernel_close

private theorem actual_47 : twoImp_state_47.tickCombatV1 8192 = twoImp_state_48 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_47 8192) normalized_47

/-- Complete checked transitions 37 through 48, with every prefix alive and error-free. -/
theorem twoImp_segment_004 : CombatSegment twoImp_state_36 twoImp_inputs_004 twoImp_state_48 := by
  doom_kernel_exact (combat_segment_cons twoImp_state_36 twoImp_state_37 twoImp_state_48 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_36 safe_36
    (combat_segment_cons twoImp_state_37 twoImp_state_38 twoImp_state_48 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_37 safe_37
    (combat_segment_cons twoImp_state_38 twoImp_state_39 twoImp_state_48 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_38 safe_38
    (combat_segment_cons twoImp_state_39 twoImp_state_40 twoImp_state_48 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_39 safe_39
    (combat_segment_cons twoImp_state_40 twoImp_state_41 twoImp_state_48 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_40 safe_40
    (combat_segment_cons twoImp_state_41 twoImp_state_42 twoImp_state_48 8192 [8192, 8192, 8192, 8192, 8192, 8192] actual_41 safe_41
    (combat_segment_cons twoImp_state_42 twoImp_state_43 twoImp_state_48 8192 [8192, 8192, 8192, 8192, 8192] actual_42 safe_42
    (combat_segment_cons twoImp_state_43 twoImp_state_44 twoImp_state_48 8192 [8192, 8192, 8192, 8192] actual_43 safe_43
    (combat_segment_cons twoImp_state_44 twoImp_state_45 twoImp_state_48 8192 [8192, 8192, 8192] actual_44 safe_44
    (combat_segment_cons twoImp_state_45 twoImp_state_46 twoImp_state_48 8192 [8192, 8192] actual_45 safe_45
    (combat_segment_cons twoImp_state_46 twoImp_state_47 twoImp_state_48 8192 [8192] actual_46 safe_46
    (combat_segment_cons twoImp_state_47 twoImp_state_48 twoImp_state_48 8192 [] actual_47 safe_47
    (combat_segment_nil twoImp_state_48 safe_48)))))))))))))

#print axioms twoImp_segment_004
end LeanDoomProofs
