import Inputs
set_option maxRecDepth 65536
set_option maxHeartbeats 0
namespace Recording
def expected10 : List RngExperiment.Outcome := [
  ⟨160, none, some 858, none, 0, 54, -95396149, 136935110, 625762560⟩,
  ⟨161, none, none, none, 85, 60, -44040624, 152044514, 4148166656⟩,
  ⟨162, none, none, none, 76, 66, -21146655, 153384919, 4148166656⟩,
  ⟨163, none, none, none, 10, 55, -90074992, 117842634, 3541105856⟩,
  ⟨164, none, some 832, none, 0, 50, -98415247, 124840660, 4065393856⟩,
  ⟨165, none, none, none, 70, 73, -44040624, 152044514, 4148166656⟩,
  ⟨166, none, none, none, 43, 60, -44040624, 152044514, 4148166656⟩,
  ⟨167, none, some 916, none, 0, 55, -89132186, 119773362, 4253024256⟩,
  ⟨168, none, some 845, none, 0, 52, -98415247, 125212434, 4081869056⟩,
  ⟨169, none, some 953, none, 0, 60, -89146942, 133171080, 80503040⟩,
  ⟨170, none, none, none, 82, 66, -21146655, 153384919, 4148166656⟩,
  ⟨171, none, none, none, 67, 66, -23380348, 152047934, 4148166656⟩,
  ⟨172, none, none, none, 55, 66, -21146655, 153384919, 4148166656⟩,
  ⟨173, none, none, none, 91, 66, -24625409, 151059103, 4148166656⟩,
  ⟨174, none, some 856, none, 0, 51, -89140304, 118484292, 4086365376⟩,
  ⟨175, none, some 840, none, 0, 52, -98415247, 125238040, 4123812096⟩]
theorem block10 : RngExperiment.classifyBlock group mapName tape 10 = some (25, expected10) := by native_decide
end Recording
