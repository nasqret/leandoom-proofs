import Inputs

open Doom
namespace PhobosLab

structure PickupMoment where
  mapThing : Nat
  editorType : Nat
  tick : Nat
  healthBefore : Nat
  healthAfter : Nat
  activeBefore : Bool
  activeAfter : Bool
  collectedBefore : Bool
  collectedAfter : Bool
  deriving DecidableEq

/-- Replay to the last state before contact, then run the one recorded input. -/
def soulsphere (group : Array Lump) (level : String) (keys : List UInt32)
    (beforeTick : Nat) : Option PickupMoment := do
  let map ← (Map.load group level).toOption
  let start ← (Simulation.spawn map true 1).toOption
  let id ← map.things.findIdx? fun t => t.kind == 2013
  let command ← keys[beforeTick]?
  let before := (keys.take beforeTick).foldl (fun s k => s.tickCombatV2 k true) start
  let after := before.tickCombatV2 command true
  let item ← before.map.things[id]?
  let consumed ← after.map.things[id]?
  return ⟨id, item.kind, after.ticks, before.inventory.health, after.inventory.health,
    item.active, consumed.active, before.collected.contains id, after.collected.contains id⟩

end PhobosLab

namespace Recording
theorem soulspherePickup :
    PhobosLab.soulsphere group mapName tape 1944 =
      some ⟨169, 2013, 1945, 55, 155, true, false, false, true⟩ := by native_decide
end Recording
