import Inputs
set_option maxRecDepth 65536
set_option maxHeartbeats 0
namespace Recording
def expected08 : List RngExperiment.Outcome := [
  ⟨128, some 993, none, none, 81, 0, 191904993, -312563964, 1551892480⟩,
  ⟨129, some 993, none, none, 72, 0, 191904993, -312563964, 1551892480⟩,
  ⟨130, some 993, none, none, 75, 0, 191904993, -312563964, 1551892480⟩,
  ⟨131, some 993, none, none, 78, 0, 191905068, -312764664, 1551892480⟩,
  ⟨132, some 993, none, none, 75, 0, 191904993, -312563964, 1551892480⟩,
  ⟨133, some 993, none, none, 57, 0, 191904993, -312563964, 1551892480⟩,
  ⟨134, some 993, none, none, 84, 0, 191904993, -312563964, 1551892480⟩,
  ⟨135, some 993, none, none, 72, 0, 191905068, -312764664, 1551892480⟩,
  ⟨136, some 993, none, none, 78, 0, 191905068, -312764664, 1551892480⟩,
  ⟨137, some 993, none, none, 84, 0, 191904993, -312563964, 1551892480⟩,
  ⟨138, some 993, none, none, 99, 0, 191904993, -312563964, 1551892480⟩,
  ⟨139, some 993, none, none, 90, 0, 191904993, -312563964, 1551892480⟩,
  ⟨140, some 993, none, none, 72, 0, 191904993, -312563964, 1551892480⟩,
  ⟨141, some 993, none, none, 69, 0, 191904993, -312563964, 1551892480⟩,
  ⟨142, some 993, none, none, 87, 0, 191904993, -312563964, 1551892480⟩,
  ⟨143, some 993, none, none, 84, 0, 191904993, -312563964, 1551892480⟩]
theorem block08 : RngExperiment.classifyBlock group mapName tape 8 = some (5, expected08) := by native_decide
end Recording
