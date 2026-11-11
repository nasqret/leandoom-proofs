import Inputs
set_option maxRecDepth 65536
set_option maxHeartbeats 0
namespace Recording
def expected02 : List RngExperiment.Outcome := [
  ⟨32, some 993, none, none, 24, 0, 191904993, -312563964, 1551892480⟩,
  ⟨33, some 993, none, none, 90, 0, 191904993, -312563964, 1551892480⟩,
  ⟨34, some 993, none, none, 24, 0, 191905058, -312633108, 1551892480⟩,
  ⟨35, some 993, none, none, 81, 0, 191904993, -312563964, 1551892480⟩,
  ⟨36, some 993, none, none, 72, 0, 191904993, -312563964, 1551892480⟩,
  ⟨37, some 993, none, none, 75, 0, 191904993, -312563964, 1551892480⟩,
  ⟨38, some 993, none, none, 78, 0, 191904993, -312563964, 1551892480⟩,
  ⟨39, some 993, none, none, 42, 0, 191904951, -312708926, 1551892480⟩,
  ⟨40, none, some 918, none, 0, 0, 196724896, -302510878, 3229614080⟩,
  ⟨41, some 993, none, none, 36, 0, 191905068, -312764664, 1551892480⟩,
  ⟨42, some 993, none, none, 78, 0, 191904993, -312563964, 1551892480⟩,
  ⟨43, some 993, none, none, 102, 0, 191904993, -312563964, 1551892480⟩,
  ⟨44, some 993, none, none, 33, 0, 191904993, -312563964, 1551892480⟩,
  ⟨45, some 993, none, none, 66, 0, 191904993, -312563964, 1551892480⟩,
  ⟨46, some 993, none, none, 72, 0, 191904951, -312708926, 1551892480⟩,
  ⟨47, some 993, none, none, 75, 0, 191904951, -312708926, 1551892480⟩]
theorem block02 : RngExperiment.classifyBlock group mapName tape 2 = some (5, expected02) := by native_decide
end Recording
