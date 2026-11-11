import OriginalReplay

/-! A single added strafe between the third imp fireball's launch and the
    original impact. All other inputs in each edited recording are unchanged. -/
namespace HangarFork
open Doom

def forkPoint := 886
def subjectSlot := 2

def phase (s : Simulation) : Nat :=
  match s.projectiles[subjectSlot]? with
  | none => 0
  | some missile => if missile.removed then 3 else if missile.exploding then 2 else 1

def playerHits (s : Simulation) : Array Nat :=
  s.projectileEvents.filterMap fun (slot, event) =>
    if slot == subjectSlot then
      match event with
      | .hit 0 damage => some damage
      | _ => none
    else none

structure Outcome where
  tick : Nat := 0
  health : Nat := 0
  exitTick : Nat := 0
  hitTick : Nat := 0
  hitDamage : Nat := 0
  hitCount : Nat := 0
  explosionTick : Nat := 0
  removalTick : Nat := 0
  phaseAtEnd : Nat := 0
  hpAt923 : Nat := 0
  phaseAt923 : Nat := 0
  everyStateSafe : Bool := true
  everyCommandOrdinary : Bool := true
  deriving DecidableEq, Lean.ToJson

def first (previous now : Nat) (observed : Bool) : Nat :=
  if previous == 0 && observed then now else previous

def observe (prior : Outcome) (s : Simulation) : Outcome :=
  let hits := playerHits s
  let current := phase s
  { tick := s.ticks, health := s.inventory.health
    exitTick := first prior.exitTick s.ticks s.exitRequested
    hitTick := first prior.hitTick s.ticks (!hits.isEmpty)
    hitDamage := prior.hitDamage + hits.foldl (· + ·) 0
    hitCount := prior.hitCount + hits.size
    explosionTick := first prior.explosionTick s.ticks (current == 2)
    removalTick := first prior.removalTick s.ticks (current == 3)
    phaseAtEnd := current
    hpAt923 := if s.ticks == 923 then s.inventory.health else prior.hpAt923
    phaseAt923 := if s.ticks == 923 then current else prior.phaseAt923
    everyStateSafe := prior.everyStateSafe && s.inventory.health > 0 && s.physicsError.isNone
    everyCommandOrdinary := prior.everyCommandOrdinary }

abbrev Run := Simulation × Outcome

def finished (r : Run) : Bool := r.1.exitRequested || !r.2.everyStateSafe

def advance (r : Run) (mask : UInt32) : Run :=
  if finished r then r else
    let s := r.1.tickCombatV2 mask true
    (s, observe {r.2 with everyCommandOrdinary := r.2.everyCommandOrdinary && OriginalReplay.ordinary mask} s)

def earlyTape (base : Array UInt32) : Array UInt32 := (base.extract 0 991).push 4096

/-- The case index is (edited input minus 887) times two, plus zero for left
    or one for right. Each case keeps every original mask except the cited one. -/
def edited (base : Array UInt32) (i : Nat) : Array UInt32 :=
  let pos := forkPoint + i / 2
  let added : UInt32 := if i % 2 == 0 then 8 else 16
  base.set! pos (base[pos]! ||| added)

def tapes (base learned : Array UInt32) : Array (Array UInt32) :=
  #[base, earlyTape base, learned] ++ (Array.range 72).map (edited base)

def start (group : Array Lump) : Except String Run := do
  let m ← Map.load group "E1M1"
  let s ← Simulation.spawn m true 1
  return (s, observe {} s)

/-- All 75 controllers share a prefix. Check that equality explicitly before
    reusing its full simulation state. After an exit or unsafe frame, stop. -/
def evaluate (group : Array Lump) (base learned : Array UInt32) : Option (Array Outcome) := do
  let initial ← (start group).toOption
  let common := base.extract 0 forkPoint
  let prefixState := common.foldl advance initial
  let controllers := tapes base learned
  guard (base.size == 993 && learned.size == 978 &&
    controllers.all (fun tape => tape.all OriginalReplay.ordinary && tape.extract 0 forkPoint == common))
  return controllers.map fun tape => ((tape.extract forkPoint tape.size).foldl advance prefixState).2

/-- The edited controllers only, grouped by collision with projectile 2 and
    successful passage. All tests stop at each controller's observed horizon. -/
def census (rows : Array Outcome) : Array Nat :=
  let cases := rows.extract 3 rows.size
  #[cases.size,
    (cases.filter fun r => r.hitTick > 0 && r.hitTick < 923).size,
    (cases.filter fun r => r.hitTick == 923).size,
    (cases.filter fun r => r.hitTick > 923).size,
    (cases.filter fun r => r.hitCount == 0).size,
    (cases.filter fun r => r.hitCount == 0 && r.removalTick > 0).size,
    (cases.filter fun r => r.exitTick > 0 && r.everyStateSafe && r.everyCommandOrdinary).size]

end HangarFork
