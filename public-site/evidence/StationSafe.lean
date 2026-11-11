import ScanSemantics
import Certificate
open Doom OriginalReplay
namespace Recording
theorem station_all_prefixes :
    ∃ s, (Map.load group mapName).bind (fun m => Simulation.spawn m true 1) = .ok s ∧
         SafeFirstExit s tape :=
  passage_sound passage
end Recording
