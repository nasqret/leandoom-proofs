import Inputs
set_option maxRecDepth 65536
set_option maxHeartbeats 0
namespace Recording
def expected05 : List RngExperiment.Outcome := [
  ⟨80, some 993, none, none, 72, 0, 191905068, -312764664, 1551892480⟩,
  ⟨81, some 993, none, none, 81, 0, 191905058, -312633108, 1551892480⟩,
  ⟨82, some 993, none, none, 69, 0, 191904951, -312708926, 1551892480⟩,
  ⟨83, some 993, none, none, 57, 0, 191904993, -312563964, 1551892480⟩,
  ⟨84, some 993, none, none, 69, 0, 191904951, -312708926, 1551892480⟩,
  ⟨85, some 993, none, none, 63, 0, 191905058, -312633108, 1551892480⟩,
  ⟨86, some 993, none, none, 90, 0, 191904951, -312708926, 1551892480⟩,
  ⟨87, some 993, none, none, 66, 0, 191904993, -312563964, 1551892480⟩,
  ⟨88, some 993, none, none, 78, 0, 191904951, -312708926, 1551892480⟩,
  ⟨89, some 993, none, none, 57, 0, 191904993, -312563964, 1551892480⟩,
  ⟨90, some 993, none, none, 66, 0, 191905068, -312764664, 1551892480⟩,
  ⟨91, some 993, none, none, 21, 0, 191905068, -312764664, 1551892480⟩,
  ⟨92, some 993, none, none, 90, 0, 191905058, -312633108, 1551892480⟩,
  ⟨93, some 993, none, none, 78, 0, 191904993, -312563964, 1551892480⟩,
  ⟨94, some 993, none, none, 96, 0, 191904951, -312708926, 1551892480⟩,
  ⟨95, some 993, none, none, 72, 0, 191904993, -312563964, 1551892480⟩]
theorem block05 : RngExperiment.classifyBlock group mapName tape 5 = some (5, expected05) := by native_decide
end Recording
