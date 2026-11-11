import LeanDoomProofs.CombatData.Block008
import LeanDoomProofs.CombatData.Block007
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

private theorem safe_72 : combatSafe twoImp_state_72 := by unfold combatSafe; decide +kernel

private theorem safe_73 : combatSafe twoImp_state_73 := by unfold combatSafe; decide +kernel

private theorem safe_74 : combatSafe twoImp_state_74 := by unfold combatSafe; decide +kernel

private theorem safe_75 : combatSafe twoImp_state_75 := by unfold combatSafe; decide +kernel

private theorem safe_76 : combatSafe twoImp_state_76 := by unfold combatSafe; decide +kernel

private theorem safe_77 : combatSafe twoImp_state_77 := by unfold combatSafe; decide +kernel

private theorem safe_78 : combatSafe twoImp_state_78 := by unfold combatSafe; decide +kernel

private theorem safe_79 : combatSafe twoImp_state_79 := by unfold combatSafe; decide +kernel

private theorem safe_80 : combatSafe twoImp_state_80 := by unfold combatSafe; decide +kernel

private theorem safe_81 : combatSafe twoImp_state_81 := by unfold combatSafe; decide +kernel

private theorem safe_82 : combatSafe twoImp_state_82 := by unfold combatSafe; decide +kernel

private theorem safe_83 : combatSafe twoImp_state_83 := by unfold combatSafe; decide +kernel

private theorem safe_84 : combatSafe twoImp_state_84 := by unfold combatSafe; decide +kernel

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 73"
  out.flush

private theorem normalized_72 : combat_tickNormalized twoImp_state_72 8192 = twoImp_state_73 := by combat_kernel_close

private theorem actual_72 : twoImp_state_72.tickCombatV1 8192 = twoImp_state_73 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_72 8192) normalized_72

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 74"
  out.flush

private theorem normalized_73 : combat_tickNormalized twoImp_state_73 8192 = twoImp_state_74 := by combat_kernel_close

private theorem actual_73 : twoImp_state_73.tickCombatV1 8192 = twoImp_state_74 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_73 8192) normalized_73

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 75"
  out.flush

private theorem normalized_74 : combat_tickNormalized twoImp_state_74 8192 = twoImp_state_75 := by combat_kernel_close

private theorem actual_74 : twoImp_state_74.tickCombatV1 8192 = twoImp_state_75 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_74 8192) normalized_74

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 76"
  out.flush

private theorem normalized_75 : combat_tickNormalized twoImp_state_75 8192 = twoImp_state_76 := by combat_kernel_close

private theorem actual_75 : twoImp_state_75.tickCombatV1 8192 = twoImp_state_76 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_75 8192) normalized_75

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 77"
  out.flush

private theorem normalized_76 : combat_tickNormalized twoImp_state_76 8192 = twoImp_state_77 := by combat_kernel_close

private theorem actual_76 : twoImp_state_76.tickCombatV1 8192 = twoImp_state_77 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_76 8192) normalized_76

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 78"
  out.flush

private theorem normalized_77 : combat_tickNormalized twoImp_state_77 8192 = twoImp_state_78 := by combat_kernel_close

private theorem actual_77 : twoImp_state_77.tickCombatV1 8192 = twoImp_state_78 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_77 8192) normalized_77

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 79"
  out.flush

private theorem normalized_78 : combat_tickNormalized twoImp_state_78 8192 = twoImp_state_79 := by combat_kernel_close

private theorem actual_78 : twoImp_state_78.tickCombatV1 8192 = twoImp_state_79 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_78 8192) normalized_78

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 80"
  out.flush

private theorem normalized_79 : combat_tickNormalized twoImp_state_79 8192 = twoImp_state_80 := by combat_kernel_close

private theorem actual_79 : twoImp_state_79.tickCombatV1 8192 = twoImp_state_80 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_79 8192) normalized_79

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 81"
  out.flush

private theorem normalized_80 : combat_tickNormalized twoImp_state_80 8192 = twoImp_state_81 := by combat_kernel_close

private theorem actual_80 : twoImp_state_80.tickCombatV1 8192 = twoImp_state_81 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_80 8192) normalized_80

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 82"
  out.flush

private theorem normalized_81 : combat_tickNormalized twoImp_state_81 8192 = twoImp_state_82 := by combat_kernel_close

private theorem actual_81 : twoImp_state_81.tickCombatV1 8192 = twoImp_state_82 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_81 8192) normalized_81

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 83"
  out.flush

private theorem normalized_82 : combat_tickNormalized twoImp_state_82 8192 = twoImp_state_83 := by combat_kernel_close

private theorem actual_82 : twoImp_state_82.tickCombatV1 8192 = twoImp_state_83 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_82 8192) normalized_82

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 84"
  out.flush

private theorem normalized_83 : combat_tickNormalized twoImp_state_83 8192 = twoImp_state_84 := by combat_kernel_close

private theorem actual_83 : twoImp_state_83.tickCombatV1 8192 = twoImp_state_84 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_83 8192) normalized_83

/-- Complete checked transitions 73 through 84, with every prefix alive and error-free. -/
theorem twoImp_segment_008 : CombatSegment twoImp_state_72 twoImp_inputs_008 twoImp_state_84 := by
  doom_kernel_exact (combat_segment_cons twoImp_state_72 twoImp_state_73 twoImp_state_84 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_72 safe_72
    (combat_segment_cons twoImp_state_73 twoImp_state_74 twoImp_state_84 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_73 safe_73
    (combat_segment_cons twoImp_state_74 twoImp_state_75 twoImp_state_84 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_74 safe_74
    (combat_segment_cons twoImp_state_75 twoImp_state_76 twoImp_state_84 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_75 safe_75
    (combat_segment_cons twoImp_state_76 twoImp_state_77 twoImp_state_84 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_76 safe_76
    (combat_segment_cons twoImp_state_77 twoImp_state_78 twoImp_state_84 8192 [8192, 8192, 8192, 8192, 8192, 8192] actual_77 safe_77
    (combat_segment_cons twoImp_state_78 twoImp_state_79 twoImp_state_84 8192 [8192, 8192, 8192, 8192, 8192] actual_78 safe_78
    (combat_segment_cons twoImp_state_79 twoImp_state_80 twoImp_state_84 8192 [8192, 8192, 8192, 8192] actual_79 safe_79
    (combat_segment_cons twoImp_state_80 twoImp_state_81 twoImp_state_84 8192 [8192, 8192, 8192] actual_80 safe_80
    (combat_segment_cons twoImp_state_81 twoImp_state_82 twoImp_state_84 8192 [8192, 8192] actual_81 safe_81
    (combat_segment_cons twoImp_state_82 twoImp_state_83 twoImp_state_84 8192 [8192] actual_82 safe_82
    (combat_segment_cons twoImp_state_83 twoImp_state_84 twoImp_state_84 8192 [] actual_83 safe_83
    (combat_segment_nil twoImp_state_84 safe_84)))))))))))))

#print axioms twoImp_segment_008
end LeanDoomProofs
