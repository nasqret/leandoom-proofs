import Std

namespace PassageLab

inductive Phase where
  | dock | carrying | opened | outside
  deriving DecidableEq, Repr

inductive Key where
  | collect | use | walk | wait | fire
  deriving DecidableEq, BEq, Repr

def step : Phase → Key → Phase
  | .dock, .collect => .carrying
  | .carrying, .use => .opened
  | .opened, .walk => .outside
  | s, _ => s

def run (s : Phase) : List Key → Phase
  | [] => s
  | k :: ks => run (step s k) ks

def states (s : Phase) : List Key → List Phase
  | [] => [s]
  | k :: ks => s :: states (step s k) ks

def rank : Phase → Nat
  | .dock => 0
  | .carrying => 1
  | .opened => 2
  | .outside => 3

def route : List Key := [.collect, .use, .walk]

theorem passage : run .dock route = .outside := by decide

theorem checkedStates :
    states .dock route = [.dock, .carrying, .opened, .outside] := by decide

theorem noFire : route.count .fire = 0 := by decide

theorem stepBound (s : Phase) (k : Key) : rank (step s k) ≤ rank s + 1 := by
  cases s <;> cases k <;> decide

theorem runBound (s : Phase) (ks : List Key) :
    rank (run s ks) ≤ rank s + ks.length := by
  induction ks generalizing s with
  | nil => simp [run]
  | cons k ks ih =>
    have tailBound := ih (step s k)
    have headBound := stepBound s k
    simp only [run, List.length_cons]
    omega

theorem minimumLength {ks : List Key} (wins : run .dock ks = .outside) :
    3 ≤ ks.length := by
  have h := runBound .dock ks
  rw [wins] at h
  simpa [rank] using h

theorem runAppend (s : Phase) (u v : List Key) :
    run s (u ++ v) = run (run s u) v := by
  induction u generalizing s with
  | nil => rfl
  | cons k ks ih => exact ih (step s k)

end PassageLab
