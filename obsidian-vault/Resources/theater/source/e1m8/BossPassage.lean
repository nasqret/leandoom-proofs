import Inputs
open Doom
namespace PhobosFinale
structure Events where
  initialBarons : Nat
  firstBaron : Nat
  bothBarons : Nat
  wallStarts : Nat
  stairs : Nat
  arrival : Nat
  arrivalHealth : Nat
  complete : Nat
  deriving DecidableEq, Repr

def first (old tick : Nat) (seen : Bool) : Nat :=
  if old == 0 && seen then tick else old

/-- Read each event from the simulation after the ordinary input. -/
def trace (group : Array Lump) (tape : List UInt32) : Option Events := do
  let map ← (Map.load group "E1M8").toOption
  let mut s ← (Simulation.spawn map true 1).toOption
  let tagged := (Array.range map.sectors.size).filter fun i => map.sectors[i]!.tag == 666
  let [wall] := tagged.toList | none
  let roster := s.actors.filter (·.kind == 3003)
  if roster.size != 2 || !roster.all (·.health == 1000) then return ← none
  let mut e : Events := ⟨roster.size,0,0,0,0,0,0,0⟩
  for k in tape do
    s := s.tickCombatV2 k true
    let t := s.ticks
    let alive := (s.actors.filter (fun a => a.kind == 3003 && a.health > 0)).size
    let place ← (s.map.sectorAt s.player.body.x s.player.body.y).toOption
    let arrival := place == 66 && s.map.sectors[place]!.special == 11
    e := { e with
      firstBaron := first e.firstBaron t (alive < 2)
      bothBarons := first e.bothBarons t (alive == 0)
      wallStarts := first e.wallStarts t (s.movers.any (·.sector == wall))
      stairs := first e.stairs t (s.movers.any (·.sector == 53))
      arrival := first e.arrival t arrival
      arrivalHealth := if e.arrival == 0 && arrival then s.inventory.health else e.arrivalHealth
      complete := first e.complete t s.exitRequested }
  return e
end PhobosFinale
namespace Recording
theorem bossSequence :
    PhobosFinale.trace group tape =
      some ⟨2,2007,2280,2327,2625,3089,8,3090⟩ := by native_decide
end Recording
