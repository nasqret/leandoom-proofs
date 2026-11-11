import LeanDoomProofs.Fixtures

namespace LeanDoomProofs
open Doom

/-- Original ARENA03: a 576 by 256 arena with three active imps, a normally
collectible shotgun near the starting point, and an east-wall exit.
The rectangle, linedefs and one-subsector BSP are explicit map data. -/
def arenaMap : Map := { Fixtures.exitRoom with
  name := "ARENA03"
  things := #[⟨⟨-192,0⟩,0,1,7⟩,
              ⟨⟨-32,0⟩,180,3001,7⟩,
              ⟨⟨96,0⟩,180,3001,7⟩,
              ⟨⟨224,0⟩,180,3001,7⟩,
              ⟨⟨-176,0⟩,0,2001,7⟩]
  vertices := #[⟨-256,-128⟩,⟨-256,128⟩,⟨320,128⟩,⟨320,-128⟩]
  blockmap := {
    origin := ⟨-256,-256⟩, width := 5, height := 4,
    cells := Array.replicate 20 #[0,1,2,3] }
}

def arenaStart : Except String Simulation := Simulation.spawn arenaMap true 1

end LeanDoomProofs
