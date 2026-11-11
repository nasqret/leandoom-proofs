import Inputs
set_option maxRecDepth 65536
set_option maxHeartbeats 0
namespace Recording
def expected00 : List RngExperiment.Outcome := [
  ⟨0, none, some 907, none, 0, 54, -89130717, 118490808, 3897621696⟩,
  ⟨1, none, none, none, 100, 61, -44040710, 152044431, 4148166656⟩,
  ⟨2, none, none, none, 79, 60, -44040624, 152044514, 4148166656⟩,
  ⟨3, none, some 958, none, 0, 55, -89130717, 118490808, 3939564736⟩,
  ⟨4, none, some 936, none, 0, 55, -89132186, 119232550, 20971520⟩,
  ⟨5, some 1017, none, none, 43, 73, -20626184, 153723710, 4148166656⟩,
  ⟨6, none, some 944, none, 0, 60, -89132151, 130290001, 20971520⟩,
  ⟨7, none, none, none, 100, 61, -44040710, 152044431, 4148166656⟩,
  ⟨8, none, some 896, none, 0, 52, -89130592, 118490642, 3992099903⟩,
  ⟨9, none, none, none, 70, 66, -21945307, 153384919, 4148166656⟩,
  ⟨10, none, some 879, none, 0, 55, -89565246, 133253906, 604791040⟩,
  ⟨11, none, some 854, none, 0, 52, -98415247, 123209534, 4107336896⟩,
  ⟨12, none, some 840, none, 0, 52, -98415247, 125131050, 4123812096⟩,
  ⟨13, none, none, none, 91, 61, -44040710, 152044431, 4148166656⟩,
  ⟨14, none, none, none, 40, 66, -22285718, 152044500, 4148166656⟩,
  ⟨15, none, some 881, none, 0, 54, -89131667, 125336620, 357629120⟩]
theorem block00 : RngExperiment.classifyBlock group mapName tape 0 = some (25, expected00) := by native_decide
end Recording
