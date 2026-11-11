import Inputs
set_option maxRecDepth 65536
set_option maxHeartbeats 0
namespace Recording
def expected10 : List RngExperiment.Outcome := [
  ⟨160, some 993, none, none, 72, 0, 191904993, -312563964, 1551892480⟩,
  ⟨161, some 993, none, none, 54, 0, 191904993, -312563964, 1551892480⟩,
  ⟨162, some 993, none, none, 60, 0, 191904993, -312563964, 1551892480⟩,
  ⟨163, some 993, none, none, 84, 0, 191903617, -312338598, 1551892480⟩,
  ⟨164, some 993, none, none, 72, 0, 191904993, -312563964, 1551892480⟩,
  ⟨165, some 993, none, none, 87, 0, 191905068, -312764664, 1551892480⟩,
  ⟨166, some 993, none, none, 96, 0, 191904993, -312563964, 1551892480⟩,
  ⟨167, some 993, none, none, 87, 0, 191904993, -312563964, 1551892480⟩,
  ⟨168, some 993, none, none, 96, 0, 191904993, -312563964, 1551892480⟩,
  ⟨169, some 993, none, none, 102, 0, 191904951, -312708926, 1551892480⟩,
  ⟨170, some 993, none, none, 93, 0, 191904993, -312563964, 1551892480⟩,
  ⟨171, some 993, none, none, 75, 0, 191904951, -312708926, 1551892480⟩,
  ⟨172, some 993, none, none, 87, 0, 191904993, -312563964, 1551892480⟩,
  ⟨173, some 993, none, none, 87, 0, 191904993, -312563964, 1551892480⟩,
  ⟨174, some 993, none, none, 102, 0, 191904993, -312563964, 1551892480⟩,
  ⟨175, some 993, none, none, 90, 0, 191904993, -312563964, 1551892480⟩]
theorem block10 : RngExperiment.classifyBlock group mapName tape 10 = some (5, expected10) := by native_decide
end Recording
