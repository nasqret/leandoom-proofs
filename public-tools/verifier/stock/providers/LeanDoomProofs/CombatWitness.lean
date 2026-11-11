import LeanDoomProofs.CombatMap
import LeanDoomProofs.CombatV1

namespace LeanDoomProofs
open Doom

/-- Run-length encoded candidate witness. Durations count complete 35 Hz ticks.
Its native success is recorded separately from kernel certification. -/
def twoImpBlocks : List (Nat × UInt32) :=
  [(26,0),(75,8192),(16,18),(15,2),(12,8),(25,2),
   (1,4096),(65,0),(80,8192),(70,2),(1,4096)]

def twoImpInputs : List UInt32 :=
  twoImpBlocks.flatMap fun (duration,keys) => List.replicate duration keys

/-- Ordinary movement, speed, use, fire, and the three supported weapon keys.
Restart, free-flight and vertical inspection controls are excluded. -/
def ordinaryCombatInput (keys : UInt32) : Bool :=
  keys &&& (~~~ (2 ||| 4 ||| 8 ||| 16 ||| 32 ||| 64 ||| 512 |||
    4096 ||| 8192 ||| 16384 ||| 32768 ||| 65536)) == 0

def combatSafe (s : Simulation) : Prop :=
  s.physicsError = none ∧ 0 < s.inventory.health

def combatAttack (s : Simulation) : Bool :=
  s.impEvents.any fun (_,event) => match event with
    | .melee _ _ | .missile _ => true
    | _ => false

end LeanDoomProofs
