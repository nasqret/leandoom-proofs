import LeanDoomProofs.ArenaData.Block019
import LeanDoomProofs.ArenaData.Block018
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

private theorem safe_168 : combatSafe arena_state_168 := by unfold combatSafe; decide +kernel

private theorem safe_169 : combatSafe arena_state_169 := by unfold combatSafe; decide +kernel

private theorem safe_170 : combatSafe arena_state_170 := by unfold combatSafe; decide +kernel

private theorem safe_171 : combatSafe arena_state_171 := by unfold combatSafe; decide +kernel

private theorem safe_172 : combatSafe arena_state_172 := by unfold combatSafe; decide +kernel

private theorem safe_173 : combatSafe arena_state_173 := by unfold combatSafe; decide +kernel

private theorem safe_174 : combatSafe arena_state_174 := by unfold combatSafe; decide +kernel

private theorem safe_175 : combatSafe arena_state_175 := by unfold combatSafe; decide +kernel

private theorem safe_176 : combatSafe arena_state_176 := by unfold combatSafe; decide +kernel

private theorem safe_177 : combatSafe arena_state_177 := by unfold combatSafe; decide +kernel

private theorem safe_178 : combatSafe arena_state_178 := by unfold combatSafe; decide +kernel

private theorem safe_179 : combatSafe arena_state_179 := by unfold combatSafe; decide +kernel

private theorem safe_180 : combatSafe arena_state_180 := by unfold combatSafe; decide +kernel

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 169"
  out.flush

private theorem normalized_168 : combat_tickNormalized arena_state_168 2 = arena_state_169 := by combat_kernel_close

private theorem actual_168 : arena_state_168.tickCombatV1 2 = arena_state_169 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_168 2) normalized_168

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 170"
  out.flush

private theorem normalized_169 : combat_tickNormalized arena_state_169 2 = arena_state_170 := by combat_kernel_close

private theorem actual_169 : arena_state_169.tickCombatV1 2 = arena_state_170 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_169 2) normalized_169

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 171"
  out.flush

private theorem normalized_170 : combat_tickNormalized arena_state_170 2 = arena_state_171 := by combat_kernel_close

private theorem actual_170 : arena_state_170.tickCombatV1 2 = arena_state_171 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_170 2) normalized_170

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 172"
  out.flush

private theorem normalized_171 : combat_tickNormalized arena_state_171 2 = arena_state_172 := by combat_kernel_close

private theorem actual_171 : arena_state_171.tickCombatV1 2 = arena_state_172 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_171 2) normalized_171

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 173"
  out.flush

private theorem normalized_172 : combat_tickNormalized arena_state_172 2 = arena_state_173 := by combat_kernel_close

private theorem actual_172 : arena_state_172.tickCombatV1 2 = arena_state_173 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_172 2) normalized_172

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 174"
  out.flush

private theorem normalized_173 : combat_tickNormalized arena_state_173 2 = arena_state_174 := by combat_kernel_close

private theorem actual_173 : arena_state_173.tickCombatV1 2 = arena_state_174 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_173 2) normalized_173

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 175"
  out.flush

private theorem normalized_174 : combat_tickNormalized arena_state_174 2 = arena_state_175 := by combat_kernel_close

private theorem actual_174 : arena_state_174.tickCombatV1 2 = arena_state_175 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_174 2) normalized_174

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 176"
  out.flush

private theorem normalized_175 : combat_tickNormalized arena_state_175 2 = arena_state_176 := by combat_kernel_close

private theorem actual_175 : arena_state_175.tickCombatV1 2 = arena_state_176 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_175 2) normalized_175

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 177"
  out.flush

private theorem normalized_176 : combat_tickNormalized arena_state_176 2 = arena_state_177 := by combat_kernel_close

private theorem actual_176 : arena_state_176.tickCombatV1 2 = arena_state_177 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_176 2) normalized_176

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 178"
  out.flush

private theorem normalized_177 : combat_tickNormalized arena_state_177 2 = arena_state_178 := by combat_kernel_close

private theorem actual_177 : arena_state_177.tickCombatV1 2 = arena_state_178 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_177 2) normalized_177

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 179"
  out.flush

private theorem normalized_178 : combat_tickNormalized arena_state_178 2 = arena_state_179 := by combat_kernel_close

private theorem actual_178 : arena_state_178.tickCombatV1 2 = arena_state_179 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_178 2) normalized_178

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 180"
  out.flush

private theorem normalized_179 : combat_tickNormalized arena_state_179 2 = arena_state_180 := by combat_kernel_close

private theorem actual_179 : arena_state_179.tickCombatV1 2 = arena_state_180 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_179 2) normalized_179

/-- Complete checked transitions 169 through 180, with every prefix alive and error-free. -/
theorem arena_segment_019 : CombatSegment arena_state_168 arena_inputs_019 arena_state_180 := by
  doom_kernel_exact (combat_segment_cons arena_state_168 arena_state_169 arena_state_180 2 [2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2] actual_168 safe_168
    (combat_segment_cons arena_state_169 arena_state_170 arena_state_180 2 [2, 2, 2, 2, 2, 2, 2, 2, 2, 2] actual_169 safe_169
    (combat_segment_cons arena_state_170 arena_state_171 arena_state_180 2 [2, 2, 2, 2, 2, 2, 2, 2, 2] actual_170 safe_170
    (combat_segment_cons arena_state_171 arena_state_172 arena_state_180 2 [2, 2, 2, 2, 2, 2, 2, 2] actual_171 safe_171
    (combat_segment_cons arena_state_172 arena_state_173 arena_state_180 2 [2, 2, 2, 2, 2, 2, 2] actual_172 safe_172
    (combat_segment_cons arena_state_173 arena_state_174 arena_state_180 2 [2, 2, 2, 2, 2, 2] actual_173 safe_173
    (combat_segment_cons arena_state_174 arena_state_175 arena_state_180 2 [2, 2, 2, 2, 2] actual_174 safe_174
    (combat_segment_cons arena_state_175 arena_state_176 arena_state_180 2 [2, 2, 2, 2] actual_175 safe_175
    (combat_segment_cons arena_state_176 arena_state_177 arena_state_180 2 [2, 2, 2] actual_176 safe_176
    (combat_segment_cons arena_state_177 arena_state_178 arena_state_180 2 [2, 2] actual_177 safe_177
    (combat_segment_cons arena_state_178 arena_state_179 arena_state_180 2 [2] actual_178 safe_178
    (combat_segment_cons arena_state_179 arena_state_180 arena_state_180 2 [] actual_179 safe_179
    (combat_segment_nil arena_state_180 safe_180)))))))))))))

#print axioms arena_segment_019
end LeanDoomProofs
