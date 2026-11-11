import Doom.Random

/-!
# Reading a Doom damage roll

The imp projectile callback uses `3 * (roll % 8 + 1)` after a collision.
This module studies that arithmetic with CombatV2's imported RNG.
The passage experiment separately computes which collisions actually occur.
-/

namespace Doom.Experiments.DamageRoll

def amount (roll : Nat) : Nat := 3 * (roll % 8 + 1)

def nextAmount (play : UInt8) : Nat :=
  amount (DoomRandom.nextPlay { play := play }).1

/-- One count for each attainable damage, in increasing order, across all
    gameplay indices immediately before the collision's draw. -/
def counts : List Nat :=
  let outcomes := (List.range 256).map (fun i => nextAmount (UInt8.ofNat i))
  (List.range 8).map (fun j => outcomes.count (3 * (j + 1)))

set_option maxRecDepth 8192 in
set_option maxHeartbeats 4000000 in
theorem damage_counts : counts = [32, 30, 38, 27, 34, 34, 30, 31] := by
  decide +kernel

/-- Consume any specified number of presentation draws. -/
def advanceMisc (r : DoomRandom) : Nat → DoomRandom
  | 0 => r
  | n + 1 => advanceMisc r.nextMisc.2 n

theorem advanceMisc_play (r : DoomRandom) (n : Nat) :
    (advanceMisc r n).play = r.play := by
  induction n generalizing r with
  | zero => rfl
  | succ n ih => exact (ih r.nextMisc.2).trans (DoomRandom.nextMisc_preserves_play r)

/-- Each schedule entry is a number of presentation draws before the next gameplay draw. -/
def observed (r : DoomRandom) : List Nat → List Nat
  | [] => []
  | gap :: rest =>
    let (value, next) := (advanceMisc r gap).nextPlay
    value :: observed next rest

def playOnly (i : UInt8) : Nat → List Nat
  | 0 => []
  | n + 1 => randomAt (i + 1) :: playOnly (i + 1) n

/-- Presentation activity can vary before every draw without changing any
    element of the gameplay stream for that schedule. -/
theorem presentation_schedule (r : DoomRandom) (schedule : List Nat) :
    observed r schedule = playOnly r.play schedule.length := by
  induction schedule generalizing r with
  | nil => rfl
  | cons gap rest ih =>
    simp only [observed, List.length_cons, playOnly, ih, DoomRandom.nextPlay, advanceMisc_play]

#print axioms damage_counts
#print axioms presentation_schedule

end Doom.Experiments.DamageRoll
