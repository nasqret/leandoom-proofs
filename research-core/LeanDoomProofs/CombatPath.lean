import LeanDoomProofs.Trace
import LeanDoomProofs.CombatWitness

namespace LeanDoomProofs
open Doom

def combatStep (s : Simulation) (keys : UInt32) : Simulation := s.tickCombatV1 keys true

/-- A segment includes its initial state and every prefix, not only its endpoint. -/
structure CombatSegment (start : Simulation) (inputs : List UInt32) (finish : Simulation) : Prop where
  reaches : run combatStep start inputs = finish
  safe : ∀ j, j ≤ inputs.length → combatSafe (run combatStep start (inputs.take j))

theorem combat_segment_nil (s : Simulation) (safe : combatSafe s) :
    CombatSegment s [] s := ⟨rfl, by intro j _; simpa only [List.take_nil, run_nil] using safe⟩

theorem combat_segment_cons (s t u : Simulation) (key : UInt32) (inputs : List UInt32)
    (step : s.tickCombatV1 key = t) (safe : combatSafe s)
    (tail : CombatSegment t inputs u) : CombatSegment s (key::inputs) u := by
  have step' : combatStep s key = t := step
  constructor
  · simpa only [run_cons, step'] using tail.reaches
  · intro j hj
    cases j with
    | zero => exact safe
    | succ j =>
      have hj' : j ≤ inputs.length := by simpa using hj
      simpa only [List.take_succ_cons, run_cons, step'] using tail.safe j hj'

theorem combat_segment_append (s t u : Simulation) (xs ys : List UInt32)
    (first : CombatSegment s xs t) (second : CombatSegment t ys u) :
    CombatSegment s (xs++ys) u := by
  constructor
  · rw [run_append, first.reaches, second.reaches]
  · intro j hj
    rw [List.take_append, run_append]
    by_cases h : j ≤ xs.length
    · have hz : j-xs.length = 0 := Nat.sub_eq_zero_of_le h
      simpa only [hz, List.take_zero, run_nil] using first.safe j h
    · have hlen : xs.length ≤ j := by omega
      have hrest : j-xs.length ≤ ys.length := by simp only [List.length_append] at hj; omega
      rw [List.take_of_length_le hlen, first.reaches]
      exact second.safe _ hrest

theorem twoImp_inputs_length : twoImpInputs.length = 386 := by decide +kernel

theorem twoImp_inputs_ordinary : ∀ key ∈ twoImpInputs, ordinaryCombatInput key = true := by
  have h : twoImpInputs.all ordinaryCombatInput = true := by decide +kernel
  exact List.all_eq_true.mp h

theorem twoImp_inputs_no_restart : ∀ key ∈ twoImpInputs, keyDown key 1024 = false := by
  have h : twoImpInputs.all (fun key => !keyDown key 1024) = true := by decide +kernel
  intro key hk
  have hk' := List.all_eq_true.mp h key hk
  cases hb : keyDown key 1024 <;> simp_all

theorem twoImp_map_valid : twoImpMap.validate.isOk = true := by decide +kernel

end LeanDoomProofs
