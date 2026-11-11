import RngExperiment
namespace RngExperiment
abbrev Blocks := List (Option (Nat × List Outcome))

def outcomes (blocks : Blocks) : List Outcome :=
  blocks.flatMap fun block => match block with
    | some (_, entries) => entries
    | none => []

/-- The input suffix after the first live, error-free exit is immaterial. -/
def safeExitWithin (o : Outcome) : Bool :=
  match o.firstExitTick with
  | none => false
  | some t =>
    o.firstDeathTick.all (fun death => decide (t < death)) &&
    o.errorTick.all (fun error => decide (t < error))

def winCount (blocks : Blocks) : Nat :=
  ((outcomes blocks).filter safeExitWithin).length

/-- The first safe exit must occur on the literal final input. -/
def lastInputWinCount (blocks : Blocks) (length : Nat) : Nat :=
  ((outcomes blocks).filter fun o => safeExitWithin o && o.firstExitTick == some length).length

def outcomeAt (blocks : Blocks) (i : Nat) : Option Outcome :=
  (outcomes blocks).find? fun o => o.index == i

def winsAt (blocks : Blocks) (i : Nat) : Bool :=
  (outcomeAt blocks i).any safeExitWithin

def eventsAndHealth (blocks : Blocks) (i : Nat) :
    Option (Option Nat × Option Nat × Option Nat × Nat) :=
  (outcomeAt blocks i).map fun o => (o.firstExitTick, o.firstDeathTick, o.errorTick, o.health)
end RngExperiment
