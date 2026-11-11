import LeanDoomProofs.ArenaData.Block015
import LeanDoomProofs.ArenaData.Block014
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

private theorem safe_132 : combatSafe arena_state_132 := by unfold combatSafe; decide +kernel

private theorem safe_133 : combatSafe arena_state_133 := by unfold combatSafe; decide +kernel

private theorem safe_134 : combatSafe arena_state_134 := by unfold combatSafe; decide +kernel

private theorem safe_135 : combatSafe arena_state_135 := by unfold combatSafe; decide +kernel

private theorem safe_136 : combatSafe arena_state_136 := by unfold combatSafe; decide +kernel

private theorem safe_137 : combatSafe arena_state_137 := by unfold combatSafe; decide +kernel

private theorem safe_138 : combatSafe arena_state_138 := by unfold combatSafe; decide +kernel

private theorem safe_139 : combatSafe arena_state_139 := by unfold combatSafe; decide +kernel

private theorem safe_140 : combatSafe arena_state_140 := by unfold combatSafe; decide +kernel

private theorem safe_141 : combatSafe arena_state_141 := by unfold combatSafe; decide +kernel

private theorem safe_142 : combatSafe arena_state_142 := by unfold combatSafe; decide +kernel

private theorem safe_143 : combatSafe arena_state_143 := by unfold combatSafe; decide +kernel

private theorem safe_144 : combatSafe arena_state_144 := by unfold combatSafe; decide +kernel

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 133"
  out.flush

private theorem normalized_132 : combat_tickNormalized arena_state_132 8192 = arena_state_133 := by combat_kernel_close

private theorem actual_132 : arena_state_132.tickCombatV1 8192 = arena_state_133 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_132 8192) normalized_132

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 134"
  out.flush

private theorem normalized_133 : combat_tickNormalized arena_state_133 8192 = arena_state_134 := by combat_kernel_close

private theorem actual_133 : arena_state_133.tickCombatV1 8192 = arena_state_134 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_133 8192) normalized_133

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 135"
  out.flush

private theorem normalized_134 : combat_tickNormalized arena_state_134 8192 = arena_state_135 := by combat_kernel_close

private theorem actual_134 : arena_state_134.tickCombatV1 8192 = arena_state_135 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_134 8192) normalized_134

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 136"
  out.flush

private theorem normalized_135 : combat_tickNormalized arena_state_135 8192 = arena_state_136 := by combat_kernel_close

private theorem actual_135 : arena_state_135.tickCombatV1 8192 = arena_state_136 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_135 8192) normalized_135

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 137"
  out.flush

private theorem normalized_136 : combat_tickNormalized arena_state_136 8192 = arena_state_137 := by combat_kernel_close

private theorem actual_136 : arena_state_136.tickCombatV1 8192 = arena_state_137 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_136 8192) normalized_136

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 138"
  out.flush

private theorem normalized_137 : combat_tickNormalized arena_state_137 8192 = arena_state_138 := by combat_kernel_close

private theorem actual_137 : arena_state_137.tickCombatV1 8192 = arena_state_138 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_137 8192) normalized_137

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 139"
  out.flush

private theorem normalized_138 : combat_tickNormalized arena_state_138 8192 = arena_state_139 := by combat_kernel_close

private theorem actual_138 : arena_state_138.tickCombatV1 8192 = arena_state_139 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_138 8192) normalized_138

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 140"
  out.flush

private theorem normalized_139 : combat_tickNormalized arena_state_139 8192 = arena_state_140 := by combat_kernel_close

private theorem actual_139 : arena_state_139.tickCombatV1 8192 = arena_state_140 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_139 8192) normalized_139

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 141"
  out.flush

private theorem normalized_140 : combat_tickNormalized arena_state_140 8192 = arena_state_141 := by combat_kernel_close

private theorem actual_140 : arena_state_140.tickCombatV1 8192 = arena_state_141 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_140 8192) normalized_140

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 142"
  out.flush

private theorem normalized_141 : combat_tickNormalized arena_state_141 8192 = arena_state_142 := by combat_kernel_close

private theorem actual_141 : arena_state_141.tickCombatV1 8192 = arena_state_142 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_141 8192) normalized_141

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 143"
  out.flush

private theorem normalized_142 : combat_tickNormalized arena_state_142 8192 = arena_state_143 := by combat_kernel_close

private theorem actual_142 : arena_state_142.tickCombatV1 8192 = arena_state_143 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_142 8192) normalized_142

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 144"
  out.flush

private theorem normalized_143 : combat_tickNormalized arena_state_143 8192 = arena_state_144 := by combat_kernel_close

private theorem actual_143 : arena_state_143.tickCombatV1 8192 = arena_state_144 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_143 8192) normalized_143

/-- Complete checked transitions 133 through 144, with every prefix alive and error-free. -/
theorem arena_segment_015 : CombatSegment arena_state_132 arena_inputs_015 arena_state_144 := by
  doom_kernel_exact (combat_segment_cons arena_state_132 arena_state_133 arena_state_144 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_132 safe_132
    (combat_segment_cons arena_state_133 arena_state_134 arena_state_144 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_133 safe_133
    (combat_segment_cons arena_state_134 arena_state_135 arena_state_144 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_134 safe_134
    (combat_segment_cons arena_state_135 arena_state_136 arena_state_144 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_135 safe_135
    (combat_segment_cons arena_state_136 arena_state_137 arena_state_144 8192 [8192, 8192, 8192, 8192, 8192, 8192, 8192] actual_136 safe_136
    (combat_segment_cons arena_state_137 arena_state_138 arena_state_144 8192 [8192, 8192, 8192, 8192, 8192, 8192] actual_137 safe_137
    (combat_segment_cons arena_state_138 arena_state_139 arena_state_144 8192 [8192, 8192, 8192, 8192, 8192] actual_138 safe_138
    (combat_segment_cons arena_state_139 arena_state_140 arena_state_144 8192 [8192, 8192, 8192, 8192] actual_139 safe_139
    (combat_segment_cons arena_state_140 arena_state_141 arena_state_144 8192 [8192, 8192, 8192] actual_140 safe_140
    (combat_segment_cons arena_state_141 arena_state_142 arena_state_144 8192 [8192, 8192] actual_141 safe_141
    (combat_segment_cons arena_state_142 arena_state_143 arena_state_144 8192 [8192] actual_142 safe_142
    (combat_segment_cons arena_state_143 arena_state_144 arena_state_144 8192 [] actual_143 safe_143
    (combat_segment_nil arena_state_144 safe_144)))))))))))))

#print axioms arena_segment_015
end LeanDoomProofs
