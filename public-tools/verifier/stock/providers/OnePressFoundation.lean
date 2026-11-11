import CheckedReplay
import LeanDoomProofs.Passage
open Doom LeanDoomProofs
namespace OnePress
set_option maxRecDepth 65536
set_option maxHeartbeats 4000000
set_option Elab.async false
def group : Array Lump := #[
  ⟨"PROOF01", ⟨#[]⟩, 0⟩,
  ⟨"THINGS", ⟨#[32, 0, 0, 0, 0, 0, 1, 0, 7, 0]⟩, 0⟩,
  ⟨"LINEDEFS", ⟨#[0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 255, 255, 1, 0, 2, 0, 1, 0, 0, 0, 0, 0, 1, 0, 255, 255, 2, 0, 3, 0, 1, 0, 11, 0, 0, 0, 2, 0, 255, 255, 3, 0, 0, 0, 1, 0, 0, 0, 0, 0, 3, 0, 255, 255]⟩, 0⟩,
  ⟨"SIDEDEFS", ⟨#[0, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 0, 87, 65, 76, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 0, 87, 65, 76, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 0, 83, 87, 49, 69, 88, 73, 84, 0, 0, 0, 0, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 0, 87, 65, 76, 76, 0, 0, 0, 0, 0, 0]⟩, 0⟩,
  ⟨"VERTEXES", ⟨#[192, 255, 192, 255, 192, 255, 64, 0, 64, 0, 64, 0, 64, 0, 192, 255]⟩, 0⟩,
  ⟨"SEGS", ⟨#[0, 0, 1, 0, 0, 64, 0, 0, 0, 0, 0, 0, 1, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 2, 0, 3, 0, 0, 192, 2, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 128, 3, 0, 0, 0, 0, 0]⟩, 0⟩,
  ⟨"SSECTORS", ⟨#[4, 0, 0, 0]⟩, 0⟩,
  ⟨"NODES", ⟨#[]⟩, 0⟩,
  ⟨"SECTORS", ⟨#[0, 0, 128, 0, 70, 76, 79, 79, 82, 0, 0, 0, 67, 69, 73, 76, 0, 0, 0, 0, 160, 0, 0, 0, 0, 0]⟩, 0⟩,
  ⟨"REJECT", ⟨#[0]⟩, 0⟩,
  ⟨"BLOCKMAP", ⟨#[128, 255, 128, 255, 2, 0, 2, 0, 8, 0, 8, 0, 8, 0, 8, 0, 0, 0, 0, 0, 1, 0, 2, 0, 3, 0, 255, 255]⟩, 0⟩]
abbrev level := Fixtures.exitRoom
def start : Simulation := { checkpoint with combatEnabled := true }
theorem parser : Map.load group "PROOF01" = .ok level := by doom_kernel_rfl
theorem spawn : Simulation.spawn level true 1 = .ok start := by doom_kernel_rfl
#print axioms parser
#print axioms spawn
end OnePress
