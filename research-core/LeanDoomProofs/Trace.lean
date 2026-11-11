import Init.Omega

/-! A small, total semantics for finite action traces. No Doom behavior is
reimplemented here: `step` is supplied by the client, including the real tick. -/
namespace LeanDoomProofs

universe u v
variable {S : Type u} {A : Type v}

def run (step : S → A → S) : S → List A → S
  | s, [] => s
  | s, a :: as => run step (step s a) as

def cost (step : S → A → S) (charge : S → A → Nat) : S → List A → Nat
  | _, [] => 0
  | s, a :: as => charge s a + cost step charge (step s a) as

@[simp] theorem run_nil (step : S → A → S) (s : S) : run step s [] = s := rfl

@[simp] theorem run_cons (step : S → A → S) (s : S) (a : A) (as : List A) :
    run step s (a :: as) = run step (step s a) as := rfl

theorem run_append (step : S → A → S) (s : S) (xs ys : List A) :
    run step s (xs ++ ys) = run step (run step s xs) ys := by
  induction xs generalizing s with
  | nil => rfl
  | cons a xs ih => exact ih (step s a)

/-- A strategy certificate: a supplied finite list really reaches the goal. -/
def Wins (step : S → A → S) (goal : S → Prop) (s : S) : Prop :=
  ∃ actions : List A, goal (run step s actions)

/-- The potential may decrease by no more than the actual charge of an edge. -/
theorem potential_bound (step : S → A → S) (charge : S → A → Nat)
    (potential : S → Nat)
    (edge : ∀ s a, potential s ≤ charge s a + potential (step s a))
    (s : S) (actions : List A) :
    potential s ≤ cost step charge s actions + potential (run step s actions) := by
  induction actions generalizing s with
  | nil => simp [cost, run]
  | cons a actions ih =>
    have first := edge s a
    have rest := ih (step s a)
    simp only [cost, run]
    omega

/-- One certificate proves a lower bound for every winning input trace. -/
theorem winning_cost_lower_bound (step : S → A → S) (charge : S → A → Nat)
    (potential : S → Nat) (goal : S → Prop)
    (edge : ∀ s a, potential s ≤ charge s a + potential (step s a))
    (finish : ∀ s, goal s → potential s = 0)
    (s : S) (actions : List A) (wins : goal (run step s actions)) :
    potential s ≤ cost step charge s actions := by
  have bound := potential_bound step charge potential edge s actions
  rw [finish _ wins, Nat.add_zero] at bound
  exact bound

theorem unit_cost (step : S → A → S) (s : S) (actions : List A) :
    cost step (fun _ _ => 1) s actions = actions.length := by
  induction actions generalizing s with
  | nil => rfl
  | cons a actions ih => simp [cost, ih, Nat.add_comm]

theorem winning_step_lower_bound (step : S → A → S) (potential : S → Nat)
    (goal : S → Prop)
    (edge : ∀ s a, potential s ≤ 1 + potential (step s a))
    (finish : ∀ s, goal s → potential s = 0)
    (s : S) (actions : List A) (wins : goal (run step s actions)) :
    potential s ≤ actions.length := by
  have h := winning_cost_lower_bound step (fun _ _ => 1) potential goal edge finish s actions wins
  simpa [unit_cost] using h

/-- Lift a lower-bound certificate from an overapproximation. Unlike a winning
path, a lower bound remains valid when extra moves are allowed in the abstraction. -/
theorem abstract_potential_bound {Q : Type} (step : S → A → S)
    (charge : S → A → Nat) (abstract : S → Q) (edgeQ : Q → Q → Prop)
    (p : Q → Nat)
    (simulation : ∀ s a, edgeQ (abstract s) (abstract (step s a)))
    (bound : ∀ s a, edgeQ (abstract s) (abstract (step s a)) →
      p (abstract s) ≤ charge s a + p (abstract (step s a)))
    (s : S) (actions : List A) :
    p (abstract s) ≤ cost step charge s actions + p (abstract (run step s actions)) :=
  potential_bound step charge (fun s => p (abstract s))
    (fun s a => bound s a (simulation s a)) s actions

/-- Inductive invariant transport through arbitrarily long traces. -/
theorem run_invariant (step : S → A → S) (P : S → Prop)
    (preserved : ∀ s a, P s → P (step s a))
    (s : S) (actions : List A) (initial : P s) : P (run step s actions) := by
  induction actions generalizing s with
  | nil => exact initial
  | cons a actions ih => exact ih _ (preserved s a initial)

end LeanDoomProofs
