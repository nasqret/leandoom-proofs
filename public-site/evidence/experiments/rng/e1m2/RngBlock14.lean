import Inputs
set_option maxRecDepth 65536
set_option maxHeartbeats 0
namespace Recording
def expected14 : List RngExperiment.Outcome := [
  ⟨224, none, none, none, 76, 66, -24625409, 151059103, 4148166656⟩,
  ⟨225, none, none, none, 76, 60, -44040624, 152044514, 4148166656⟩,
  ⟨226, none, none, none, 76, 60, -44040624, 152044514, 4148166656⟩,
  ⟨227, none, none, none, 7, 55, -89129495, 118493485, 4148166656⟩,
  ⟨228, none, none, none, 67, 73, -44040685, 152044531, 4148166656⟩,
  ⟨229, none, none, none, 76, 66, -21146655, 153384919, 4148166656⟩,
  ⟨230, none, none, none, 73, 60, -44040624, 152044514, 4148166656⟩,
  ⟨231, some 1017, none, none, 88, 73, -20626184, 153723710, 4148166656⟩,
  ⟨232, none, none, none, 79, 60, -44040624, 152044514, 4148166656⟩,
  ⟨233, none, none, none, 37, 67, -44040624, 152044514, 4148166656⟩,
  ⟨234, none, some 830, none, 0, 52, -99402492, 124831266, 499933440⟩,
  ⟨235, none, none, none, 49, 66, -21146655, 153384919, 4148166656⟩,
  ⟨236, none, none, none, 76, 61, -44040710, 152044431, 4148166656⟩,
  ⟨237, none, none, none, 28, 73, -44040685, 152044531, 4148166656⟩,
  ⟨238, none, none, none, 55, 66, -21146655, 153384919, 4148166656⟩,
  ⟨239, none, some 951, none, 0, 55, -89130809, 118490652, 3916898432⟩]
theorem block14 : RngExperiment.classifyBlock group mapName tape 14 = some (25, expected14) := by native_decide
end Recording
