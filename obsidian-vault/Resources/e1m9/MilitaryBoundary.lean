import MilitaryPlatform
open Doom LeanDoomProofs.E1M9 Campaign.MilitaryPlatform
namespace Campaign.MilitaryPlatform
set_option maxRecDepth 65536
set_option maxHeartbeats 12000000
set_option cbv.maxSteps 24000000
set_option Elab.async false

theorem allTwoSided : (List.range levelMap.lines.size).filter (boundary levelMap) = [548,549,550] := by
  combatV2_certify

theorem parsedBoundary : (Doom.Map.load group "E1M9").map
    (fun m => (List.range m.lines.size).filter (boundary m)) = .ok [548,549,550] := by
  rw [map_loaded]
  exact congrArg Except.ok allTwoSided
end Campaign.MilitaryPlatform
