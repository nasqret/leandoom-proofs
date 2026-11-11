import Inputs
set_option maxRecDepth 65536
set_option maxHeartbeats 0
namespace Recording
theorem incomplete : OriginalReplay.passage group mapName tape = false := by native_decide
theorem finalObservation : OriginalReplay.observation group mapName tape = some ⟨4,-27224873,16777226,100,0,50,0,0,0,false,true⟩ := by native_decide
end Recording
