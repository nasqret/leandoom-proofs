import LeanDoomProofs.ArenaMap
import LeanDoomProofs.CombatWitness

namespace LeanDoomProofs
open Doom

/-- Ordinary run-length encoded controller. Native discovery is untrusted. -/
def arenaBlocks : List (Nat × UInt32) :=
  [(5,65538),(25,65536),(115,8192),(60,2),(1,4096)]

def arenaInputs : List UInt32 :=
  arenaBlocks.flatMap fun (count,key) => List.replicate count key

end LeanDoomProofs
