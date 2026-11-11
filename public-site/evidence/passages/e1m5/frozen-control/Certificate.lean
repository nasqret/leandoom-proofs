import Inputs
set_option maxRecDepth 65536
set_option maxHeartbeats 0
namespace Recording
theorem incomplete : OriginalReplay.passage group mapName tape = false := by native_decide
theorem finalObservation : OriginalReplay.observation group mapName tape = some ⟨3569,60815500,25665130,0,48,34,5,27,4,false,true⟩ := by native_decide
end Recording
