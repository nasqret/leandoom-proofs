import Inputs
open Doom
namespace AnomalyComparison

structure Tick where
  number : Nat
  sector : Option Nat
  healthBefore : Nat
  afterInteraction : Nat
  healthAfter : Nat
  armorAfter : Nat
  exitAfter : Bool
  deriving DecidableEq

/-- Compare the interaction phase with the rest of an actual recorded tick. -/
def trace (group : Array Lump) (level : String) (tape : List UInt32) : Option (List Tick) := do
  let m ← (Map.load group level).toOption
  let mut s ← (Simulation.spawn m true 1).toOption
  let mut rows := []
  for k in tape do
    let before := s
    s := before.tickCombatV2 k true
    if [3071,3073,3091,3092].contains s.ticks then
      let sector := (s.map.sectorAt s.player.body.x s.player.body.y).toOption
      let interaction := before.interactionTick k true
      rows := ⟨s.ticks,sector,before.inventory.health,interaction.inventory.health,
        s.inventory.health,s.inventory.armor,s.exitRequested⟩ :: rows
  return rows.reverse
end AnomalyComparison

namespace Recording
theorem endRoomDamageAndExit :
    AnomalyComparison.trace group mapName tape = some
      [⟨3071,some 66,44,44,44,63,false⟩, ⟨3073,some 66,44,30,30,57,false⟩,
       ⟨3091,some 66,30,30,1,44,false⟩, ⟨3092,some 66,1,1,1,44,true⟩] := by
  native_decide
end Recording
