import CampaignWinner
import RecordedTapeLiteral
set_option maxRecDepth 65536
example : _root_.LeanDoomProofs.CheckedReplay.Passage _root_.LeanDoomProofs.E1M2.group "E1M2" _root_.NuclearRecording.inputs := _root_.NuclearRecording.passage
example : _root_.LeanDoomProofs.RecordedRoute.fromMap _root_.LeanDoomProofs.E1M2.group "E1M2" _root_.NuclearRecording.inputs = .ok _root_.NuclearFull.s1017 := _root_.NuclearRecording.terminal
theorem LeanDoomProofs.RecordedTapeAudit.input_identity : _root_.NuclearRecording.inputs = _root_.LeanDoomProofs.RecordedTapeLiteral.inputs := by rfl
#print axioms NuclearRecording.length
#print axioms NuclearRecording.checked
#print axioms NuclearRecording.passage
#print axioms NuclearRecording.terminal
#print axioms NuclearRecording.safeFirstExit
#print axioms NuclearRecording.winnable
#print axioms LeanDoomProofs.RecordedTapeAudit.input_identity
