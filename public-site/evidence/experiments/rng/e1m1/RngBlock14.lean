import Inputs
set_option maxRecDepth 65536
set_option maxHeartbeats 0
namespace Recording
def expected14 : List RngExperiment.Outcome := [
  ⟨224, some 993, none, none, 66, 0, 191904951, -312708926, 1551892480⟩,
  ⟨225, some 993, none, none, 81, 0, 191904951, -312708926, 1551892480⟩,
  ⟨226, some 993, none, none, 75, 0, 191905100, -312586957, 1551892480⟩,
  ⟨227, some 993, none, none, 87, 0, 191904993, -312563964, 1551892480⟩,
  ⟨228, some 993, none, none, 102, 0, 191906625, -313024357, 1551892480⟩,
  ⟨229, some 993, none, none, 54, 0, 191905058, -312633108, 1551892480⟩,
  ⟨230, some 993, none, none, 54, 0, 191905068, -312764664, 1551892480⟩,
  ⟨231, some 993, none, none, 27, 0, 191905068, -312764664, 1551892480⟩,
  ⟨232, some 993, none, none, 96, 0, 191904993, -312563964, 1551892480⟩,
  ⟨233, some 993, none, none, 69, 0, 191904993, -312563964, 1551892480⟩,
  ⟨234, some 993, none, none, 87, 0, 191904993, -312563964, 1551892480⟩,
  ⟨235, some 993, none, none, 69, 0, 191904993, -312563964, 1551892480⟩,
  ⟨236, some 993, none, none, 96, 0, 191904993, -312563964, 1551892480⟩,
  ⟨237, some 993, none, none, 45, 0, 191903617, -312338598, 1551892480⟩,
  ⟨238, some 993, none, none, 75, 0, 191904993, -312563964, 1551892480⟩,
  ⟨239, some 993, none, none, 48, 0, 191905068, -312764664, 1551892480⟩]
theorem block14 : RngExperiment.classifyBlock group mapName tape 14 = some (5, expected14) := by native_decide
end Recording
