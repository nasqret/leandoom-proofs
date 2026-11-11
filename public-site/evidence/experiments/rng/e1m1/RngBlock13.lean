import Inputs
set_option maxRecDepth 65536
set_option maxHeartbeats 0
namespace Recording
def expected13 : List RngExperiment.Outcome := [
  ⟨208, some 993, none, none, 66, 0, 191905058, -312633108, 1551892480⟩,
  ⟨209, some 993, none, none, 102, 0, 191904993, -312563964, 1551892480⟩,
  ⟨210, some 993, none, none, 57, 0, 191904951, -312708926, 1551892480⟩,
  ⟨211, some 993, none, none, 75, 0, 191904993, -312563964, 1551892480⟩,
  ⟨212, some 993, none, none, 66, 0, 191904951, -312708926, 1551892480⟩,
  ⟨213, some 993, none, none, 75, 0, 191904993, -312563964, 1551892480⟩,
  ⟨214, some 993, none, none, 99, 0, 191904993, -312563964, 1551892480⟩,
  ⟨215, some 993, none, none, 63, 0, 191904993, -312563964, 1551892480⟩,
  ⟨216, some 993, none, none, 87, 0, 191904993, -312563964, 1551892480⟩,
  ⟨217, some 993, none, none, 57, 0, 191904951, -312708926, 1551892480⟩,
  ⟨218, some 993, none, none, 87, 0, 191904993, -312563964, 1551892480⟩,
  ⟨219, some 993, none, none, 96, 0, 191904993, -312563964, 1551892480⟩,
  ⟨220, some 993, none, none, 69, 0, 191905058, -312633108, 1551892480⟩,
  ⟨221, some 993, none, none, 66, 0, 191905058, -312633108, 1551892480⟩,
  ⟨222, some 993, none, none, 69, 0, 191905058, -312633108, 1551892480⟩,
  ⟨223, some 993, none, none, 69, 0, 191905068, -312764664, 1551892480⟩]
theorem block13 : RngExperiment.classifyBlock group mapName tape 13 = some (5, expected13) := by native_decide
end Recording
