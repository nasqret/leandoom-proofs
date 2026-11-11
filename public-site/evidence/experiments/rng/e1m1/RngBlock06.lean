import Inputs
set_option maxRecDepth 65536
set_option maxHeartbeats 0
namespace Recording
def expected06 : List RngExperiment.Outcome := [
  ⟨96, some 993, none, none, 99, 0, 191904993, -312563964, 1551892480⟩,
  ⟨97, some 993, none, none, 78, 0, 191904993, -312563964, 1551892480⟩,
  ⟨98, some 993, none, none, 75, 0, 191904993, -312563964, 1551892480⟩,
  ⟨99, some 993, none, none, 84, 0, 191905058, -312633108, 1551892480⟩,
  ⟨100, some 993, none, none, 75, 0, 191905058, -312633108, 1551892480⟩,
  ⟨101, some 993, none, none, 81, 0, 191904951, -312708926, 1551892480⟩,
  ⟨102, some 993, none, none, 72, 0, 191904951, -312708926, 1551892480⟩,
  ⟨103, some 993, none, none, 84, 0, 191905058, -312633108, 1551892480⟩,
  ⟨104, some 993, none, none, 63, 0, 191904993, -312563964, 1551892480⟩,
  ⟨105, some 993, none, none, 63, 0, 191905058, -312633108, 1551892480⟩,
  ⟨106, some 993, none, none, 66, 0, 191904951, -312708926, 1551892480⟩,
  ⟨107, some 993, none, none, 51, 0, 191903617, -312338598, 1551892480⟩,
  ⟨108, some 993, none, none, 90, 0, 191904993, -312563964, 1551892480⟩,
  ⟨109, some 993, none, none, 54, 0, 191904993, -312563964, 1551892480⟩,
  ⟨110, some 993, none, none, 84, 0, 191904993, -312563964, 1551892480⟩,
  ⟨111, some 993, none, none, 87, 0, 191904993, -312563964, 1551892480⟩]
theorem block06 : RngExperiment.classifyBlock group mapName tape 6 = some (5, expected06) := by native_decide
end Recording
