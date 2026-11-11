import LeanDoomProofs.CombatData.Block044
import LeanDoomProofs.CombatData.Block043
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

private theorem safe_384 : combatSafe twoImp_state_384 := by unfold combatSafe; decide +kernel

private theorem safe_385 : combatSafe twoImp_state_385 := by unfold combatSafe; decide +kernel

private theorem safe_386 : combatSafe twoImp_state_386 := by unfold combatSafe; decide +kernel

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 385"
  out.flush

private theorem normalized_384 : combat_tickNormalized twoImp_state_384 2 = twoImp_state_385 := by combat_kernel_close

private theorem actual_384 : twoImp_state_384.tickCombatV1 2 = twoImp_state_385 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_384 2) normalized_384

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 386"
  out.flush

private theorem normalized_385 : combat_tickNormalized twoImp_state_385 4096 = twoImp_state_386 := by combat_kernel_close

private theorem actual_385 : twoImp_state_385.tickCombatV1 4096 = twoImp_state_386 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_385 4096) normalized_385

/-- Complete checked transitions 385 through 386, with every prefix alive and error-free. -/
theorem twoImp_segment_044 : CombatSegment twoImp_state_384 twoImp_inputs_044 twoImp_state_386 := by
  doom_kernel_exact (combat_segment_cons twoImp_state_384 twoImp_state_385 twoImp_state_386 2 [4096] actual_384 safe_384
    (combat_segment_cons twoImp_state_385 twoImp_state_386 twoImp_state_386 4096 [] actual_385 safe_385
    (combat_segment_nil twoImp_state_386 safe_386)))

#print axioms twoImp_segment_044
end LeanDoomProofs
