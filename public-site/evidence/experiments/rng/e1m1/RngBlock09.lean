import Inputs
set_option maxRecDepth 65536
set_option maxHeartbeats 0
namespace Recording
def expected09 : List RngExperiment.Outcome := [
  ⟨144, some 993, none, none, 39, 0, 191904993, -312563964, 1551892480⟩,
  ⟨145, some 993, none, none, 81, 0, 191904993, -312563964, 1551892480⟩,
  ⟨146, some 993, none, none, 102, 0, 191904993, -312563964, 1551892480⟩,
  ⟨147, some 993, none, none, 69, 0, 191904993, -312563964, 1551892480⟩,
  ⟨148, some 993, none, none, 69, 0, 191904993, -312563964, 1551892480⟩,
  ⟨149, some 993, none, none, 87, 0, 191904993, -312563964, 1551892480⟩,
  ⟨150, some 993, none, none, 42, 0, 191905058, -312633108, 1551892480⟩,
  ⟨151, some 993, none, none, 93, 0, 191904993, -312563964, 1551892480⟩,
  ⟨152, some 993, none, none, 63, 0, 191904993, -312563964, 1551892480⟩,
  ⟨153, some 993, none, none, 90, 0, 191904993, -312563964, 1551892480⟩,
  ⟨154, some 993, none, none, 81, 0, 191904993, -312563964, 1551892480⟩,
  ⟨155, some 993, none, none, 66, 0, 191904951, -312708926, 1551892480⟩,
  ⟨156, some 993, none, none, 66, 0, 191905068, -312764664, 1551892480⟩,
  ⟨157, some 993, none, none, 72, 0, 191904993, -312563964, 1551892480⟩,
  ⟨158, some 993, none, none, 54, 0, 191905058, -312633108, 1551892480⟩,
  ⟨159, some 993, none, none, 72, 0, 191904993, -312563964, 1551892480⟩]
theorem block09 : RngExperiment.classifyBlock group mapName tape 9 = some (5, expected09) := by native_decide
end Recording
