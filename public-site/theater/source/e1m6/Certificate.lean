import Inputs
set_option maxRecDepth 65536
set_option maxHeartbeats 0
namespace Recording
theorem passage : OriginalReplay.passage group mapName tape = true := by native_decide
theorem finalObservation : OriginalReplay.observation group mapName tape = some ⟨3207,-125996702,132126572,40,83,81,4,70,25,true,true⟩ := by native_decide
end Recording
