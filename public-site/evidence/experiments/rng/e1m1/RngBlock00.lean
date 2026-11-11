import Inputs
set_option maxRecDepth 65536
set_option maxHeartbeats 0
namespace Recording
def expected00 : List RngExperiment.Outcome := [
  ⟨0, some 993, none, none, 93, 0, 191904993, -312563964, 1551892480⟩,
  ⟨1, some 993, none, none, 48, 0, 191904993, -312563964, 1551892480⟩,
  ⟨2, some 993, none, none, 60, 0, 191905068, -312764664, 1551892480⟩,
  ⟨3, some 993, none, none, 75, 0, 191904951, -312708926, 1551892480⟩,
  ⟨4, some 993, none, none, 69, 0, 191905068, -312764664, 1551892480⟩,
  ⟨5, some 993, none, none, 48, 0, 191904993, -312563964, 1551892480⟩,
  ⟨6, some 993, none, none, 78, 0, 191903617, -312338598, 1551892480⟩,
  ⟨7, some 993, none, none, 102, 0, 191906656, -313257877, 1551892480⟩,
  ⟨8, some 993, none, none, 78, 0, 191903617, -312338598, 1551892480⟩,
  ⟨9, some 993, none, none, 90, 0, 191906625, -313240099, 1551892480⟩,
  ⟨10, some 993, none, none, 72, 0, 191904993, -312563964, 1551892480⟩,
  ⟨11, some 993, none, none, 51, 0, 191905059, -312751936, 1551892480⟩,
  ⟨12, some 993, none, none, 81, 0, 191905058, -312633108, 1551892480⟩,
  ⟨13, some 993, none, none, 81, 0, 191904951, -312708926, 1551892480⟩,
  ⟨14, some 993, none, none, 48, 0, 191904951, -312708926, 1551892480⟩,
  ⟨15, some 993, none, none, 66, 0, 191905059, -312751936, 1551892480⟩]
theorem block00 : RngExperiment.classifyBlock group mapName tape 0 = some (5, expected00) := by native_decide
end Recording
