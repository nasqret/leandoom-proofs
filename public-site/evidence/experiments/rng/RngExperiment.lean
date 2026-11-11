import OriginalReplay

/-! Each alternative changes the single gameplay RNG byte after ordinary combat spawn.
The first observed death, physics error, and exit use one-based controller indices.
The endpoint continues to the end of the input list, including corpse and post-exit ticks. -/
namespace RngExperiment
open Doom

structure Outcome where
  index : Nat
  firstExitTick : Option Nat
  firstDeathTick : Option Nat
  errorTick : Option Nat
  health : Nat
  shots : Nat
  xRaw : Int
  yRaw : Int
  angleRaw : Nat
  deriving DecidableEq, Repr, Lean.ToJson

structure Frame where
  tick : Nat
  xRaw : Int
  yRaw : Int
  angleRaw : Nat
  health : Nat
  shots : Nat
  kills : Nat
  launches : Nat
  exit : Bool
  error : Bool
  deriving Repr, Lean.ToJson

def frame (tick : Nat) (s : Simulation) : Frame :=
  ⟨tick, s.player.body.x.raw.toInt, s.player.body.y.raw.toInt,
    s.player.body.angle.raw.toNat, s.inventory.health, s.shots, s.kills,
    s.projectiles.size, s.exitRequested, s.physicsError.isSome⟩

private def noticed (old : Option Nat) (observed : Bool) (tick : Nat) : Option Nat :=
  if observed && old.isNone then some tick else old

def withPlay (s : Simulation) (index : UInt8) : Simulation :=
  { s with rng := { s.rng with play := index } }

def replay (base : Simulation) (commands : List UInt32) (index : UInt8) (capture : Bool) :
    Outcome × Array Frame := Id.run do
  let mut s := withPlay base index
  let mut tick := 0
  let mut firstExit := noticed none s.exitRequested 0
  let mut firstDeath := noticed none (s.inventory.health == 0) 0
  let mut firstError := noticed none s.physicsError.isSome 0
  let mut frames := if capture then #[frame 0 s] else #[]
  for key in commands do
    tick := tick + 1
    s := s.tickCombatV2 key true
    firstExit := noticed firstExit s.exitRequested tick
    firstDeath := noticed firstDeath (s.inventory.health == 0) tick
    firstError := noticed firstError s.physicsError.isSome tick
    if capture then frames := frames.push (frame tick s)
  return (⟨index.toNat, firstExit, firstDeath, firstError, s.inventory.health, s.shots,
    s.player.body.x.raw.toInt, s.player.body.y.raw.toInt, s.player.body.angle.raw.toNat⟩, frames)

def classifyBlock (group : Array Lump) (level : String) (commands : List UInt32) (block : Nat) :
    Option (Nat × List Outcome) := do
  let base ← ((Map.load group level).bind (fun m => Simulation.spawn m true 1)).toOption
  let outcomes := (List.range 16).map fun n => (replay base commands (16 * block + n).toUInt8 false).1
  return (base.rng.play.toNat, outcomes)

/-- Block b contains indices 16*b through 16*b+15. The sixteen blocks exhaust UInt8. -/
def classify (group : Array Lump) (level : String) (commands : List UInt32) :
    List (Option (Nat × List Outcome)) :=
  (List.range 16).map (classifyBlock group level commands)

end RngExperiment
