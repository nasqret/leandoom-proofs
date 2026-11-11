import Inputs
set_option maxRecDepth 65536
set_option maxHeartbeats 0
namespace Recording
theorem incomplete : OriginalReplay.passage group mapName tape = false := by native_decide
theorem finalObservation : OriginalReplay.observation group mapName tape = some ⟨1811,44178831,26296373,2,0,196,4,12,16,false,true⟩ := by native_decide
end Recording
