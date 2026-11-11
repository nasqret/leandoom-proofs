import LeanDoomProofs.ArenaData.Block017
import LeanDoomProofs.ArenaData.Block016
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

private theorem safe_145 : combatSafe arena_state_145 := by unfold combatSafe; decide +kernel

private theorem safe_146 : combatSafe arena_state_146 := by unfold combatSafe; decide +kernel

private theorem safe_147 : combatSafe arena_state_147 := by unfold combatSafe; decide +kernel

private theorem safe_148 : combatSafe arena_state_148 := by unfold combatSafe; decide +kernel

private theorem safe_149 : combatSafe arena_state_149 := by unfold combatSafe; decide +kernel

private theorem safe_150 : combatSafe arena_state_150 := by unfold combatSafe; decide +kernel

private theorem safe_151 : combatSafe arena_state_151 := by unfold combatSafe; decide +kernel

private theorem safe_152 : combatSafe arena_state_152 := by unfold combatSafe; decide +kernel

private theorem safe_153 : combatSafe arena_state_153 := by unfold combatSafe; decide +kernel

private theorem safe_154 : combatSafe arena_state_154 := by unfold combatSafe; decide +kernel

private theorem safe_155 : combatSafe arena_state_155 := by unfold combatSafe; decide +kernel

private theorem safe_156 : combatSafe arena_state_156 := by unfold combatSafe; decide +kernel

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 146"
  out.flush

private theorem normalized_145 : combat_tickNormalized arena_state_145 2 = arena_state_146 := by combat_kernel_close

private theorem actual_145 : arena_state_145.tickCombatV1 2 = arena_state_146 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_145 2) normalized_145

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 147"
  out.flush

private theorem normalized_146 : combat_tickNormalized arena_state_146 2 = arena_state_147 := by combat_kernel_close

private theorem actual_146 : arena_state_146.tickCombatV1 2 = arena_state_147 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_146 2) normalized_146

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 148"
  out.flush

private theorem normalized_147 : combat_tickNormalized arena_state_147 2 = arena_state_148 := by combat_kernel_close

private theorem actual_147 : arena_state_147.tickCombatV1 2 = arena_state_148 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_147 2) normalized_147

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 149"
  out.flush

private theorem normalized_148 : combat_tickNormalized arena_state_148 2 = arena_state_149 := by combat_kernel_close

private theorem actual_148 : arena_state_148.tickCombatV1 2 = arena_state_149 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_148 2) normalized_148

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 150"
  out.flush

private theorem normalized_149 : combat_tickNormalized arena_state_149 2 = arena_state_150 := by combat_kernel_close

private theorem actual_149 : arena_state_149.tickCombatV1 2 = arena_state_150 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_149 2) normalized_149

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 151"
  out.flush

private theorem normalized_150 : combat_tickNormalized arena_state_150 2 = arena_state_151 := by combat_kernel_close

private theorem actual_150 : arena_state_150.tickCombatV1 2 = arena_state_151 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_150 2) normalized_150

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 152"
  out.flush

private theorem normalized_151 : combat_tickNormalized arena_state_151 2 = arena_state_152 := by combat_kernel_close

private theorem actual_151 : arena_state_151.tickCombatV1 2 = arena_state_152 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_151 2) normalized_151

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 153"
  out.flush

private theorem normalized_152 : combat_tickNormalized arena_state_152 2 = arena_state_153 := by combat_kernel_close

private theorem actual_152 : arena_state_152.tickCombatV1 2 = arena_state_153 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_152 2) normalized_152

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 154"
  out.flush

private theorem normalized_153 : combat_tickNormalized arena_state_153 2 = arena_state_154 := by combat_kernel_close

private theorem actual_153 : arena_state_153.tickCombatV1 2 = arena_state_154 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_153 2) normalized_153

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 155"
  out.flush

private theorem normalized_154 : combat_tickNormalized arena_state_154 2 = arena_state_155 := by combat_kernel_close

private theorem actual_154 : arena_state_154.tickCombatV1 2 = arena_state_155 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_154 2) normalized_154

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 156"
  out.flush

private theorem normalized_155 : combat_tickNormalized arena_state_155 2 = arena_state_156 := by combat_kernel_close

private theorem actual_155 : arena_state_155.tickCombatV1 2 = arena_state_156 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_155 2) normalized_155

/-- Complete checked transitions 146 through 156, with every prefix alive and error-free. -/
theorem arena_segment_017 : CombatSegment arena_state_145 arena_inputs_017 arena_state_156 := by
  doom_kernel_exact (combat_segment_cons arena_state_145 arena_state_146 arena_state_156 2 [2, 2, 2, 2, 2, 2, 2, 2, 2, 2] actual_145 safe_145
    (combat_segment_cons arena_state_146 arena_state_147 arena_state_156 2 [2, 2, 2, 2, 2, 2, 2, 2, 2] actual_146 safe_146
    (combat_segment_cons arena_state_147 arena_state_148 arena_state_156 2 [2, 2, 2, 2, 2, 2, 2, 2] actual_147 safe_147
    (combat_segment_cons arena_state_148 arena_state_149 arena_state_156 2 [2, 2, 2, 2, 2, 2, 2] actual_148 safe_148
    (combat_segment_cons arena_state_149 arena_state_150 arena_state_156 2 [2, 2, 2, 2, 2, 2] actual_149 safe_149
    (combat_segment_cons arena_state_150 arena_state_151 arena_state_156 2 [2, 2, 2, 2, 2] actual_150 safe_150
    (combat_segment_cons arena_state_151 arena_state_152 arena_state_156 2 [2, 2, 2, 2] actual_151 safe_151
    (combat_segment_cons arena_state_152 arena_state_153 arena_state_156 2 [2, 2, 2] actual_152 safe_152
    (combat_segment_cons arena_state_153 arena_state_154 arena_state_156 2 [2, 2] actual_153 safe_153
    (combat_segment_cons arena_state_154 arena_state_155 arena_state_156 2 [2] actual_154 safe_154
    (combat_segment_cons arena_state_155 arena_state_156 arena_state_156 2 [] actual_155 safe_155
    (combat_segment_nil arena_state_156 safe_156))))))))))))

#print axioms arena_segment_017
end LeanDoomProofs
