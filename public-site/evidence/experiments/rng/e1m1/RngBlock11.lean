import Inputs
set_option maxRecDepth 65536
set_option maxHeartbeats 0
namespace Recording
def expected11 : List RngExperiment.Outcome := [
  ⟨176, none, none, none, 69, 0, 194000643, -295572564, 1551892480⟩,
  ⟨177, some 993, none, none, 87, 0, 191904993, -312563964, 1551892480⟩,
  ⟨178, some 993, none, none, 102, 0, 191904993, -312563964, 1551892480⟩,
  ⟨179, some 993, none, none, 69, 0, 191905068, -312764664, 1551892480⟩,
  ⟨180, some 993, none, none, 99, 0, 191904993, -312563964, 1551892480⟩,
  ⟨181, some 993, none, none, 84, 0, 191905058, -312633108, 1551892480⟩,
  ⟨182, some 993, none, none, 102, 0, 191904993, -312563964, 1551892480⟩,
  ⟨183, some 993, none, none, 102, 0, 191904993, -312563964, 1551892480⟩,
  ⟨184, some 993, none, none, 84, 0, 191904993, -312563964, 1551892480⟩,
  ⟨185, some 993, none, none, 75, 0, 191904951, -312708926, 1551892480⟩,
  ⟨186, some 993, none, none, 57, 0, 191905058, -312633108, 1551892480⟩,
  ⟨187, some 993, none, none, 93, 0, 191904993, -312563964, 1551892480⟩,
  ⟨188, some 993, none, none, 42, 0, 191903617, -312338598, 1551892480⟩,
  ⟨189, some 993, none, none, 69, 0, 191904993, -312563964, 1551892480⟩,
  ⟨190, some 993, none, none, 96, 0, 191904993, -312563964, 1551892480⟩,
  ⟨191, some 993, none, none, 93, 0, 191904993, -312563964, 1551892480⟩]
theorem block11 : RngExperiment.classifyBlock group mapName tape 11 = some (5, expected11) := by native_decide
end Recording
