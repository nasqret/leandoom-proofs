import Doom.Simulation

namespace LeanDoomProofs
open Doom

/-- Original test level TWOIMP01, not an IWAD map. Three rectangular sectors:
the west hall, a 32-unit blue-key door, and an east hall with the exit.
All map things use the normal medium single-player flags. -/
def twoImpMap : Map := {
  name := "TWOIMP01"
  things := #[⟨⟨-192,0⟩,0,1,7⟩, ⟨⟨-144,0⟩,180,3001,7⟩,
              ⟨⟨224,0⟩,180,3001,7⟩, ⟨⟨-128,-40⟩,0,5,7⟩]
  vertices := #[⟨-256,-64⟩,⟨-256,64⟩,⟨64,64⟩,⟨64,-64⟩,
                ⟨96,64⟩,⟨96,-64⟩,⟨320,64⟩,⟨320,-64⟩]
  lines := #[⟨0,1,1,0,0,0,65535⟩,⟨1,2,1,0,0,0,65535⟩,
             ⟨2,3,4,26,0,0,1⟩,⟨3,0,1,0,0,0,65535⟩,
             ⟨2,4,1,0,0,1,65535⟩,⟨4,5,4,0,0,1,2⟩,
             ⟨5,3,1,0,0,1,65535⟩,⟨4,6,1,0,0,2,65535⟩,
             ⟨6,7,1,11,0,3,65535⟩,⟨7,5,1,0,0,2,65535⟩]
  sides := #[⟨0,0,"DOOR","LOWER","WALL",0⟩,
             ⟨0,0,"DOOR","LOWER","WALL",1⟩,
             ⟨0,0,"DOOR","LOWER","WALL",2⟩,
             ⟨0,0,"-","-","SW1EXIT",2⟩]
  sectors := #[⟨0,128,"FLOOR","CEIL",160,0,0⟩,
               ⟨0,0,"FLOOR","CEIL",160,0,0⟩,
               ⟨0,128,"FLOOR","CEIL",160,0,0⟩]
  segs := #[⟨0,1,16384,0,0,0⟩,⟨1,2,0,1,0,0⟩,
            ⟨2,3,49152,2,0,0⟩,⟨3,0,32768,3,0,0⟩,
            ⟨3,2,16384,2,1,0⟩,⟨2,4,0,4,0,0⟩,
            ⟨4,5,49152,5,0,0⟩,⟨5,3,32768,6,0,0⟩,
            ⟨5,4,16384,5,1,0⟩,⟨4,6,0,7,0,0⟩,
            ⟨6,7,49152,8,0,0⟩,⟨7,5,32768,9,0,0⟩]
  subsectors := #[⟨4,0⟩,⟨4,4⟩,⟨4,8⟩]
  nodes := #[⟨⟨64,64⟩,⟨0,-128⟩,⟨64,-64,-256,64⟩,⟨64,-64,64,96⟩,
               .subsector 0,.subsector 1⟩,
             ⟨⟨96,64⟩,⟨0,-128⟩,⟨64,-64,-256,96⟩,⟨64,-64,96,320⟩,
               .node 0,.subsector 2⟩]
  reject := ⟨#[0,0]⟩
  blockmap := {
    origin := ⟨-256,-128⟩, width := 5, height := 2,
    cells := Array.replicate 10 #[0,1,2,3,4,5,6,7,8,9] }
}

def twoImpStart : Except String Simulation := Simulation.spawn twoImpMap true 1

end LeanDoomProofs
