import Inputs
set_option maxRecDepth 65536
set_option maxHeartbeats 0
namespace Recording
def expected04 : List RngExperiment.Outcome := [
  ⟨64, some 993, none, none, 81, 0, 191905058, -312633108, 1551892480⟩,
  ⟨65, some 993, none, none, 96, 0, 191904993, -312563964, 1551892480⟩,
  ⟨66, some 993, none, none, 90, 0, 191904993, -312563964, 1551892480⟩,
  ⟨67, some 993, none, none, 57, 0, 191904951, -312708926, 1551892480⟩,
  ⟨68, some 993, none, none, 102, 0, 191904993, -312563964, 1551892480⟩,
  ⟨69, some 993, none, none, 75, 0, 191904993, -312563964, 1551892480⟩,
  ⟨70, some 993, none, none, 99, 0, 191905058, -312633108, 1551892480⟩,
  ⟨71, some 993, none, none, 63, 0, 191905058, -312633108, 1551892480⟩,
  ⟨72, some 993, none, none, 81, 0, 191904993, -312563964, 1551892480⟩,
  ⟨73, some 993, none, none, 51, 0, 191905068, -312764664, 1551892480⟩,
  ⟨74, some 993, none, none, 75, 0, 191904951, -312708926, 1551892480⟩,
  ⟨75, some 993, none, none, 63, 0, 191904993, -312563964, 1551892480⟩,
  ⟨76, some 993, none, none, 93, 0, 191904993, -312563964, 1551892480⟩,
  ⟨77, some 993, none, none, 78, 0, 191904951, -312708926, 1551892480⟩,
  ⟨78, some 993, none, none, 57, 0, 191905068, -312764664, 1551892480⟩,
  ⟨79, some 993, none, none, 57, 0, 191905059, -312751936, 1551892480⟩]
theorem block04 : RngExperiment.classifyBlock group mapName tape 4 = some (5, expected04) := by native_decide
end Recording
