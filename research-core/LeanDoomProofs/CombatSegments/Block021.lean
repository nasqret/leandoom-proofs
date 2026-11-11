import LeanDoomProofs.CombatData.Block021
import LeanDoomProofs.CombatData.Block020
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

private theorem safe_169 : combatSafe twoImp_state_169 := by unfold combatSafe; decide +kernel

private theorem safe_170 : combatSafe twoImp_state_170 := by unfold combatSafe; decide +kernel

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 170"
  out.flush

private theorem normalized_169 : combat_tickNormalized twoImp_state_169 4096 = twoImp_state_170 := by combat_kernel_close

private theorem actual_169 : twoImp_state_169.tickCombatV1 4096 = twoImp_state_170 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_169 4096) normalized_169

/-- Complete checked transitions 170 through 170, with every prefix alive and error-free. -/
theorem twoImp_segment_021 : CombatSegment twoImp_state_169 twoImp_inputs_021 twoImp_state_170 := by
  doom_kernel_exact (combat_segment_cons twoImp_state_169 twoImp_state_170 twoImp_state_170 4096 [] actual_169 safe_169
    (combat_segment_nil twoImp_state_170 safe_170))

#print axioms twoImp_segment_021
end LeanDoomProofs
