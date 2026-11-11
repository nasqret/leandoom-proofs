import Inputs
set_option maxRecDepth 65536
set_option maxHeartbeats 0
namespace Recording
def expected05 : List RngExperiment.Outcome := [
  ⟨80, none, some 906, none, 0, 55, -89131663, 126246580, 4086365376⟩,
  ⟨81, some 1017, none, none, 64, 73, -20626184, 153723710, 4148166656⟩,
  ⟨82, none, none, none, 76, 66, -21146655, 153384919, 4148166656⟩,
  ⟨83, some 1017, none, none, 91, 66, -20739015, 153384919, 4148166656⟩,
  ⟨84, none, some 948, none, 0, 55, -89129683, 118490033, 4128308416⟩,
  ⟨85, none, none, none, 82, 66, -21488737, 153384919, 4148166656⟩,
  ⟨86, none, none, none, 76, 66, -21146655, 153384919, 4148166656⟩,
  ⟨87, none, some 966, none, 0, 60, -89132225, 133169026, 59531520⟩,
  ⟨88, none, none, none, 70, 66, -21146655, 153384919, 4148166656⟩,
  ⟨89, none, none, none, 70, 66, -21488737, 153384919, 4148166656⟩,
  ⟨90, none, none, none, 49, 66, -22285718, 152044500, 4148166656⟩,
  ⟨91, none, some 854, none, 0, 53, -98415247, 125238040, 59531520⟩,
  ⟨92, none, none, none, 67, 66, -21146655, 153384919, 4148166656⟩,
  ⟨93, none, none, none, 46, 66, -21488737, 153384919, 4148166656⟩,
  ⟨94, none, none, none, 55, 60, -44040624, 152044514, 4148166656⟩,
  ⟨95, none, none, none, 46, 66, -21146655, 153384919, 4148166656⟩]
theorem block05 : RngExperiment.classifyBlock group mapName tape 5 = some (25, expected05) := by native_decide
end Recording
