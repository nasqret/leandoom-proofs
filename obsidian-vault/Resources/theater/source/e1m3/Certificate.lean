import Inputs
set_option maxRecDepth 65536
set_option maxHeartbeats 0
namespace Recording
theorem passage : OriginalReplay.passage group mapName tape = true := by native_decide
theorem finalObservation : OriginalReplay.observation group mapName tape = some ⟨1770,46277445,-113879302,34,1,53,0,66,19,true,true⟩ := by native_decide
end Recording
