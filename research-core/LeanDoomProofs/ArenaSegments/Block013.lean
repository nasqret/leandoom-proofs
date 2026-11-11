import LeanDoomProofs.ArenaData.Block013
import LeanDoomProofs.ArenaData.Block012
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

private theorem safe_108 : combatSafe arena_state_108 := by unfold combatSafe; decide +kernel

private theorem safe_109 : combatSafe arena_state_109 := by unfold combatSafe; decide +kernel

private theorem safe_110 : combatSafe arena_state_110 := by unfold combatSafe; decide +kernel

private theorem safe_111 : combatSafe arena_state_111 := by unfold combatSafe; decide +kernel

private theorem safe_112 : combatSafe arena_state_112 := by unfold combatSafe; decide +kernel

private theorem safe_113 : combatSafe arena_state_113 := by unfold combatSafe; decide +kernel

private theorem safe_114 : combatSafe arena_state_114 := by unfold combatSafe; decide +kernel

private theorem safe_115 : combatSafe arena_state_115 := by unfold combatSafe; decide +kernel

private theorem safe_116 : combatSafe arena_state_116 := by unfold combatSafe; decide +kernel

private theorem safe_117 : combatSafe arena_state_117 := by unfold combatSafe; decide +kernel

private theorem safe_118 : combatSafe arena_state_118 := by unfold combatSafe; decide +kernel

private theorem safe_119 : combatSafe arena_state_119 := by unfold combatSafe; decide +kernel

private theorem safe_120 : combatSafe arena_state_120 := by unfold combatSafe; decide +kernel

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 109"
  out.flush

private theorem normalized_108 : combat_tickNormalized arena_state_108 8192 = arena_state_109 := by combat_kernel_close

private theorem actual_108 : arena_state_108.tickCombatV1 8192 = arena_state_109 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_108 8192) normalized_108

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 110"
  out.flush

private theorem normalized_109 : combat_tickNormalized arena_state_109 8192 = arena_state_110 := by combat_kernel_close

private theorem actual_109 : arena_state_109.tickCombatV1 8192 = arena_state_110 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_109 8192) normalized_109

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 111"
  out.flush

private theorem normalized_110 : combat_tickNormalized arena_state_110 8192 = arena_state_111 := by combat_kernel_close

private theorem actual_110 : arena_state_110.tickCombatV1 8192 = arena_state_111 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_110 8192) normalized_110

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 112"
  out.flush

private theorem normalized_111 : combat_tickNormalized arena_state_111 8192 = arena_state_112 := by combat_kernel_close

private theorem actual_111 : arena_state_111.tickCombatV1 8192 = arena_state_112 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_111 8192) normalized_111

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 113"
  out.flush

private theorem normalized_112 : combat_tickNormalized arena_state_112 8192 = arena_state_113 := by combat_kernel_close

private theorem actual_112 : arena_state_112.tickCombatV1 8192 = arena_state_113 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_112 8192) normalized_112

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 114"
  out.flush

private theorem normalized_113 : combat_tickNormalized arena_state_113 8192 = arena_state_114 := by combat_kernel_close

private theorem actual_113 : arena_state_113.tickCombatV1 8192 = arena_state_114 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_113 8192) normalized_113

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 115"
  out.flush

private theorem normalized_114 : combat_tickNormalized arena_state_114 8192 = arena_state_115 := by combat_kernel_close

private theorem actual_114 : arena_state_114.tickCombatV1 8192 = arena_state_115 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_114 8192) normalized_114

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 116"
  out.flush

private theorem normalized_115 : combat_tickNormalized arena_state_115 8192 = arena_state_116 := by combat_kernel_close

private theorem actual_115 : arena_state_115.tickCombatV1 8192 = arena_state_116 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_115 8192) normalized_115

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 117"
  out.flush

private theorem normalized_116 : combat_tickNormalized arena_state_116 8192 = arena_state_117 := by combat_kernel_close

private theorem actual_116 : arena_state_116.tickCombatV1 8192 = arena_state_117 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_116 8192) normalized_116

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 118"
  out.flush

private theorem normalized_117 : combat_tickNormalized arena_state_117 8192 = arena_state_118 := by combat_kernel_close

private theorem actual_117 : arena_state_117.tickCombatV1 8192 = arena_state_118 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_117 8192) normalized_117

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 119"
  out.flush

private theorem normalized_118 : combat_tickNormalized arena_state_118 8192 = arena_state_119 := by combat_kernel_close

private theorem actual_118 : arena_state_118.tickCombatV1 8192 = arena_state_119 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_118 8192) normalized_118

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 120"
  out.flush

private theorem normalized_119 : combat_tickNormalized arena_state_119 8192 = arena_state_120 := by combat_kernel_close

private theorem actual_119 : arena_state_119.tickCombatV1 8192 = arena_state_120 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_119 8192) normalized_119

/-- Complete checked transitions 109 through 120, with every prefix alive and error-free. -/
theorem arena_segment_013 : CombatSegment arena_state_108 arena_inputs_013 arena_state_120 := by
  doom_kernel_exact (combat_segment_cons arena_state_108 arena_state_109 arena_state_120 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_108 safe_108
    (combat_segment_cons arena_state_109 arena_state_110 arena_state_120 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_109 safe_109
    (combat_segment_cons arena_state_110 arena_state_111 arena_state_120 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_110 safe_110
    (combat_segment_cons arena_state_111 arena_state_112 arena_state_120 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_111 safe_111
    (combat_segment_cons arena_state_112 arena_state_113 arena_state_120 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_112 safe_112
    (combat_segment_cons arena_state_113 arena_state_114 arena_state_120 8192 [8192, 8192, 8192, 8192, 8192, 8192] actual_113 safe_113
    (combat_segment_cons arena_state_114 arena_state_115 arena_state_120 8192 [8192, 8192, 8192, 8192, 8192] actual_114 safe_114
    (combat_segment_cons arena_state_115 arena_state_116 arena_state_120 8192 [8192, 8192, 8192, 8192] actual_115 safe_115
    (combat_segment_cons arena_state_116 arena_state_117 arena_state_120 8192 [8192, 8192, 8192] actual_116 safe_116
    (combat_segment_cons arena_state_117 arena_state_118 arena_state_120 8192 [8192, 8192] actual_117 safe_117
    (combat_segment_cons arena_state_118 arena_state_119 arena_state_120 8192 [8192] actual_118 safe_118
    (combat_segment_cons arena_state_119 arena_state_120 arena_state_120 8192 [] actual_119 safe_119
    (combat_segment_nil arena_state_120 safe_120)))))))))))))

#print axioms arena_segment_013
end LeanDoomProofs
