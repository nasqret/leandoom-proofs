import LeanDoomProofs.ArenaData.Block009
import LeanDoomProofs.ArenaData.Block008
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

private theorem safe_71 : combatSafe arena_state_71 := by unfold combatSafe; decide +kernel

private theorem safe_72 : combatSafe arena_state_72 := by unfold combatSafe; decide +kernel

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 72"
  out.flush

private theorem normalized_71 : combat_tickNormalized arena_state_71 8192 = arena_state_72 := by combat_kernel_close

private theorem actual_71 : arena_state_71.tickCombatV1 8192 = arena_state_72 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_71 8192) normalized_71

/-- Complete checked transitions 72 through 72, with every prefix alive and error-free. -/
theorem arena_segment_009 : CombatSegment arena_state_71 arena_inputs_009 arena_state_72 := by
  doom_kernel_exact (combat_segment_cons arena_state_71 arena_state_72 arena_state_72 8192 [] actual_71 safe_71
    (combat_segment_nil arena_state_72 safe_72))

#print axioms arena_segment_009
end LeanDoomProofs
