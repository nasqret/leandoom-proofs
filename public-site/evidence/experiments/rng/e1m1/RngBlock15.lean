import Inputs
set_option maxRecDepth 65536
set_option maxHeartbeats 0
namespace Recording
def expected15 : List RngExperiment.Outcome := [
  ⟨240, some 993, none, none, 87, 0, 191904993, -312563964, 1551892480⟩,
  ⟨241, some 993, none, none, 48, 0, 191904993, -312563964, 1551892480⟩,
  ⟨242, some 993, none, none, 102, 0, 191904993, -312563964, 1551892480⟩,
  ⟨243, some 993, none, none, 39, 0, 191904993, -312563964, 1551892480⟩,
  ⟨244, some 993, none, none, 84, 0, 191904993, -312563964, 1551892480⟩,
  ⟨245, some 993, none, none, 60, 0, 191904951, -312708926, 1551892480⟩,
  ⟨246, some 993, none, none, 90, 0, 191904993, -312563964, 1551892480⟩,
  ⟨247, some 993, none, none, 63, 0, 191904951, -312708926, 1551892480⟩,
  ⟨248, some 993, none, none, 69, 0, 191904951, -312708926, 1551892480⟩,
  ⟨249, some 993, none, none, 72, 0, 191904951, -312708926, 1551892480⟩,
  ⟨250, some 993, none, none, 78, 0, 191904993, -312563964, 1551892480⟩,
  ⟨251, some 993, none, none, 84, 0, 191904993, -312563964, 1551892480⟩,
  ⟨252, some 993, none, none, 81, 0, 191904993, -312563964, 1551892480⟩,
  ⟨253, some 993, none, none, 84, 0, 191904993, -312563964, 1551892480⟩,
  ⟨254, some 993, none, none, 66, 0, 191904993, -312563964, 1551892480⟩,
  ⟨255, some 993, none, none, 87, 0, 191904993, -312563964, 1551892480⟩]
theorem block15 : RngExperiment.classifyBlock group mapName tape 15 = some (5, expected15) := by native_decide
end Recording
