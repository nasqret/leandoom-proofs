import Doom.Combat

namespace LeanDoomProofs.Fixtures
open Doom Doom.Collision

/-- An original 128-by-128 one-room level. This is not an IWAD level.
Clockwise walls; the east wall is a normal exit, player faces east 32 units away. -/
def exitRoom : Map := {
  name := "PROOF01"
  things := #[⟨⟨32, 0⟩, 0, 1, 7⟩]
  vertices := #[⟨-64,-64⟩, ⟨-64,64⟩, ⟨64,64⟩, ⟨64,-64⟩]
  lines := #[⟨0,1,1,0,0,0,65535⟩, ⟨1,2,1,0,0,1,65535⟩,
             ⟨2,3,1,11,0,2,65535⟩, ⟨3,0,1,0,0,3,65535⟩]
  sides := #[⟨0,0,"-","-","WALL",0⟩, ⟨0,0,"-","-","WALL",0⟩,
             ⟨0,0,"-","-","SW1EXIT",0⟩, ⟨0,0,"-","-","WALL",0⟩]
  sectors := #[⟨0,128,"FLOOR","CEIL",160,0,0⟩]
  segs := #[⟨0,1,16384,0,0,0⟩, ⟨1,2,0,1,0,0⟩,
            ⟨2,3,49152,2,0,0⟩, ⟨3,0,32768,3,0,0⟩]
  subsectors := #[⟨4,0⟩]
  nodes := #[]
  reject := ⟨#[0]⟩
  blockmap := {
    origin := ⟨-128,-128⟩, width := 2, height := 2,
    cells := Array.replicate 4 #[0,1,2,3] }
}

/-- Failure is retained as an Except value, never replaced by a default state. -/
def passiveStart : Except String Simulation := Simulation.spawn exitRoom false

def afterUse : Except String Simulation := passiveStart.map (fun s => s.tick 4096)

def won (r : Except String Simulation) : Bool :=
  match r with
  | .error _ => false
  | .ok s => s.exitRequested && s.physicsError.isNone

/-- Parameterized target used by both projectile and blast fixtures. -/
def target (x y : Int) (kind : Nat := 3001) : SolidThing := {
  kind, x := Fixed.ofInt x, y := Fixed.ofInt y,
  radius := Fixed.ofInt 20, shootable := true, health := 60 }

def spot : SolidThing := {
  kind := 2035, x := Fixed.ofInt 64, y := Fixed.ofInt 64,
  radius := Fixed.ofInt 10, height := Fixed.ofInt 10, shootable := false }

def blastScene : Scene := {
  grid := {
    origin := ⟨-128,-128⟩, width := 4, height := 4,
    cells := Array.replicate 16 #[] }
  lines := #[]
  things := #[target 64 64, target 128 64, target 64 128]
  links := (Array.replicate 16 #[]).set! 5 #[0] |>.set! 6 #[1] |>.set! 9 #[2]
}

/-- Sight is an explicit hypothesis of this open-arena fixture. -/
def blast : Except String (Array (Nat × Int32)) :=
  blastScene.radiusAttack spot 128 (fun _ => 3001) (fun _ _ => .ok true)

/-- One shootable target, no walls, and a complete conservative BLOCKMAP. -/
def missileScene : Scene := {
  grid := {
    origin := ⟨-128,-128⟩, width := 2, height := 2,
    cells := Array.replicate 4 #[] }
  -- The vanilla BLOCKMAP iterator always restores linedef zero. Supply a
  -- harmless boundary line outside every contact box used below.
  lines := #[{
    x := Fixed.ofInt (-128), y := Fixed.ofInt (-128)
    dx := Fixed.ofInt 0, dy := Fixed.ofInt 256
    bbox := ⟨Fixed.ofInt 128, Fixed.ofInt (-128), Fixed.ofInt (-128), Fixed.ofInt (-128)⟩
    slope := .vertical, front := ⟨Fixed.ofInt 0, Fixed.ofInt 128⟩ }]
  things := #[{ (target 0 0 0) with radius := Fixed.ofInt 16, health := 100 }]
  links := #[#[],#[],#[],#[0]]
}

def missileContact (x y z : Int) : Except String (Bool × Option Nat) := do
  let (_,p) ← missileScene.checkPositionWithEffects {
    x := Fixed.ofInt x, y := Fixed.ofInt y, radius := Fixed.ofInt 6,
    player := false, missile := some {
      z := Fixed.ofInt z, height := Fixed.ofInt 8,
      source := some 1, sourceKind := 3001, kinds := #[0,3001] } }
    ⟨Fixed.ofInt 0, Fixed.ofInt 128⟩
  return (p.clear, p.missileHit)

end LeanDoomProofs.Fixtures
