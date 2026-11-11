import Inputs
set_option maxRecDepth 65536
set_option maxHeartbeats 0
namespace Recording
theorem passage : OriginalReplay.passage group mapName tape = true := by native_decide
theorem finalObservation : OriginalReplay.observation group mapName tape = some ⟨3569,-19031882,162516938,78,0,59,0,87,30,true,true⟩ := by native_decide
end Recording
