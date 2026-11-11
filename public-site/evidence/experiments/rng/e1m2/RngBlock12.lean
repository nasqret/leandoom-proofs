import Inputs
set_option maxRecDepth 65536
set_option maxHeartbeats 0
namespace Recording
def expected12 : List RngExperiment.Outcome := [
  ⟨192, none, none, none, 4, 55, -89129693, 118491457, 3771792576⟩,
  ⟨193, none, none, none, 55, 66, -21146655, 153384919, 4148166656⟩,
  ⟨194, none, some 950, none, 0, 60, -93113507, 135054549, 80503040⟩,
  ⟨195, none, some 961, none, 0, 61, -89132232, 133169119, 59531520⟩,
  ⟨196, none, none, none, 82, 66, -18685047, 147179558, 4148166656⟩,
  ⟨197, none, some 943, none, 0, 55, -89130848, 118490713, 3939564736⟩,
  ⟨198, none, none, none, 70, 66, -21146655, 153384919, 4148166656⟩,
  ⟨199, none, none, none, 70, 73, -44040617, 152044456, 4148166656⟩,
  ⟨200, none, none, none, 73, 73, -44040685, 152044531, 4148166656⟩,
  ⟨201, none, some 869, none, 0, 54, -98415247, 125453111, 751591680⟩,
  ⟨202, none, none, none, 91, 66, -22285718, 152044500, 4148166656⟩,
  ⟨203, none, none, none, 70, 66, -21146655, 153384919, 4148166656⟩,
  ⟨204, none, none, none, 91, 66, -22285718, 152044500, 4148166656⟩,
  ⟨205, none, none, none, 70, 66, -21146655, 153384919, 4148166656⟩,
  ⟨206, none, some 842, none, 0, 53, -98732647, 125199361, 3980394496⟩,
  ⟨207, none, none, none, 73, 60, -44040624, 152044514, 4148166656⟩]
theorem block12 : RngExperiment.classifyBlock group mapName tape 12 = some (25, expected12) := by native_decide
end Recording
