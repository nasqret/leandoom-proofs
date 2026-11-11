import Inputs
set_option maxRecDepth 65536
set_option maxHeartbeats 0
namespace Recording
theorem passage : OriginalReplay.passage group mapName tape = true := by native_decide
theorem finalObservation : OriginalReplay.observation group mapName tape = some ⟨1233,-102500213,123718275,82,89,19,8,51,3,true,true⟩ := by native_decide
end Recording
