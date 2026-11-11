import Inputs
set_option maxRecDepth 65536
set_option maxHeartbeats 0
namespace Recording
def expected03 : List RngExperiment.Outcome := [
  ⟨48, some 993, none, none, 33, 0, 191904993, -312563964, 1551892480⟩,
  ⟨49, some 993, none, none, 84, 0, 191904951, -312708926, 1551892480⟩,
  ⟨50, some 993, none, none, 87, 0, 191905058, -312633108, 1551892480⟩,
  ⟨51, some 993, none, none, 81, 0, 191904993, -312563964, 1551892480⟩,
  ⟨52, some 993, none, none, 93, 0, 191904993, -312563964, 1551892480⟩,
  ⟨53, some 993, none, none, 51, 0, 191904993, -312563964, 1551892480⟩,
  ⟨54, some 993, none, none, 69, 0, 191904993, -312563964, 1551892480⟩,
  ⟨55, some 993, none, none, 84, 0, 191904993, -312563964, 1551892480⟩,
  ⟨56, some 993, none, none, 90, 0, 191904993, -312563964, 1551892480⟩,
  ⟨57, some 993, none, none, 93, 0, 191904993, -312563964, 1551892480⟩,
  ⟨58, some 993, none, none, 69, 0, 191904993, -312563964, 1551892480⟩,
  ⟨59, some 993, none, none, 102, 0, 191904993, -312563964, 1551892480⟩,
  ⟨60, some 993, none, none, 78, 0, 191904993, -312563964, 1551892480⟩,
  ⟨61, some 993, none, none, 72, 0, 191904993, -312563964, 1551892480⟩,
  ⟨62, some 993, none, none, 69, 0, 191904993, -312563964, 1551892480⟩,
  ⟨63, some 993, none, none, 90, 0, 191904993, -312563964, 1551892480⟩]
theorem block03 : RngExperiment.classifyBlock group mapName tape 3 = some (5, expected03) := by native_decide
end Recording
