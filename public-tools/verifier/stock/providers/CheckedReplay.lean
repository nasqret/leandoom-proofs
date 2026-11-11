import LeanDoomProofs.Trace
import LeanDoomProofs.CombatWitness
import LeanDoomProofs.CombatV2

/-! A proof-producing caller can split this executable replay at arbitrary input
boundaries. Its guards observe the existing engine; they never set game state. -/
namespace LeanDoomProofs.CheckedReplay
open Doom

def step (s : Simulation) (key : UInt32) : Simulation := s.tickCombatV2 key true

def allowed (key : UInt32) : Bool := ordinaryCombatInput key && !keyDown key 1024

/-- Once a physics error is reached, a restart-free combat tick cannot erase it. -/
theorem error_sticky (s : Simulation) (key : UInt32) (e : String)
    (bad : s.physicsError = some e) (keep : keyDown key 1024 = false) :
    (step s key).physicsError = some e := by
  cases won : s.exitRequested <;>
    simp [step, Simulation.tickCombatV2, Simulation.interactionTick, keep, won, bad]

theorem run_error_sticky (s : Simulation) (ks : List UInt32) (e : String)
    (bad : s.physicsError = some e) (keep : ∀ k ∈ ks, allowed k = true) :
    (run step s ks).physicsError = some e := by
  induction ks generalizing s with
  | nil => exact bad
  | cons k ks ih =>
    have hk := keep k (List.mem_cons_self ..)
    have keepk : keyDown k 1024 = false := by simpa [allowed] using (Bool.and_eq_true_iff.mp hk).2
    exact ih _ (error_sticky s k e bad keepk) (fun n h => keep n (List.mem_cons_of_mem _ h))

/-- One certified endpoint error flag thus proves error freedom at every prefix. -/
theorem error_free_prefix (s : Simulation) (ks : List UInt32)
    (keep : ∀ k ∈ ks, allowed k = true) (ok : (run step s ks).physicsError = none) (j : Nat) :
    (run step s (ks.take j)).physicsError = none := by
  cases h : (run step s (ks.take j)).physicsError with
  | none => rfl
  | some e =>
    have later := run_error_sticky _ (ks.drop j) e h
      (fun k hk => keep k (List.mem_of_mem_drop hk))
    rw [← run_append,List.take_append_drop,ok] at later
    contradiction

/-- Return the exact reached simulation. Each consumed mask must be legal, and
every proper prefix must be alive and still playing. The endpoint is checked
only when a route is closed, so chunks compose without changing this meaning. -/
def scan (s : Simulation) : List UInt32 → Option Simulation
  | [] => some s
  | k :: ks =>
    if allowed k && decide (0 < s.inventory.health) && !s.exitRequested
    then scan (step s k) ks else none

theorem scan_append (s : Simulation) (xs ys : List UInt32) :
    scan s (xs ++ ys) = (scan s xs).bind (fun t => scan t ys) := by
  induction xs generalizing s with
  | nil => rfl
  | cons k xs ih =>
    simp only [List.cons_append,scan]
    split <;> simp_all

theorem append_checked (s t u : Simulation) (xs ys : List UInt32)
    (left : scan s xs = some t) (right : scan t ys = some u) :
    scan s (xs ++ ys) = some u := by
  rw [scan_append,left]
  exact right

theorem scan_sound (s t : Simulation) (ks : List UInt32) (h : scan s ks = some t) :
    run step s ks = t ∧ (∀ k ∈ ks, allowed k = true) ∧
    ∀ j, j < ks.length →
      0 < (run step s (ks.take j)).inventory.health ∧
      (run step s (ks.take j)).exitRequested = false := by
  induction ks generalizing s with
  | nil =>
    simp only [scan, Option.some.injEq] at h
    exact ⟨h, by simp, by simp⟩
  | cons k ks ih =>
    simp only [scan] at h
    split at h
    · rename_i guard
      have accepted := Bool.and_eq_true_iff.mp guard
      have positive := Bool.and_eq_true_iff.mp accepted.1
      have inputs := ih (step s k) h
      refine ⟨inputs.1, ?_, ?_⟩
      · intro a ha
        rcases List.mem_cons.mp ha with rfl | ha
        · exact positive.1
        · exact inputs.2.1 a ha
      · intro j hj
        cases j with
        | zero => exact ⟨of_decide_eq_true positive.2, by simpa using accepted.2⟩
        | succ j =>
          exact inputs.2.2 j (by simpa using hj)
    · contradiction

/-- Includes the parsed level, ordinary medium spawn, exact endpoint, every
prefix's safety, and the first tick on which the ordinary engine requests exit. -/
def Passage (group : Array Lump) (name : String) (ks : List UInt32) : Prop :=
  ∃ (m : Map) (s t : Simulation),
    Map.load group name = .ok m ∧ Simulation.spawn m true 1 = .ok s ∧
    run step s ks = t ∧ (∀ k ∈ ks, allowed k = true) ∧
    (∀ j, j ≤ ks.length → combatSafe (run step s (ks.take j))) ∧
    (∀ j, (run step s (ks.take j)).exitRequested = decide (ks.length ≤ j))

theorem passage_of_scan (group : Array Lump) (name : String) (m : Map) (s t : Simulation)
    (ks : List UInt32) (parse : Map.load group name = .ok m)
    (spawn : Simulation.spawn m true 1 = .ok s) (checked : scan s ks = some t)
    (safe : combatSafe t) (won : t.exitRequested = true) : Passage group name ks := by
  obtain ⟨arrives,inputs,before⟩ := scan_sound s t ks checked
  refine ⟨m,s,t,parse,spawn,arrives,inputs,?_,?_⟩
  · intro j hj
    refine ⟨error_free_prefix s ks inputs (arrives ▸ safe.1) j,?_⟩
    by_cases early : j < ks.length
    · exact (before j early).1
    · have len : ks.length ≤ j := by omega
      rw [List.take_of_length_le len,arrives]
      exact safe.2
  · intro j
    by_cases late : ks.length ≤ j
    · simp only [late,decide_true,List.take_of_length_le late,arrives,won]
    · simp only [late,decide_false]
      exact (before j (by omega)).2

#print axioms error_sticky
#print axioms error_free_prefix
#print axioms append_checked
#print axioms scan_sound
#print axioms passage_of_scan
end LeanDoomProofs.CheckedReplay
