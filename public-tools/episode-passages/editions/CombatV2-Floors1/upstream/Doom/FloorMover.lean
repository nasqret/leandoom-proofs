/-
E1M1 turboLower floors and downWaitUpStay platforms, from Chocolate Doom 3.1.1
p_floor.c, p_plats.c and p_spec.c, commit 410d96855b5df5410ff591a90efeafa889119224.
Derived from id Software (1993-1996), Simon Howard (2005-2014).
SPDX-License-Identifier: GPL-2.0-or-later. See COPYING.md.
-/
import Doom.Plane
import Doom.Map

namespace Doom.FloorMover

inductive Kind where
  | turboLower | lift | raisePlat | raiseFloor
  deriving BEq, Repr, Inhabited

inductive Status where
  | up | down | waiting | stasis
  deriving BEq, Repr, Inhabited

inductive Sound where
  | move | stop | start
  deriving BEq, Repr, Inhabited

inductive Event where
  | sound (value : Sound)
  | remove
  deriving BEq, Repr

structure Thinker where
  sector : Nat := 0
  kind : Kind := .turboLower
  speed : Fixed := Fixed.ofInt 4
  low : Fixed := ⟨0⟩
  high : Fixed := ⟨0⟩
  status : Status := .down
  wait : Int32 := 105
  count : Int32 := 0
  deriving BEq, Repr, Inhabited

def turbo (floor highest : Fixed) : Thinker :=
  { low := if highest == floor then highest else highest + Fixed.ofInt 8 }

def lift (floor lowest : Fixed) : Thinker :=
  { kind := .lift, low := ⟨min lowest.raw floor.raw⟩, high := floor }

structure Step (σ : Type) where
  thinker : Thinker
  heights : Plane.Heights
  state : σ
  events : Array Event := #[]
  removed : Bool := false

