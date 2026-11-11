import Inputs
set_option maxRecDepth 65536
set_option maxHeartbeats 0
namespace Recording
theorem incomplete : OriginalReplay.passage group mapName tape = false := by native_decide
theorem finalObservation : OriginalReplay.observation group mapName tape = some ⟨933,123063189,-71303287,6,0,200,0,0,4,false,true⟩ := by native_decide
end Recording
