import Inputs
set_option maxRecDepth 65536
set_option maxHeartbeats 0
namespace Recording
def expected13 : List RngExperiment.Outcome := [
  ⟨208, none, none, none, 85, 66, -18685047, 147179558, 4148166656⟩,
  ⟨209, none, none, none, 79, 66, -21945307, 153384919, 4148166656⟩,
  ⟨210, none, none, none, 46, 66, -21146655, 153384919, 4148166656⟩,
  ⟨211, none, none, none, 100, 61, -44040710, 152044431, 4148166656⟩,
  ⟨212, none, some 1005, none, 0, 60, -89129649, 123370051, 3897621696⟩,
  ⟨213, none, none, none, 67, 66, -21146655, 153384919, 4148166656⟩,
  ⟨214, none, none, none, 73, 60, -44040624, 152044514, 4148166656⟩,
  ⟨215, none, some 932, none, 0, 55, -89132016, 133168648, 204789231⟩,
  ⟨216, none, some 843, none, 0, 52, -98415247, 125453111, 4039926016⟩,
  ⟨217, none, none, none, 82, 60, -44040624, 152044514, 4148166656⟩,
  ⟨218, none, none, none, 76, 60, -44040624, 152044514, 4148166656⟩,
  ⟨219, none, none, none, 61, 66, -21146655, 153384919, 4148166656⟩,
  ⟨220, none, none, none, 85, 66, -22022899, 154823158, 4148166656⟩,
  ⟨221, none, none, none, 85, 60, -44040624, 152044514, 4148166656⟩,
  ⟨222, none, some 913, none, 0, 55, -89130814, 118490630, 3876650176⟩,
  ⟨223, none, none, none, 61, 66, -21146655, 153384919, 4148166656⟩]
theorem block13 : RngExperiment.classifyBlock group mapName tape 13 = some (25, expected13) := by native_decide
end Recording
