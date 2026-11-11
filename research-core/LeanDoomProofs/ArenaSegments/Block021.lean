import LeanDoomProofs.ArenaData.Block021
import LeanDoomProofs.ArenaData.Block020
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

private theorem safe_192 : combatSafe arena_state_192 := by unfold combatSafe; decide +kernel

private theorem safe_193 : combatSafe arena_state_193 := by unfold combatSafe; decide +kernel

private theorem safe_194 : combatSafe arena_state_194 := by unfold combatSafe; decide +kernel

private theorem safe_195 : combatSafe arena_state_195 := by unfold combatSafe; decide +kernel

private theorem safe_196 : combatSafe arena_state_196 := by unfold combatSafe; decide +kernel

private theorem safe_197 : combatSafe arena_state_197 := by unfold combatSafe; decide +kernel

private theorem safe_198 : combatSafe arena_state_198 := by unfold combatSafe; decide +kernel

private theorem safe_199 : combatSafe arena_state_199 := by unfold combatSafe; decide +kernel

private theorem safe_200 : combatSafe arena_state_200 := by unfold combatSafe; decide +kernel

private theorem safe_201 : combatSafe arena_state_201 := by unfold combatSafe; decide +kernel

private theorem safe_202 : combatSafe arena_state_202 := by unfold combatSafe; decide +kernel

private theorem safe_203 : combatSafe arena_state_203 := by unfold combatSafe; decide +kernel

private theorem safe_204 : combatSafe arena_state_204 := by unfold combatSafe; decide +kernel

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 193"
  out.flush

private theorem normalized_192 : combat_tickNormalized arena_state_192 2 = arena_state_193 := by combat_kernel_close

private theorem actual_192 : arena_state_192.tickCombatV1 2 = arena_state_193 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_192 2) normalized_192

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 194"
  out.flush

private theorem normalized_193 : combat_tickNormalized arena_state_193 2 = arena_state_194 := by combat_kernel_close

private theorem actual_193 : arena_state_193.tickCombatV1 2 = arena_state_194 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_193 2) normalized_193

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 195"
  out.flush

private theorem normalized_194 : combat_tickNormalized arena_state_194 2 = arena_state_195 := by combat_kernel_close

private theorem actual_194 : arena_state_194.tickCombatV1 2 = arena_state_195 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_194 2) normalized_194

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 196"
  out.flush

private theorem normalized_195 : combat_tickNormalized arena_state_195 2 = arena_state_196 := by combat_kernel_close

private theorem actual_195 : arena_state_195.tickCombatV1 2 = arena_state_196 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_195 2) normalized_195

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 197"
  out.flush

private theorem normalized_196 : combat_tickNormalized arena_state_196 2 = arena_state_197 := by combat_kernel_close

private theorem actual_196 : arena_state_196.tickCombatV1 2 = arena_state_197 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_196 2) normalized_196

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 198"
  out.flush

private theorem normalized_197 : combat_tickNormalized arena_state_197 2 = arena_state_198 := by combat_kernel_close

private theorem actual_197 : arena_state_197.tickCombatV1 2 = arena_state_198 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_197 2) normalized_197

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 199"
  out.flush

private theorem normalized_198 : combat_tickNormalized arena_state_198 2 = arena_state_199 := by combat_kernel_close

private theorem actual_198 : arena_state_198.tickCombatV1 2 = arena_state_199 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_198 2) normalized_198

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 200"
  out.flush

private theorem normalized_199 : combat_tickNormalized arena_state_199 2 = arena_state_200 := by combat_kernel_close

private theorem actual_199 : arena_state_199.tickCombatV1 2 = arena_state_200 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_199 2) normalized_199

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 201"
  out.flush

private theorem normalized_200 : combat_tickNormalized arena_state_200 2 = arena_state_201 := by combat_kernel_close

private theorem actual_200 : arena_state_200.tickCombatV1 2 = arena_state_201 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_200 2) normalized_200

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 202"
  out.flush

private theorem normalized_201 : combat_tickNormalized arena_state_201 2 = arena_state_202 := by combat_kernel_close

private theorem actual_201 : arena_state_201.tickCombatV1 2 = arena_state_202 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_201 2) normalized_201

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 203"
  out.flush

private theorem normalized_202 : combat_tickNormalized arena_state_202 2 = arena_state_203 := by combat_kernel_close

private theorem actual_202 : arena_state_202.tickCombatV1 2 = arena_state_203 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_202 2) normalized_202

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 204"
  out.flush

private theorem normalized_203 : combat_tickNormalized arena_state_203 2 = arena_state_204 := by combat_kernel_close

private theorem actual_203 : arena_state_203.tickCombatV1 2 = arena_state_204 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_203 2) normalized_203

/-- Complete checked transitions 193 through 204, with every prefix alive and error-free. -/
theorem arena_segment_021 : CombatSegment arena_state_192 arena_inputs_021 arena_state_204 := by
  doom_kernel_exact (combat_segment_cons arena_state_192 arena_state_193 arena_state_204 2 [2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2] actual_192 safe_192
    (combat_segment_cons arena_state_193 arena_state_194 arena_state_204 2 [2, 2, 2, 2, 2, 2, 2, 2, 2, 2] actual_193 safe_193
    (combat_segment_cons arena_state_194 arena_state_195 arena_state_204 2 [2, 2, 2, 2, 2, 2, 2, 2, 2] actual_194 safe_194
    (combat_segment_cons arena_state_195 arena_state_196 arena_state_204 2 [2, 2, 2, 2, 2, 2, 2, 2] actual_195 safe_195
    (combat_segment_cons arena_state_196 arena_state_197 arena_state_204 2 [2, 2, 2, 2, 2, 2, 2] actual_196 safe_196
    (combat_segment_cons arena_state_197 arena_state_198 arena_state_204 2 [2, 2, 2, 2, 2, 2] actual_197 safe_197
    (combat_segment_cons arena_state_198 arena_state_199 arena_state_204 2 [2, 2, 2, 2, 2] actual_198 safe_198
    (combat_segment_cons arena_state_199 arena_state_200 arena_state_204 2 [2, 2, 2, 2] actual_199 safe_199
    (combat_segment_cons arena_state_200 arena_state_201 arena_state_204 2 [2, 2, 2] actual_200 safe_200
    (combat_segment_cons arena_state_201 arena_state_202 arena_state_204 2 [2, 2] actual_201 safe_201
    (combat_segment_cons arena_state_202 arena_state_203 arena_state_204 2 [2] actual_202 safe_202
    (combat_segment_cons arena_state_203 arena_state_204 arena_state_204 2 [] actual_203 safe_203
    (combat_segment_nil arena_state_204 safe_204)))))))))))))

#print axioms arena_segment_021
end LeanDoomProofs
