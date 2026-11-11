import E1M4MapLoaded
import E1M4TreeAccess
import LeanDoomProofs.CombatNormalizationV2
import Doom.SectorLights

open Doom LeanDoomProofs.E1M4

namespace Campaign.BlueDoor

set_option maxRecDepth 65536
set_option maxHeartbeats 3000000
set_option cbv.maxSteps 3000000
set_option Elab.async false

theorem crossingDoesNotOpen (w : SectorLights.World) (i : Nat) (l : Linedef)
    (atLine : w.map.lines[i]? = some l) (kind : l.special = 90 ∨ l.special = 86)
    (isPlayer : Bool) :
    (w.crossAll i isPlayer).map (·.map) = .ok w.map := by
  rcases kind with h | h <;> cases isPlayer <;>
    simp [SectorLights.World.crossAll, FloorMover.cross, SectorLights.World.cross, atLine, h] <;> rfl

theorem line686 : (levelMap.lines[686]?).map (·.special) = some 90 := by
  combatV2_certify

theorem line687 : (levelMap.lines[687]?).map (·.special) = some 90 := by
  combatV2_certify

theorem parsedApproaches : (Map.load group "E1M4").map (fun m =>
    ((m.lines[686]?).map (·.special), (m.lines[687]?).map (·.special))) =
    .ok (some 90, some 90) := by
  rw [map_loaded]
  simp [Except.map, line686,line687]

#print axioms crossingDoesNotOpen
#print axioms parsedApproaches
end Campaign.BlueDoor
