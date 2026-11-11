import Inputs
set_option maxRecDepth 65536
set_option maxHeartbeats 0
namespace Recording
def expected12 : List RngExperiment.Outcome := [
  ⟨192, some 993, none, none, 66, 0, 191904951, -312708926, 1551892480⟩,
  ⟨193, some 993, none, none, 60, 0, 191903617, -312338598, 1551892480⟩,
  ⟨194, some 993, none, none, 63, 0, 191906630, -313225986, 1551892480⟩,
  ⟨195, some 993, none, none, 45, 0, 191904951, -312708926, 1551892480⟩,
  ⟨196, some 993, none, none, 48, 0, 191905059, -312751936, 1551892480⟩,
  ⟨197, some 993, none, none, 96, 0, 191905058, -312633108, 1551892480⟩,
  ⟨198, some 993, none, none, 30, 0, 191905058, -312633108, 1551892480⟩,
  ⟨199, some 993, none, none, 63, 0, 191904951, -312708926, 1551892480⟩,
  ⟨200, some 993, none, none, 36, 0, 191903617, -312338598, 1551892480⟩,
  ⟨201, some 993, none, none, 87, 0, 191904951, -312708926, 1551892480⟩,
  ⟨202, some 993, none, none, 45, 0, 191905068, -312764664, 1551892480⟩,
  ⟨203, some 993, none, none, 51, 0, 191904993, -312563964, 1551892480⟩,
  ⟨204, some 993, none, none, 42, 0, 191903617, -312338598, 1551892480⟩,
  ⟨205, some 993, none, none, 48, 0, 191904993, -312563964, 1551892480⟩,
  ⟨206, some 993, none, none, 81, 0, 191904951, -312708926, 1551892480⟩,
  ⟨207, some 993, none, none, 78, 0, 191904993, -312563964, 1551892480⟩]
theorem block12 : RngExperiment.classifyBlock group mapName tape 12 = some (5, expected12) := by native_decide
end Recording
