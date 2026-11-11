import LeanDoomProofs.CombatData.Block007
import LeanDoomProofs.CombatData.Block006
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

private theorem safe_64 : combatSafe twoImp_state_64 := by unfold combatSafe; decide +kernel

private theorem safe_65 : combatSafe twoImp_state_65 := by unfold combatSafe; decide +kernel

private theorem safe_66 : combatSafe twoImp_state_66 := by unfold combatSafe; decide +kernel

private theorem safe_67 : combatSafe twoImp_state_67 := by unfold combatSafe; decide +kernel

private theorem safe_68 : combatSafe twoImp_state_68 := by unfold combatSafe; decide +kernel

private theorem safe_69 : combatSafe twoImp_state_69 := by unfold combatSafe; decide +kernel

private theorem safe_70 : combatSafe twoImp_state_70 := by unfold combatSafe; decide +kernel

private theorem safe_71 : combatSafe twoImp_state_71 := by unfold combatSafe; decide +kernel

private theorem safe_72 : combatSafe twoImp_state_72 := by unfold combatSafe; decide +kernel

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 65"
  out.flush

private theorem normalized_64 : combat_tickNormalized twoImp_state_64 8192 = twoImp_state_65 := by combat_kernel_close

private theorem actual_64 : twoImp_state_64.tickCombatV1 8192 = twoImp_state_65 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_64 8192) normalized_64

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 66"
  out.flush

private theorem normalized_65 : combat_tickNormalized twoImp_state_65 8192 = twoImp_state_66 := by combat_kernel_close

private theorem actual_65 : twoImp_state_65.tickCombatV1 8192 = twoImp_state_66 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_65 8192) normalized_65

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 67"
  out.flush

private theorem normalized_66 : combat_tickNormalized twoImp_state_66 8192 = twoImp_state_67 := by combat_kernel_close

private theorem actual_66 : twoImp_state_66.tickCombatV1 8192 = twoImp_state_67 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_66 8192) normalized_66

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 68"
  out.flush

private theorem normalized_67 : combat_tickNormalized twoImp_state_67 8192 = twoImp_state_68 := by combat_kernel_close

private theorem actual_67 : twoImp_state_67.tickCombatV1 8192 = twoImp_state_68 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_67 8192) normalized_67

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 69"
  out.flush

private theorem normalized_68 : combat_tickNormalized twoImp_state_68 8192 = twoImp_state_69 := by combat_kernel_close

private theorem actual_68 : twoImp_state_68.tickCombatV1 8192 = twoImp_state_69 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_68 8192) normalized_68

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 70"
  out.flush

private theorem normalized_69 : combat_tickNormalized twoImp_state_69 8192 = twoImp_state_70 := by combat_kernel_close

private theorem actual_69 : twoImp_state_69.tickCombatV1 8192 = twoImp_state_70 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_69 8192) normalized_69

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 71"
  out.flush

private theorem normalized_70 : combat_tickNormalized twoImp_state_70 8192 = twoImp_state_71 := by combat_kernel_close

private theorem actual_70 : twoImp_state_70.tickCombatV1 8192 = twoImp_state_71 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_70 8192) normalized_70

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 72"
  out.flush

private theorem normalized_71 : combat_tickNormalized twoImp_state_71 8192 = twoImp_state_72 := by combat_kernel_close

private theorem actual_71 : twoImp_state_71.tickCombatV1 8192 = twoImp_state_72 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_71 8192) normalized_71

/-- Complete checked transitions 65 through 72, with every prefix alive and error-free. -/
theorem twoImp_segment_007 : CombatSegment twoImp_state_64 twoImp_inputs_007 twoImp_state_72 := by
  doom_kernel_exact (combat_segment_cons twoImp_state_64 twoImp_state_65 twoImp_state_72 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_64 safe_64
    (combat_segment_cons twoImp_state_65 twoImp_state_66 twoImp_state_72 8192 [8192, 8192, 8192, 8192, 8192, 8192] actual_65 safe_65
    (combat_segment_cons twoImp_state_66 twoImp_state_67 twoImp_state_72 8192 [8192, 8192, 8192, 8192, 8192] actual_66 safe_66
    (combat_segment_cons twoImp_state_67 twoImp_state_68 twoImp_state_72 8192 [8192, 8192, 8192, 8192] actual_67 safe_67
    (combat_segment_cons twoImp_state_68 twoImp_state_69 twoImp_state_72 8192 [8192, 8192, 8192] actual_68 safe_68
    (combat_segment_cons twoImp_state_69 twoImp_state_70 twoImp_state_72 8192 [8192, 8192] actual_69 safe_69
    (combat_segment_cons twoImp_state_70 twoImp_state_71 twoImp_state_72 8192 [8192] actual_70 safe_70
    (combat_segment_cons twoImp_state_71 twoImp_state_72 twoImp_state_72 8192 [] actual_71 safe_71
    (combat_segment_nil twoImp_state_72 safe_72)))))))))

#print axioms twoImp_segment_007
end LeanDoomProofs
