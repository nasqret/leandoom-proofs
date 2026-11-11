import LeanDoomProofs.Trace

namespace LeanDoomProofs
universe u v
variable {S : Type u} {A : Type v}

/-- Restrict the edge argument to a proved invariant, e.g. valid maps and
nonwrapping arithmetic. This avoids silently assuming every bit pattern is sane. -/
theorem potential_bound_on_invariant (step : S → A → S) (charge : S → A → Nat)
    (P : S → Prop) (potential : S → Nat)
    (preserved : ∀ s a, P s → P (step s a))
    (edge : ∀ s a, P s → potential s ≤ charge s a + potential (step s a))
    (s : S) (actions : List A) (initial : P s) :
    potential s ≤ cost step charge s actions + potential (run step s actions) := by
  induction actions generalizing s with
  | nil => simp [cost, run]
  | cons a actions ih =>
    have first := edge s a initial
    have rest := ih (step s a) (preserved s a initial)
    simp only [cost, run]
    omega

/-- A found winning path and a lower-bound potential can certify optimality.
Search is untrusted: the witness and inequalities are the checked certificate. -/
theorem certified_optimal (step : S → A → S) (charge : S → A → Nat)
    (goal : S → Prop) (potential : S → Nat)
    (edge : ∀ s a, potential s ≤ charge s a + potential (step s a))
    (finish : ∀ s, goal s → potential s = 0)
    (s : S) (witness : List A) (wins : goal (run step s witness))
    (tight : cost step charge s witness = potential s) :
    goal (run step s witness) ∧
    ∀ alternative, goal (run step s alternative) →
      cost step charge s witness ≤ cost step charge s alternative := by
  refine ⟨wins, ?_⟩
  intro alternative otherWins
  rw [tight]
  exact winning_cost_lower_bound step charge potential goal edge finish s alternative otherWins

/-- A zero-cost winning route rules out every positive universal lower bound.
For bullets, melee and switches cost zero; pickups do not count as negative shots. -/
theorem zero_cost_win_rules_out_positive_bound
    (step : S → A → S) (charge : S → A → Nat) (goal : S → Prop)
    (s : S) (witness : List A)
    (wins : goal (run step s witness)) (free : cost step charge s witness = 0)
    (bound : Nat)
    (universal : ∀ actions, goal (run step s actions) → bound ≤ cost step charge s actions) :
    bound = 0 := by
  have h := universal witness wins
  rw [free] at h
  omega

/-- A simple geometric certificate schema. The abstraction measures remaining
raw displacement, and every action closes at most speed units. Teleports and
wraparound must be excluded or included in the edge premise. -/
theorem displacement_bound (step : S → A → S) (remaining : S → Nat) (speed : Nat)
    (edge : ∀ s a, remaining s ≤ speed + remaining (step s a))
    (s : S) (actions : List A) :
    remaining s ≤ speed * actions.length + remaining (run step s actions) := by
  induction actions generalizing s with
  | nil => simp [run]
  | cons a actions ih =>
    have first := edge s a
    have rest := ih (step s a)
    simp only [run, List.length_cons, Nat.mul_add, Nat.mul_one]
    omega

end LeanDoomProofs
