import Inputs
set_option maxRecDepth 65536
set_option maxHeartbeats 0
namespace Recording
theorem passage : OriginalReplay.passage group mapName tape = true := by native_decide
theorem finalObservation : OriginalReplay.observation group mapName tape = some ⟨1917,29346341,87306043,27,0,196,2,14,17,true,true⟩ := by native_decide
end Recording
