import LeanDoomProofs.CombatData.Block005
import LeanDoomProofs.CombatData.Block004
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

private theorem safe_48 : combatSafe twoImp_state_48 := by unfold combatSafe; decide +kernel

private theorem safe_49 : combatSafe twoImp_state_49 := by unfold combatSafe; decide +kernel

private theorem safe_50 : combatSafe twoImp_state_50 := by unfold combatSafe; decide +kernel

private theorem safe_51 : combatSafe twoImp_state_51 := by unfold combatSafe; decide +kernel

private theorem safe_52 : combatSafe twoImp_state_52 := by unfold combatSafe; decide +kernel

private theorem safe_53 : combatSafe twoImp_state_53 := by unfold combatSafe; decide +kernel

private theorem safe_54 : combatSafe twoImp_state_54 := by unfold combatSafe; decide +kernel

private theorem safe_55 : combatSafe twoImp_state_55 := by unfold combatSafe; decide +kernel

private theorem safe_56 : combatSafe twoImp_state_56 := by unfold combatSafe; decide +kernel

private theorem safe_57 : combatSafe twoImp_state_57 := by unfold combatSafe; decide +kernel

private theorem safe_58 : combatSafe twoImp_state_58 := by unfold combatSafe; decide +kernel

private theorem safe_59 : combatSafe twoImp_state_59 := by unfold combatSafe; decide +kernel

private theorem safe_60 : combatSafe twoImp_state_60 := by unfold combatSafe; decide +kernel

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 49"
  out.flush

private theorem normalized_48 : combat_tickNormalized twoImp_state_48 8192 = twoImp_state_49 := by combat_kernel_close

private theorem actual_48 : twoImp_state_48.tickCombatV1 8192 = twoImp_state_49 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_48 8192) normalized_48

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 50"
  out.flush

private theorem normalized_49 : combat_tickNormalized twoImp_state_49 8192 = twoImp_state_50 := by combat_kernel_close

private theorem actual_49 : twoImp_state_49.tickCombatV1 8192 = twoImp_state_50 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_49 8192) normalized_49

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 51"
  out.flush

private theorem normalized_50 : combat_tickNormalized twoImp_state_50 8192 = twoImp_state_51 := by combat_kernel_close

private theorem actual_50 : twoImp_state_50.tickCombatV1 8192 = twoImp_state_51 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_50 8192) normalized_50

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 52"
  out.flush

private theorem normalized_51 : combat_tickNormalized twoImp_state_51 8192 = twoImp_state_52 := by combat_kernel_close

private theorem actual_51 : twoImp_state_51.tickCombatV1 8192 = twoImp_state_52 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_51 8192) normalized_51

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 53"
  out.flush

private theorem normalized_52 : combat_tickNormalized twoImp_state_52 8192 = twoImp_state_53 := by combat_kernel_close

private theorem actual_52 : twoImp_state_52.tickCombatV1 8192 = twoImp_state_53 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_52 8192) normalized_52

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 54"
  out.flush

private theorem normalized_53 : combat_tickNormalized twoImp_state_53 8192 = twoImp_state_54 := by combat_kernel_close

private theorem actual_53 : twoImp_state_53.tickCombatV1 8192 = twoImp_state_54 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_53 8192) normalized_53

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 55"
  out.flush

private theorem normalized_54 : combat_tickNormalized twoImp_state_54 8192 = twoImp_state_55 := by combat_kernel_close

private theorem actual_54 : twoImp_state_54.tickCombatV1 8192 = twoImp_state_55 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_54 8192) normalized_54

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 56"
  out.flush

private theorem normalized_55 : combat_tickNormalized twoImp_state_55 8192 = twoImp_state_56 := by combat_kernel_close

private theorem actual_55 : twoImp_state_55.tickCombatV1 8192 = twoImp_state_56 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_55 8192) normalized_55

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 57"
  out.flush

private theorem normalized_56 : combat_tickNormalized twoImp_state_56 8192 = twoImp_state_57 := by combat_kernel_close

private theorem actual_56 : twoImp_state_56.tickCombatV1 8192 = twoImp_state_57 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_56 8192) normalized_56

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 58"
  out.flush

private theorem normalized_57 : combat_tickNormalized twoImp_state_57 8192 = twoImp_state_58 := by combat_kernel_close

private theorem actual_57 : twoImp_state_57.tickCombatV1 8192 = twoImp_state_58 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_57 8192) normalized_57

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 59"
  out.flush

private theorem normalized_58 : combat_tickNormalized twoImp_state_58 8192 = twoImp_state_59 := by combat_kernel_close

private theorem actual_58 : twoImp_state_58.tickCombatV1 8192 = twoImp_state_59 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_58 8192) normalized_58

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 60"
  out.flush

private theorem normalized_59 : combat_tickNormalized twoImp_state_59 8192 = twoImp_state_60 := by combat_kernel_close

private theorem actual_59 : twoImp_state_59.tickCombatV1 8192 = twoImp_state_60 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_59 8192) normalized_59

/-- Complete checked transitions 49 through 60, with every prefix alive and error-free. -/
theorem twoImp_segment_005 : CombatSegment twoImp_state_48 twoImp_inputs_005 twoImp_state_60 := by
  doom_kernel_exact (combat_segment_cons twoImp_state_48 twoImp_state_49 twoImp_state_60 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_48 safe_48
    (combat_segment_cons twoImp_state_49 twoImp_state_50 twoImp_state_60 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_49 safe_49
    (combat_segment_cons twoImp_state_50 twoImp_state_51 twoImp_state_60 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_50 safe_50
    (combat_segment_cons twoImp_state_51 twoImp_state_52 twoImp_state_60 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_51 safe_51
    (combat_segment_cons twoImp_state_52 twoImp_state_53 twoImp_state_60 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_52 safe_52
    (combat_segment_cons twoImp_state_53 twoImp_state_54 twoImp_state_60 8192 [8192, 8192, 8192, 8192, 8192, 8192] actual_53 safe_53
    (combat_segment_cons twoImp_state_54 twoImp_state_55 twoImp_state_60 8192 [8192, 8192, 8192, 8192, 8192] actual_54 safe_54
    (combat_segment_cons twoImp_state_55 twoImp_state_56 twoImp_state_60 8192 [8192, 8192, 8192, 8192] actual_55 safe_55
    (combat_segment_cons twoImp_state_56 twoImp_state_57 twoImp_state_60 8192 [8192, 8192, 8192] actual_56 safe_56
    (combat_segment_cons twoImp_state_57 twoImp_state_58 twoImp_state_60 8192 [8192, 8192] actual_57 safe_57
    (combat_segment_cons twoImp_state_58 twoImp_state_59 twoImp_state_60 8192 [8192] actual_58 safe_58
    (combat_segment_cons twoImp_state_59 twoImp_state_60 twoImp_state_60 8192 [] actual_59 safe_59
    (combat_segment_nil twoImp_state_60 safe_60)))))))))))))

#print axioms twoImp_segment_005
end LeanDoomProofs
