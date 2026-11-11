import LeanDoomProofs.CombatData.Block010
import LeanDoomProofs.CombatData.Block009
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

private theorem safe_87 : combatSafe twoImp_state_87 := by unfold combatSafe; decide +kernel

private theorem safe_88 : combatSafe twoImp_state_88 := by unfold combatSafe; decide +kernel

private theorem safe_89 : combatSafe twoImp_state_89 := by unfold combatSafe; decide +kernel

private theorem safe_90 : combatSafe twoImp_state_90 := by unfold combatSafe; decide +kernel

private theorem safe_91 : combatSafe twoImp_state_91 := by unfold combatSafe; decide +kernel

private theorem safe_92 : combatSafe twoImp_state_92 := by unfold combatSafe; decide +kernel

private theorem safe_93 : combatSafe twoImp_state_93 := by unfold combatSafe; decide +kernel

private theorem safe_94 : combatSafe twoImp_state_94 := by unfold combatSafe; decide +kernel

private theorem safe_95 : combatSafe twoImp_state_95 := by unfold combatSafe; decide +kernel

private theorem safe_96 : combatSafe twoImp_state_96 := by unfold combatSafe; decide +kernel

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 88"
  out.flush

private theorem normalized_87 : combat_tickNormalized twoImp_state_87 8192 = twoImp_state_88 := by combat_kernel_close

private theorem actual_87 : twoImp_state_87.tickCombatV1 8192 = twoImp_state_88 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_87 8192) normalized_87

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 89"
  out.flush

private theorem normalized_88 : combat_tickNormalized twoImp_state_88 8192 = twoImp_state_89 := by combat_kernel_close

private theorem actual_88 : twoImp_state_88.tickCombatV1 8192 = twoImp_state_89 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_88 8192) normalized_88

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 90"
  out.flush

private theorem normalized_89 : combat_tickNormalized twoImp_state_89 8192 = twoImp_state_90 := by combat_kernel_close

private theorem actual_89 : twoImp_state_89.tickCombatV1 8192 = twoImp_state_90 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_89 8192) normalized_89

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 91"
  out.flush

private theorem normalized_90 : combat_tickNormalized twoImp_state_90 8192 = twoImp_state_91 := by combat_kernel_close

private theorem actual_90 : twoImp_state_90.tickCombatV1 8192 = twoImp_state_91 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_90 8192) normalized_90

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 92"
  out.flush

private theorem normalized_91 : combat_tickNormalized twoImp_state_91 8192 = twoImp_state_92 := by combat_kernel_close

private theorem actual_91 : twoImp_state_91.tickCombatV1 8192 = twoImp_state_92 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_91 8192) normalized_91

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 93"
  out.flush

private theorem normalized_92 : combat_tickNormalized twoImp_state_92 8192 = twoImp_state_93 := by combat_kernel_close

private theorem actual_92 : twoImp_state_92.tickCombatV1 8192 = twoImp_state_93 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_92 8192) normalized_92

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 94"
  out.flush

private theorem normalized_93 : combat_tickNormalized twoImp_state_93 8192 = twoImp_state_94 := by combat_kernel_close

private theorem actual_93 : twoImp_state_93.tickCombatV1 8192 = twoImp_state_94 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_93 8192) normalized_93

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 95"
  out.flush

private theorem normalized_94 : combat_tickNormalized twoImp_state_94 8192 = twoImp_state_95 := by combat_kernel_close

private theorem actual_94 : twoImp_state_94.tickCombatV1 8192 = twoImp_state_95 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_94 8192) normalized_94

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 96"
  out.flush

private theorem normalized_95 : combat_tickNormalized twoImp_state_95 8192 = twoImp_state_96 := by combat_kernel_close

private theorem actual_95 : twoImp_state_95.tickCombatV1 8192 = twoImp_state_96 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_95 8192) normalized_95

/-- Complete checked transitions 88 through 96, with every prefix alive and error-free. -/
theorem twoImp_segment_010 : CombatSegment twoImp_state_87 twoImp_inputs_010 twoImp_state_96 := by
  doom_kernel_exact (combat_segment_cons twoImp_state_87 twoImp_state_88 twoImp_state_96 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_87 safe_87
    (combat_segment_cons twoImp_state_88 twoImp_state_89 twoImp_state_96 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_88 safe_88
    (combat_segment_cons twoImp_state_89 twoImp_state_90 twoImp_state_96 8192 [8192, 8192, 8192, 8192, 8192, 8192] actual_89 safe_89
    (combat_segment_cons twoImp_state_90 twoImp_state_91 twoImp_state_96 8192 [8192, 8192, 8192, 8192, 8192] actual_90 safe_90
    (combat_segment_cons twoImp_state_91 twoImp_state_92 twoImp_state_96 8192 [8192, 8192, 8192, 8192] actual_91 safe_91
    (combat_segment_cons twoImp_state_92 twoImp_state_93 twoImp_state_96 8192 [8192, 8192, 8192] actual_92 safe_92
    (combat_segment_cons twoImp_state_93 twoImp_state_94 twoImp_state_96 8192 [8192, 8192] actual_93 safe_93
    (combat_segment_cons twoImp_state_94 twoImp_state_95 twoImp_state_96 8192 [8192] actual_94 safe_94
    (combat_segment_cons twoImp_state_95 twoImp_state_96 twoImp_state_96 8192 [] actual_95 safe_95
    (combat_segment_nil twoImp_state_96 safe_96))))))))))

#print axioms twoImp_segment_010
end LeanDoomProofs
