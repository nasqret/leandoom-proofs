import LeanDoomProofs.ArenaData.Block016
import LeanDoomProofs.ArenaData.Block015
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

private theorem safe_144 : combatSafe arena_state_144 := by unfold combatSafe; decide +kernel

private theorem safe_145 : combatSafe arena_state_145 := by unfold combatSafe; decide +kernel

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 145"
  out.flush

private theorem normalized_144 : combat_tickNormalized arena_state_144 8192 = arena_state_145 := by combat_kernel_close

private theorem actual_144 : arena_state_144.tickCombatV1 8192 = arena_state_145 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_144 8192) normalized_144

/-- Complete checked transitions 145 through 145, with every prefix alive and error-free. -/
theorem arena_segment_016 : CombatSegment arena_state_144 arena_inputs_016 arena_state_145 := by
  doom_kernel_exact (combat_segment_cons arena_state_144 arena_state_145 arena_state_145 8192 [] actual_144 safe_144
    (combat_segment_nil arena_state_145 safe_145))

#print axioms arena_segment_016
end LeanDoomProofs
