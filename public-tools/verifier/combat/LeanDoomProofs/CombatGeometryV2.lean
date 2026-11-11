import Doom.Player
import Init.Data.Nat.Sqrt

/-! Exact arithmetic for the separately named CombatV2 enemy adapter.
Coordinates for sight and range are signed 16.16 raw integers. Portal tests
use exact rational cross-multiplication, without Float epsilon tests. Movement
normalizes with floor integer square root and rounds ties away from zero.
These definitions specify a revision; they do not assert Float equivalence. -/
namespace Doom.EnemyArithmeticV2

def unit : Int := 65536

def within (dx dy radius : Int) : Bool :=
  dx*dx + dy*dy < (radius*unit)*(radius*unit)

def roundedRatio (numerator : Int) (denominator : Nat) : Int :=
  let magnitude := (numerator.natAbs + denominator/2) / denominator
  if numerator < 0 then -(Int.ofNat magnitude) else Int.ofNat magnitude

def movement (dx dy : Int) (speed : Nat) : Int × Int :=
  let length := Nat.sqrt (dx*dx+dy*dy).toNat
  if length < unit.toNat then (0,0) else
    (roundedRatio (dx*Int.ofNat speed) length,
     roundedRatio (dy*Int.ofNat speed) length)

/-- Strict Euclidean distance-to-segment comparison in integer map units. -/
def nearSegment (p a b : Vertex) (radius : Int) : Bool :=
  let dx := b.x-a.x
  let dy := b.y-a.y
  let px := p.x-a.x
  let py := p.y-a.y
  let length := dx*dx+dy*dy
  let dot := px*dx+py*dy
  if length == 0 || dot <= 0 then px*px+py*py < radius*radius
  else if dot >= length then
    let qx := p.x-b.x
    let qy := p.y-b.y
    qx*qx+qy*qy < radius*radius
  else
    let cross := px*dy-py*dx
    cross*cross < radius*radius*length

/-- Exact segment/portal sight. The source endpoint is excluded and the target
endpoint included. Parallel/collinear edges do not produce intersections. -/
def rayClear (map : Map) (x y z tx ty tz : Int) : Bool := Id.run do
  let dx := tx-x
  let dy := ty-y
  for line in map.lines do
    let a := map.vertices[line.v1]!
    let b := map.vertices[line.v2]!
    let ex := (b.x-a.x)*unit
    let ey := (b.y-a.y)*unit
    let ax := a.x*unit-x
    let ay := a.y*unit-y
    let den := dx*ey-dy*ex
    if den == 0 then continue
    let sign : Int := if den < 0 then -1 else 1
    let d := sign*den
    let t := sign*(ax*ey-ay*ex)
    let u := sign*(ax*dy-ay*dx)
    if t <= 0 || t > d || u < 0 || u > d then continue
    if line.flags / 4 % 2 == 0 then return false
    let some front := map.sides[line.front]? | return false
    let some back := map.sides[line.back]? | return false
    let a := map.sectors[front.sector]!
    let b := map.sectors[back.sector]!
    let heightNumerator := z*d + t*(tz-z)
    if heightNumerator <= max a.floor b.floor*unit*d ||
        heightNumerator >= min a.ceiling b.ceiling*unit*d then return false
  return true

end Doom.EnemyArithmeticV2
