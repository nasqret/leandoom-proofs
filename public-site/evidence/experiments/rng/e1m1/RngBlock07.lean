import Inputs
set_option maxRecDepth 65536
set_option maxHeartbeats 0
namespace Recording
def expected07 : List RngExperiment.Outcome := [
  ⟨112, some 993, none, none, 93, 0, 191904993, -312563964, 1551892480⟩,
  ⟨113, some 993, none, none, 87, 0, 191904951, -312708926, 1551892480⟩,
  ⟨114, some 993, none, none, 81, 0, 191904993, -312563964, 1551892480⟩,
  ⟨115, some 993, none, none, 93, 0, 191904993, -312563964, 1551892480⟩,
  ⟨116, some 993, none, none, 69, 0, 191904951, -312708926, 1551892480⟩,
  ⟨117, some 993, none, none, 84, 0, 191904993, -312563964, 1551892480⟩,
  ⟨118, some 993, none, none, 54, 0, 191904993, -312563964, 1551892480⟩,
  ⟨119, some 993, none, none, 51, 0, 191904993, -312563964, 1551892480⟩,
  ⟨120, some 993, none, none, 42, 0, 191904951, -312708926, 1551892480⟩,
  ⟨121, some 993, none, none, 72, 0, 191905068, -312764664, 1551892480⟩,
  ⟨122, some 993, none, none, 87, 0, 191904993, -312563964, 1551892480⟩,
  ⟨123, some 993, none, none, 84, 0, 191904993, -312563964, 1551892480⟩,
  ⟨124, some 993, none, none, 48, 0, 191904951, -312708926, 1551892480⟩,
  ⟨125, some 993, none, none, 57, 0, 191904993, -312563964, 1551892480⟩,
  ⟨126, some 993, none, none, 87, 0, 191904993, -312563964, 1551892480⟩,
  ⟨127, some 993, none, none, 72, 0, 191905068, -312764664, 1551892480⟩]
theorem block07 : RngExperiment.classifyBlock group mapName tape 7 = some (5, expected07) := by native_decide
end Recording
