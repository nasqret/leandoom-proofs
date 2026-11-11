import LeanDoomProofs.CombatData.Block015
import LeanDoomProofs.CombatData.Block014
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

private theorem safe_117 : combatSafe twoImp_state_117 := by unfold combatSafe; decide +kernel

private theorem safe_118 : combatSafe twoImp_state_118 := by unfold combatSafe; decide +kernel

private theorem safe_119 : combatSafe twoImp_state_119 := by unfold combatSafe; decide +kernel

private theorem safe_120 : combatSafe twoImp_state_120 := by unfold combatSafe; decide +kernel

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 118"
  out.flush

private theorem normalized_117 : combat_tickNormalized twoImp_state_117 2 = twoImp_state_118 := by combat_kernel_close

private theorem actual_117 : twoImp_state_117.tickCombatV1 2 = twoImp_state_118 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_117 2) normalized_117

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 119"
  out.flush

private theorem normalized_118 : combat_tickNormalized twoImp_state_118 2 = twoImp_state_119 := by combat_kernel_close

private theorem actual_118 : twoImp_state_118.tickCombatV1 2 = twoImp_state_119 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_118 2) normalized_118

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 120"
  out.flush

private theorem normalized_119 : combat_tickNormalized twoImp_state_119 2 = twoImp_state_120 := by combat_kernel_close

private theorem actual_119 : twoImp_state_119.tickCombatV1 2 = twoImp_state_120 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_119 2) normalized_119

/-- Complete checked transitions 118 through 120, with every prefix alive and error-free. -/
theorem twoImp_segment_015 : CombatSegment twoImp_state_117 twoImp_inputs_015 twoImp_state_120 := by
  doom_kernel_exact (combat_segment_cons twoImp_state_117 twoImp_state_118 twoImp_state_120 2 [2, 2] actual_117 safe_117
    (combat_segment_cons twoImp_state_118 twoImp_state_119 twoImp_state_120 2 [2] actual_118 safe_118
    (combat_segment_cons twoImp_state_119 twoImp_state_120 twoImp_state_120 2 [] actual_119 safe_119
    (combat_segment_nil twoImp_state_120 safe_120))))

#print axioms twoImp_segment_015
end LeanDoomProofs
