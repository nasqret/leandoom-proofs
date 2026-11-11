import LeanDoomProofs.ArenaData.Block003
import LeanDoomProofs.ArenaData.Block002
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

private theorem safe_24 : combatSafe arena_state_24 := by unfold combatSafe; decide +kernel

private theorem safe_25 : combatSafe arena_state_25 := by unfold combatSafe; decide +kernel

private theorem safe_26 : combatSafe arena_state_26 := by unfold combatSafe; decide +kernel

private theorem safe_27 : combatSafe arena_state_27 := by unfold combatSafe; decide +kernel

private theorem safe_28 : combatSafe arena_state_28 := by unfold combatSafe; decide +kernel

private theorem safe_29 : combatSafe arena_state_29 := by unfold combatSafe; decide +kernel

private theorem safe_30 : combatSafe arena_state_30 := by unfold combatSafe; decide +kernel

private theorem safe_31 : combatSafe arena_state_31 := by unfold combatSafe; decide +kernel

private theorem safe_32 : combatSafe arena_state_32 := by unfold combatSafe; decide +kernel

private theorem safe_33 : combatSafe arena_state_33 := by unfold combatSafe; decide +kernel

private theorem safe_34 : combatSafe arena_state_34 := by unfold combatSafe; decide +kernel

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 25"
  out.flush

private theorem normalized_24 : combat_tickNormalized arena_state_24 65536 = arena_state_25 := by combat_kernel_close

private theorem actual_24 : arena_state_24.tickCombatV1 65536 = arena_state_25 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_24 65536) normalized_24

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 26"
  out.flush

private theorem normalized_25 : combat_tickNormalized arena_state_25 65536 = arena_state_26 := by combat_kernel_close

private theorem actual_25 : arena_state_25.tickCombatV1 65536 = arena_state_26 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_25 65536) normalized_25

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 27"
  out.flush

private theorem normalized_26 : combat_tickNormalized arena_state_26 65536 = arena_state_27 := by combat_kernel_close

private theorem actual_26 : arena_state_26.tickCombatV1 65536 = arena_state_27 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_26 65536) normalized_26

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 28"
  out.flush

private theorem normalized_27 : combat_tickNormalized arena_state_27 65536 = arena_state_28 := by combat_kernel_close

private theorem actual_27 : arena_state_27.tickCombatV1 65536 = arena_state_28 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_27 65536) normalized_27

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 29"
  out.flush

private theorem normalized_28 : combat_tickNormalized arena_state_28 65536 = arena_state_29 := by combat_kernel_close

private theorem actual_28 : arena_state_28.tickCombatV1 65536 = arena_state_29 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_28 65536) normalized_28

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 30"
  out.flush

private theorem normalized_29 : combat_tickNormalized arena_state_29 65536 = arena_state_30 := by combat_kernel_close

private theorem actual_29 : arena_state_29.tickCombatV1 65536 = arena_state_30 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_29 65536) normalized_29

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 31"
  out.flush

private theorem normalized_30 : combat_tickNormalized arena_state_30 8192 = arena_state_31 := by combat_kernel_close

private theorem actual_30 : arena_state_30.tickCombatV1 8192 = arena_state_31 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_30 8192) normalized_30

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 32"
  out.flush

private theorem normalized_31 : combat_tickNormalized arena_state_31 8192 = arena_state_32 := by combat_kernel_close

private theorem actual_31 : arena_state_31.tickCombatV1 8192 = arena_state_32 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_31 8192) normalized_31

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 33"
  out.flush

private theorem normalized_32 : combat_tickNormalized arena_state_32 8192 = arena_state_33 := by combat_kernel_close

private theorem actual_32 : arena_state_32.tickCombatV1 8192 = arena_state_33 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_32 8192) normalized_32

run_cmd do
  let out ← IO.getStdout
  out.putStrLn "CHECKING combat tick 34"
  out.flush

private theorem normalized_33 : combat_tickNormalized arena_state_33 8192 = arena_state_34 := by combat_kernel_close

private theorem actual_33 : arena_state_33.tickCombatV1 8192 = arena_state_34 := by
  doom_kernel_exact Eq.trans (combat_tick_equivalence arena_state_33 8192) normalized_33

/-- Complete checked transitions 25 through 34, with every prefix alive and error-free. -/
theorem arena_segment_003 : CombatSegment arena_state_24 arena_inputs_003 arena_state_34 := by
  doom_kernel_exact (combat_segment_cons arena_state_24 arena_state_25 arena_state_34 65536 [65536, 65536, 65536, 65536, 65536, 8192, 8192, 8192, 8192] actual_24 safe_24
    (combat_segment_cons arena_state_25 arena_state_26 arena_state_34 65536 [65536, 65536, 65536, 65536, 8192, 8192, 8192, 8192] actual_25 safe_25
    (combat_segment_cons arena_state_26 arena_state_27 arena_state_34 65536 [65536, 65536, 65536, 8192, 8192, 8192, 8192] actual_26 safe_26
    (combat_segment_cons arena_state_27 arena_state_28 arena_state_34 65536 [65536, 65536, 8192, 8192, 8192, 8192] actual_27 safe_27
    (combat_segment_cons arena_state_28 arena_state_29 arena_state_34 65536 [65536, 8192, 8192, 8192, 8192] actual_28 safe_28
    (combat_segment_cons arena_state_29 arena_state_30 arena_state_34 65536 [8192, 8192, 8192, 8192] actual_29 safe_29
    (combat_segment_cons arena_state_30 arena_state_31 arena_state_34 8192 [8192, 8192, 8192] actual_30 safe_30
    (combat_segment_cons arena_state_31 arena_state_32 arena_state_34 8192 [8192, 8192] actual_31 safe_31
    (combat_segment_cons arena_state_32 arena_state_33 arena_state_34 8192 [8192] actual_32 safe_32
    (combat_segment_cons arena_state_33 arena_state_34 arena_state_34 8192 [] actual_33 safe_33
    (combat_segment_nil arena_state_34 safe_34)))))))))))

#print axioms arena_segment_003
end LeanDoomProofs