/-- The original floor/platform thinkers restricted to these two non-crushing
kinds. Plane callback effects persist through rollback; completion/removal and
sound requests retain their original order. -/
def Thinker.tick (t : Thinker) (heights : Plane.Heights) (levelTime : Int32) (state : σ)
    (change : Plane.Heights → Bool → σ → Bool × σ) : Step σ := Id.run do
  let mut out : Step σ := ⟨t,heights,state,#[],false⟩
  let platform := t.kind == .lift || t.kind == .raisePlat
  if platform && t.status == .stasis then return out
  if platform && t.status == .waiting then
    let count := t.count-1
    let status := if count == 0 then (if heights.floor == t.low then .up else .down) else .waiting
    return { out with thinker := { t with count, status }, events := if count == 0 then #[.sound .start] else #[] }
  let up := (platform || t.kind == .raiseFloor) && t.status == .up
  let result := Plane.move heights t.speed (if up then t.high else t.low) false .floor
    (if up then 1 else -1) state change
  out := { out with heights := result.heights, state := result.state }
  if t.kind == .raisePlat && up && levelTime &&& 7 == 0 then
    out := { out with events := #[.sound .move] }
  if t.kind == .turboLower || t.kind == .raiseFloor then
    if levelTime &&& 7 == 0 then out := { out with events := #[.sound .move] }
    if result.result == .pastDestination then
      out := { out with removed := true, events := out.events ++ #[.remove,.sound .stop] }
  else if up && result.result == .crushed then
    out := { out with thinker := { t with status := .down, count := t.wait }, events := out.events.push (.sound .start) }
  else if result.result == .pastDestination then
    out := { out with
      thinker := { t with status := .waiting, count := t.wait }
      removed := up, events := out.events ++ (if up then #[.sound .stop,.remove] else #[.sound .stop]) }
  return out

/-- Original getNextSector/P_Find*FloorSurrounding. Highest deliberately starts
at -500, not the sector's own floor; lowest starts at the current floor. -/
def surrounding (map : Map) (sector : Nat) : Fixed × Fixed := Id.run do
  let mut lowest := map.sectors[sector]!.floorFixed
  let mut highest := Fixed.ofInt (-500)
  for line in map.lines do
    if line.flags &&& 4 == 0 then continue
    let some front := map.sides[line.front]? | continue
    let some back := map.sides[line.back]? | continue
    let neighbor := if front.sector == sector then some back.sector
      else if back.sector == sector then some front.sector else none
    if let some id := neighbor then
      let height := map.sectors[id]!.floorFixed
      lowest := ⟨min lowest.raw height.raw⟩
      highest := ⟨max highest.raw height.raw⟩
  return (lowest,highest)

structure SpawnResult where
  map : Map
  thinkers : Array Thinker
  sounds : Array (Nat × Sound) := #[]

/-- EV_BuildStairs with eight-unit steps and one-quarter-unit movement. In
linedef order, the target advances before testing the neighbour's busy flag. -/
def stairs (map : Map) (thinkers : Array Thinker) (busy : Array Nat) (tag : Nat) : Array Thinker := Id.run do
  let mut result := thinkers
  let mut resumeAt := 0
  for _ in [:map.sectors.size] do
    let some first := (Array.range map.sectors.size).find? (fun i => i ≥ resumeAt && map.sectors[i]!.tag == tag) | break
    resumeAt := first + 1
    if busy.contains first || result.any (·.sector == first) then continue
    let mut here := first
    let texture := map.sectors[first]!.floorTexture
    let mut height := map.sectors[first]!.floorFixed + Fixed.ofInt 8
    result := result.push { sector := first, kind := .raiseFloor, speed := ⟨16384⟩, status := .up, high := height }
    for _ in [:map.sectors.size] do
      let mut next : Option Nat := none
      for edge in map.lines do
        if edge.flags &&& 4 == 0 then continue
        let some front := map.sides[edge.front]? | continue
        let some back := map.sides[edge.back]? | continue
        if front.sector != here || map.sectors[back.sector]!.floorTexture != texture then continue
        height := height + Fixed.ofInt 8
        if busy.contains back.sector || result.any (·.sector == back.sector) then continue
        next := some back.sector
        break
      let some j := next | break
      here := j
      result := result.push {sector := j, kind := .raiseFloor, speed := ⟨16384⟩, status := .up, high := height}
    resumeAt := here + 1
  return result

/-- EV_DoFloor(lowerFloorToLowest), also used by the Episode One boss event. -/
def lowerTagged (map : Map) (thinkers : Array Thinker) (busy : Array Nat) (tag : Nat) : Array Thinker := Id.run do
  let mut result := thinkers
  for i in [:map.sectors.size] do
    if map.sectors[i]!.tag != tag || busy.contains i || result.any (·.sector == i) then continue
    let (lowest,_) := surrounding map i
    result := result.push {sector := i, speed := Fixed.ofInt 1, low := lowest}
  return result

/-- Immediate original action for use 7/18/20/23/62 and crossing 22. -/
def taggedAction (map : Map) (thinkers : Array Thinker) (busy : Array Nat)
    (line : Linedef) : Except String SpawnResult := do
  let mut out : SpawnResult := ⟨map, thinkers, #[]⟩
  if line.special == 7 then return {out with thinkers := stairs map thinkers busy line.tag}
  if line.special == 23 then return {out with thinkers := lowerTagged map thinkers busy line.tag}
  let front := map.sides[line.front]!.sector
  for i in [:map.sectors.size] do
    let sec := out.map.sectors[i]!
    if sec.tag != line.tag || busy.contains i || out.thinkers.any (·.sector == i) then continue
    if line.special != 18 && (out.thinkers.filter (fun t => t.kind == .lift || t.kind == .raisePlat)).size ≥ 30 then
      throw "floor mover: no more active platforms (MAXPLATS=30)"
    if line.special == 62 then
      let (lowest,_) := surrounding out.map i
      let plat := lift sec.floorFixed lowest
      out := {out with thinkers := out.thinkers.push {plat with sector := i}, sounds := out.sounds.push (i,.start)}
      continue
    let mut nearest : Option Fixed := none
    for edge in map.lines do
      if edge.flags &&& 4 == 0 then continue
      let some left := map.sides[edge.front]? | continue
      let some right := map.sides[edge.back]? | continue
      let other := if left.sector == i then some right.sector else if right.sector == i then some left.sector else none
      let some j := other | continue
      let h := out.map.sectors[j]!.floorFixed
      if h.raw > sec.floorFixed.raw && (nearest.isNone || h.raw < (nearest.getD h).raw) then nearest := some h
    let high := nearest.getD sec.floorFixed
    if line.special == 18 then
      let mover : Thinker := { sector := i, kind := .raiseFloor, speed := Fixed.ofInt 1, status := .up, high }
      out := {out with thinkers := out.thinkers.push mover}
    else
      let sector := { sec with floorTexture := out.map.sectors[front]!.floorTexture, special := 0 }
      let plat : Thinker := { sector := i, kind := .raisePlat, speed := ⟨32768⟩, status := .up, wait := 0, high, low := ⟨0⟩ }
      out := {out with
        map := {out.map with sectors := out.map.sectors.set! i sector}
        thinkers := out.thinkers.push plat, sounds := out.sounds.push (i,.move)}
  return out

/-- Original DOOM 1.9 crossing gates/cases 36 and 88 plus their selected EV_Do*
spawn branches. Side is immaterial. `projectile` means one of the six excluded
original projectile types. Busy sectors include all supported plane movers.
Thirty active lifts is the original MAXPLATS limit; overflow is an explicit error. -/
def cross (map : Map) (thinkers : Array Thinker) (busy : Array Nat) (lineIndex : Nat)
    (player : Bool) (projectile : Bool := false) : Except String SpawnResult := do
  let some line := map.lines[lineIndex]? | throw "floor mover: invalid trigger line"
  let mut out : SpawnResult := ⟨map,thinkers,#[]⟩
  if line.special == 8 && player then
    return {out with thinkers := stairs map thinkers busy line.tag,
                      map := {map with lines := map.lines.set! lineIndex {line with special := 0}}}
  if line.special == 22 && player then
    let result ← taggedAction map thinkers busy line
    return {result with map := {result.map with lines := result.map.lines.set! lineIndex {line with special := 0}}}
  if line.special != 36 && line.special != 88 then return out
  if !player && (projectile || line.special != 88) then return out
  for i in [:map.sectors.size] do
    let sector := map.sectors[i]!
    if sector.tag != line.tag || busy.contains i || out.thinkers.any (·.sector == i) then continue
    let (lowest,highest) := surrounding map i
    let floor := sector.floorFixed
    let thinker := if line.special == 36 then turbo floor highest else lift floor lowest
    if thinker.kind == .lift then
      if (out.thinkers.filter (fun t => t.kind == .lift || t.kind == .raisePlat)).size ≥ 30 then
        throw "floor mover: no more active platforms (MAXPLATS=30)"
      out := { out with sounds := out.sounds.push (i,.start) }
    out := { out with thinkers := out.thinkers.push { thinker with sector := i } }
  if line.special == 36 then
    out := { out with map := { map with lines := map.lines.set! lineIndex { line with special := 0 } } }
  return out

end Doom.FloorMover
