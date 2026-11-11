import Inputs
set_option maxRecDepth 65536
set_option maxHeartbeats 0
namespace Recording
def expected07 : List RngExperiment.Outcome := [
  ⟨112, none, none, none, 49, 66, -22285718, 152044500, 4148166656⟩,
  ⟨113, none, none, none, 91, 73, -44040685, 152044531, 4148166656⟩,
  ⟨114, none, some 920, none, 0, 55, -89130817, 123642502, 3853983872⟩,
  ⟨115, none, some 959, none, 0, 60, -89132214, 133169129, 80503040⟩,
  ⟨116, none, none, none, 79, 73, -44040685, 152044531, 4148166656⟩,
  ⟨117, none, some 978, none, 0, 55, -89131480, 123476561, 4120544575⟩,
  ⟨118, none, none, none, 100, 60, -44040624, 152044514, 4148166656⟩,
  ⟨119, none, some 954, none, 0, 60, -89130891, 133168979, 80503040⟩,
  ⟨120, none, some 857, none, 0, 51, -98415247, 125671535, 4086365376⟩,
  ⟨121, none, none, none, 70, 60, -44040624, 152044514, 4148166656⟩,
  ⟨122, none, some 859, none, 0, 54, -99401851, 124831266, 625762560⟩,
  ⟨123, none, some 940, none, 0, 55, -89130717, 118490808, 3939564736⟩,
  ⟨124, none, none, none, 100, 60, -44040624, 152044514, 4148166656⟩,
  ⟨125, none, some 976, none, 0, 55, -89129768, 118489969, 4086365376⟩,
  ⟨126, none, none, none, 70, 66, -22022899, 154823158, 4148166656⟩,
  ⟨127, none, none, none, 82, 60, -44040624, 152044514, 4148166656⟩]
theorem block07 : RngExperiment.classifyBlock group mapName tape 7 = some (25, expected07) := by native_decide
end Recording
