import CentralInputs
set_option maxRecDepth 65536
set_option maxHeartbeats 0

namespace CentralSpectrePassage
open Doom Recording

structure Checkpoints where
  ticks : Nat
  keys : Nat × Nat × Nat
  switches : Nat × Nat
  wingEntered : Nat
  health : Nat
  leastHealth : Nat
  armor : Nat
  shots : Nat
  kills : Nat
  x : Int
  y : Int
  exitRequested : Bool
  safePrefixes : Bool
  deriving DecidableEq, Repr

def firstTick (previous tick : Nat) (condition : Bool) : Nat :=
  if previous == 0 && condition then tick else previous

/-- Observe actual key and line state. No checkpoint coordinates or events enter the simulation. -/
def checkpoints (group : Array Lump) (tape : List UInt32) : Option Checkpoints := do
  let mut s ← ((Map.load group "E1M6").bind (fun m => Simulation.spawn m true 1)).toOption
  let mut red := 0
  let mut blue := 0
  let mut yellow := 0
  let mut firstSwitch := 0
  let mut secondSwitch := 0
  let mut wing := 0
  let mut low := s.inventory.health
  let mut safe := true
  for k in tape do
    safe := safe && OriginalReplay.ordinary k && s.physicsError.isNone && s.inventory.health > 0 && !s.exitRequested
    s := s.tickCombatV2 k true
    let t := s.ticks
    red := firstTick red t s.inventory.red
    blue := firstTick blue t s.inventory.blue
    yellow := firstTick yellow t s.inventory.yellow
    firstSwitch := firstTick firstSwitch t (s.map.lines[822]?.any (fun l => l.special == 0))
    secondSwitch := firstTick secondSwitch t (s.map.lines[599]?.any (fun l => l.special == 0))
    let sector := (s.map.sectorAt s.player.body.x s.player.body.y).toOption
    wing := firstTick wing t (sector.any fun i => 29 ≤ i && i ≤ 33)
    low := min low s.inventory.health
  return ⟨s.ticks,(red,blue,yellow),(firstSwitch,secondSwitch),wing,s.inventory.health,low,
          s.inventory.armor,s.shots,s.kills,s.player.body.x.raw.toInt,s.player.body.y.raw.toInt,
          s.exitRequested,safe && s.physicsError.isNone && s.inventory.health > 0⟩
end CentralSpectrePassage

namespace CentralSpectrePassage

theorem observedCheckpoints :
    CentralSpectrePassage.checkpoints Recording.group Recording.tape = some ⟨3207,(169,597,1396),(2083,2459),3156,40,14,83,70,25,-125996702,132126572,true,true⟩ := by native_decide

theorem ordinaryPassage :
    OriginalReplay.passage Recording.group "E1M6" Recording.tape = true := by native_decide

end CentralSpectrePassage
