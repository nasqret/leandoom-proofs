import Inputs
set_option maxRecDepth 65536
set_option maxHeartbeats 0
namespace Recording
def expected01 : List RngExperiment.Outcome := [
  ⟨16, some 993, none, none, 84, 0, 191904993, -312563964, 1551892480⟩,
  ⟨17, some 993, none, none, 69, 0, 191904951, -312708926, 1551892480⟩,
  ⟨18, some 993, none, none, 84, 0, 191904993, -312563964, 1551892480⟩,
  ⟨19, some 993, none, none, 96, 0, 191904993, -312563964, 1551892480⟩,
  ⟨20, some 993, none, none, 96, 0, 191904993, -312563964, 1551892480⟩,
  ⟨21, some 993, none, none, 87, 0, 191904993, -312563964, 1551892480⟩,
  ⟨22, some 993, none, none, 84, 0, 191905058, -312633108, 1551892480⟩,
  ⟨23, some 993, none, none, 96, 0, 191904951, -312708926, 1551892480⟩,
  ⟨24, some 993, none, none, 78, 0, 191904951, -312708926, 1551892480⟩,
  ⟨25, some 993, none, none, 87, 0, 191905058, -312633108, 1551892480⟩,
  ⟨26, some 993, none, none, 87, 0, 191905058, -312633108, 1551892480⟩,
  ⟨27, some 993, none, none, 75, 0, 191903617, -312338598, 1551892480⟩,
  ⟨28, some 993, none, none, 30, 0, 191904993, -312563964, 1551892480⟩,
  ⟨29, some 993, none, none, 39, 0, 191903617, -312338598, 1551892480⟩,
  ⟨30, some 993, none, none, 57, 0, 191905068, -312764664, 1551892480⟩,
  ⟨31, some 993, none, none, 57, 0, 191904993, -312563964, 1551892480⟩]
theorem block01 : RngExperiment.classifyBlock group mapName tape 1 = some (5, expected01) := by native_decide
end Recording
