import LeanDoomProofs.CombatData.Block009
import LeanDoomProofs.CombatData.Block008
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

private theorem safe_84 : combatSafe twoImp_state_84 := by unfold combatSafe; decide +kernel

private theorem safe_85 : combatSafe twoImp_state_85 := by unfold combatSafe; decide +kernel

private theorem safe_86 : combatSafe twoImp_state_86 := by unfold combatSafe; decide +kernel

private theorem safe_87 : combatSafe twoImp_state_87 := by unfold combatSafe; decide +kernel

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 85"
  out.flush

private theorem normalized_84 : combat_tickNormalized twoImp_state_84 8192 = twoImp_state_85 := by combat_kernel_close

private theorem actual_84 : twoImp_state_84.tickCombatV1 8192 = twoImp_state_85 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_84 8192) normalized_84

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 86"
  out.flush

private theorem normalized_85 : combat_tickNormalized twoImp_state_85 8192 = twoImp_state_86 := by combat_kernel_close

private theorem actual_85 : twoImp_state_85.tickCombatV1 8192 = twoImp_state_86 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_85 8192) normalized_85

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 87"
  out.flush

private theorem normalized_86 : combat_tickNormalized twoImp_state_86 8192 = twoImp_state_87 := by combat_kernel_close

private theorem actual_86 : twoImp_state_86.tickCombatV1 8192 = twoImp_state_87 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence twoImp_state_86 8192) normalized_86

/-- Complete checked transitions 85 through 87, with every prefix alive and error-free. -/
theorem twoImp_segment_009 : CombatSegment twoImp_state_84 twoImp_inputs_009 twoImp_state_87 := by
  doom_kernel_exact (combat_segment_cons twoImp_state_84 twoImp_state_85 twoImp_state_87 8192 [8192, 8192] actual_84 safe_84
    (combat_segment_cons twoImp_state_85 twoImp_state_86 twoImp_state_87 8192 [8192] actual_85 safe_85
    (combat_segment_cons twoImp_state_86 twoImp_state_87 twoImp_state_87 8192 [] actual_86 safe_86
    (combat_segment_nil twoImp_state_87 safe_87))))

#print axioms twoImp_segment_009
end LeanDoomProofs
