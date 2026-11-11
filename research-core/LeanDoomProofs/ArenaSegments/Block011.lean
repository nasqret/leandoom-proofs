import LeanDoomProofs.ArenaData.Block011
import LeanDoomProofs.ArenaData.Block010
import LeanDoomProofs.CombatKernel
import LeanDoomProofs.CombatProjectiles
import LeanDoomProofs.CombatTables
import LeanDoomProofs.CombatArithmetic
import LeanDoomProofs.CombatPath

namespace LeanDoomProofs
open Doom
set_option maxRecDepth 32768
set_option Elab.async false
set_option maxHeartbeats 10000000
set_option cbv.maxSteps 1000000
attribute [local cbv_opaque] Float.ofNat Float.ofScientific Float.ofBits Fixed.toFloat Tables.fineSine Tables.tanToAngle Tables.fineTangent
attribute [local cbv_eval] Nat.zero_mul Nat.mul_zero Nat.zero_add Nat.add_zero

private theorem safe_84 : combatSafe arena_state_84 := by unfold combatSafe; decide +kernel

private theorem safe_85 : combatSafe arena_state_85 := by unfold combatSafe; decide +kernel

private theorem safe_86 : combatSafe arena_state_86 := by unfold combatSafe; decide +kernel

private theorem safe_87 : combatSafe arena_state_87 := by unfold combatSafe; decide +kernel

private theorem safe_88 : combatSafe arena_state_88 := by unfold combatSafe; decide +kernel

private theorem safe_89 : combatSafe arena_state_89 := by unfold combatSafe; decide +kernel

private theorem safe_90 : combatSafe arena_state_90 := by unfold combatSafe; decide +kernel

private theorem safe_91 : combatSafe arena_state_91 := by unfold combatSafe; decide +kernel

private theorem safe_92 : combatSafe arena_state_92 := by unfold combatSafe; decide +kernel

private theorem safe_93 : combatSafe arena_state_93 := by unfold combatSafe; decide +kernel

private theorem safe_94 : combatSafe arena_state_94 := by unfold combatSafe; decide +kernel

private theorem safe_95 : combatSafe arena_state_95 := by unfold combatSafe; decide +kernel

private theorem safe_96 : combatSafe arena_state_96 := by unfold combatSafe; decide +kernel

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 85"
  out.flush

private theorem normalized_84 : combat_tickNormalized arena_state_84 8192 = arena_state_85 := by combat_kernel_close

private theorem actual_84 : arena_state_84.tickCombatV1 8192 = arena_state_85 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_84 8192) normalized_84

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 86"
  out.flush

private theorem normalized_85 : combat_tickNormalized arena_state_85 8192 = arena_state_86 := by combat_kernel_close

private theorem actual_85 : arena_state_85.tickCombatV1 8192 = arena_state_86 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_85 8192) normalized_85

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 87"
  out.flush

private theorem normalized_86 : combat_tickNormalized arena_state_86 8192 = arena_state_87 := by combat_kernel_close

private theorem actual_86 : arena_state_86.tickCombatV1 8192 = arena_state_87 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_86 8192) normalized_86

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 88"
  out.flush

private theorem normalized_87 : combat_tickNormalized arena_state_87 8192 = arena_state_88 := by combat_kernel_close

private theorem actual_87 : arena_state_87.tickCombatV1 8192 = arena_state_88 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_87 8192) normalized_87

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 89"
  out.flush

private theorem normalized_88 : combat_tickNormalized arena_state_88 8192 = arena_state_89 := by combat_kernel_close

private theorem actual_88 : arena_state_88.tickCombatV1 8192 = arena_state_89 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_88 8192) normalized_88

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 90"
  out.flush

private theorem normalized_89 : combat_tickNormalized arena_state_89 8192 = arena_state_90 := by combat_kernel_close

private theorem actual_89 : arena_state_89.tickCombatV1 8192 = arena_state_90 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_89 8192) normalized_89

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 91"
  out.flush

private theorem normalized_90 : combat_tickNormalized arena_state_90 8192 = arena_state_91 := by combat_kernel_close

private theorem actual_90 : arena_state_90.tickCombatV1 8192 = arena_state_91 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_90 8192) normalized_90

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 92"
  out.flush

private theorem normalized_91 : combat_tickNormalized arena_state_91 8192 = arena_state_92 := by combat_kernel_close

private theorem actual_91 : arena_state_91.tickCombatV1 8192 = arena_state_92 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_91 8192) normalized_91

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 93"
  out.flush

private theorem normalized_92 : combat_tickNormalized arena_state_92 8192 = arena_state_93 := by combat_kernel_close

private theorem actual_92 : arena_state_92.tickCombatV1 8192 = arena_state_93 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_92 8192) normalized_92

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 94"
  out.flush

private theorem normalized_93 : combat_tickNormalized arena_state_93 8192 = arena_state_94 := by combat_kernel_close

private theorem actual_93 : arena_state_93.tickCombatV1 8192 = arena_state_94 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_93 8192) normalized_93

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 95"
  out.flush

private theorem normalized_94 : combat_tickNormalized arena_state_94 8192 = arena_state_95 := by combat_kernel_close

private theorem actual_94 : arena_state_94.tickCombatV1 8192 = arena_state_95 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_94 8192) normalized_94

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 96"
  out.flush

private theorem normalized_95 : combat_tickNormalized arena_state_95 8192 = arena_state_96 := by combat_kernel_close

private theorem actual_95 : arena_state_95.tickCombatV1 8192 = arena_state_96 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_95 8192) normalized_95

/-- Complete checked transitions 85 through 96, with every prefix alive and error-free. -/
theorem arena_segment_011 : CombatSegment arena_state_84 arena_inputs_011 arena_state_96 := by
  doom_kernel_exact (combat_segment_cons arena_state_84 arena_state_85 arena_state_96 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_84 safe_84
    (combat_segment_cons arena_state_85 arena_state_86 arena_state_96 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_85 safe_85
    (combat_segment_cons arena_state_86 arena_state_87 arena_state_96 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_86 safe_86
    (combat_segment_cons arena_state_87 arena_state_88 arena_state_96 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_87 safe_87
    (combat_segment_cons arena_state_88 arena_state_89 arena_state_96 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_88 safe_88
    (combat_segment_cons arena_state_89 arena_state_90 arena_state_96 8192 [8192, 8192, 8192, 8192, 8192, 8192] actual_89 safe_89
    (combat_segment_cons arena_state_90 arena_state_91 arena_state_96 8192 [8192, 8192, 8192, 8192, 8192] actual_90 safe_90
    (combat_segment_cons arena_state_91 arena_state_92 arena_state_96 8192 [8192, 8192, 8192, 8192] actual_91 safe_91
    (combat_segment_cons arena_state_92 arena_state_93 arena_state_96 8192 [8192, 8192, 8192] actual_92 safe_92
    (combat_segment_cons arena_state_93 arena_state_94 arena_state_96 8192 [8192, 8192] actual_93 safe_93
    (combat_segment_cons arena_state_94 arena_state_95 arena_state_96 8192 [8192] actual_94 safe_94
    (combat_segment_cons arena_state_95 arena_state_96 arena_state_96 8192 [] actual_95 safe_95
    (combat_segment_nil arena_state_96 safe_96)))))))))))))

#print axioms arena_segment_011
end LeanDoomProofs
