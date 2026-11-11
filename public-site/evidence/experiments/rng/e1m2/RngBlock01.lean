import Inputs
set_option maxRecDepth 65536
set_option maxHeartbeats 0
namespace Recording
def expected01 : List RngExperiment.Outcome := [
  ⟨16, none, some 865, none, 0, 54, -98415247, 125212434, 416047360⟩,
  ⟨17, none, some 962, none, 0, 61, -89132147, 133169139, 59531520⟩,
  ⟨18, none, some 912, none, 0, 59, -89132225, 131215560, 4253024256⟩,
  ⟨19, none, some 969, none, 0, 59, -89130717, 118490808, 3918593216⟩,
  ⟨20, none, some 888, none, 0, 57, -89449810, 133147352, 272629760⟩,
  ⟨21, none, some 960, none, 0, 55, -89131598, 129753466, 4183459135⟩,
  ⟨22, none, none, none, 97, 60, -44040624, 152044514, 4148166656⟩,
  ⟨23, none, none, none, 55, 66, -22002900, 153568821, 4148166656⟩,
  ⟨24, none, some 836, none, 0, 53, -98314951, 124381563, 4169138176⟩,
  ⟨25, some 1017, none, none, 73, 73, -20626184, 153723710, 4148166656⟩,
  ⟨26, none, none, none, 76, 66, -21945307, 153384919, 4148166656⟩,
  ⟨27, none, none, none, 85, 73, -44040685, 152044531, 4148166656⟩,
  ⟨28, none, none, none, 64, 66, -21488737, 153384919, 4148166656⟩,
  ⟨29, none, none, none, 97, 66, -21146655, 153384919, 4148166656⟩,
  ⟨30, none, some 847, none, 0, 52, -98415247, 125238040, 4081869056⟩,
  ⟨31, none, none, none, 94, 73, -44040685, 152044531, 4148166656⟩]
theorem block01 : RngExperiment.classifyBlock group mapName tape 1 = some (25, expected01) := by native_decide
end Recording
