import LeanDoomProofs.ArenaData.Block022
import LeanDoomProofs.ArenaData.Block021
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

private theorem safe_204 : combatSafe arena_state_204 := by unfold combatSafe; decide +kernel

private theorem safe_205 : combatSafe arena_state_205 := by unfold combatSafe; decide +kernel

private theorem safe_206 : combatSafe arena_state_206 := by unfold combatSafe; decide +kernel

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 205"
  out.flush

private theorem normalized_204 : combat_tickNormalized arena_state_204 2 = arena_state_205 := by combat_kernel_close

private theorem actual_204 : arena_state_204.tickCombatV1 2 = arena_state_205 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_204 2) normalized_204

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 206"
  out.flush

private theorem normalized_205 : combat_tickNormalized arena_state_205 4096 = arena_state_206 := by combat_kernel_close

private theorem actual_205 : arena_state_205.tickCombatV1 4096 = arena_state_206 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_205 4096) normalized_205

/-- Complete checked transitions 205 through 206, with every prefix alive and error-free. -/
theorem arena_segment_022 : CombatSegment arena_state_204 arena_inputs_022 arena_state_206 := by
  doom_kernel_exact (combat_segment_cons arena_state_204 arena_state_205 arena_state_206 2 [4096] actual_204 safe_204
    (combat_segment_cons arena_state_205 arena_state_206 arena_state_206 4096 [] actual_205 safe_205
    (combat_segment_nil arena_state_206 safe_206)))

#print axioms arena_segment_022
end LeanDoomProofs
