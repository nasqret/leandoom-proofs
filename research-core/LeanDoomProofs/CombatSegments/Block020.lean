import LeanDoomProofs.CombatData.Block020
import LeanDoomProofs.CombatData.Block019
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

private theorem safe_168 : combatSafe twoImp_state_168 := by unfold combatSafe; decide +kernel

private theorem safe_169 : combatSafe twoImp_state_169 := by unfold combatSafe; decide +kernel

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 169"
  out.flush

private theorem normalized_168 : combat_tickNormalized twoImp_state_168 2 = twoImp_state_169 := by combat_kernel_close

private theorem actual_168 : twoImp_state_168.tickCombatV1 2 = twoImp_state_169 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_168 2) normalized_168

/-- Complete checked transitions 169 through 169, with every prefix alive and error-free. -/
theorem twoImp_segment_020 : CombatSegment twoImp_state_168 twoImp_inputs_020 twoImp_state_169 := by
  doom_kernel_exact (combat_segment_cons twoImp_state_168 twoImp_state_169 twoImp_state_169 2 [] actual_168 safe_168
    (combat_segment_nil twoImp_state_169 safe_169))

#print axioms twoImp_segment_020
end LeanDoomProofs
