import WindowE1M7Hfe2205df0f56c62d00b854b48d209a0a5f1f3c33ef70ce824a43abf0cfdc1b0bT4160N1Access
import MapEval
import LeanDoomProofs.CombatNormalizationV2
import LeanDoomProofs.CombatTables
open Doom Doom.Collision LeanDoomProofs WindowE1M7Hfe2205df0f56c62d00b854b48d209a0a5f1f3c33ef70ce824a43abf0cfdc1b0bT4160N1
namespace Campaign.E1M7.ShortExit
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000
set_option cbv.maxSteps 8000000
set_option Elab.async false
attribute [local cbv_opaque] Tables.fineSine Tables.fineTangent Tables.tanToAngle Float.ofBits Fixed.toFloat

private theorem cachedScene : s4160.player.scene = some WindowE1M7Hfe2205df0f56c62d00b854b48d209a0a5f1f3c33ef70ce824a43abf0cfdc1b0bT4160N1Tree.d528 := rfl
private theorem grid : WindowE1M7Hfe2205df0f56c62d00b854b48d209a0a5f1f3c33ef70ce824a43abf0cfdc1b0bT4160N1Tree.d528.grid = E1M7Tree.d1928 := rfl
private theorem lines : WindowE1M7Hfe2205df0f56c62d00b854b48d209a0a5f1f3c33ef70ce824a43abf0cfdc1b0bT4160N1Tree.d528.lines = WindowE1M7Hfe2205df0f56c62d00b854b48d209a0a5f1f3c33ef70ce824a43abf0cfdc1b0bT4160N1Tree.d211 := rfl
private theorem links : WindowE1M7Hfe2205df0f56c62d00b854b48d209a0a5f1f3c33ef70ce824a43abf0cfdc1b0bT4160N1Tree.d528.links = WindowE1M7Hfe2205df0f56c62d00b854b48d209a0a5f1f3c33ef70ce824a43abf0cfdc1b0bT4160N1Tree.d416 := rfl
attribute [local cbv_opaque] WindowE1M7Hfe2205df0f56c62d00b854b48d209a0a5f1f3c33ef70ce824a43abf0cfdc1b0bT4160N1Tree.d528
attribute [local cbv_eval] grid lines links

/-- Values needed by the original Use dispatcher at the second recorded pose. -/
def rayResult (scene : Scene) : Except String (UseAction × Array Nat) :=
  (scene.useLines s4161.player.body.x s4161.player.body.y s4161.player.body.angle).map
    fun r => (r.action, r.path.visited.map (·.id))

private theorem directRay : rayResult WindowE1M7Hfe2205df0f56c62d00b854b48d209a0a5f1f3c33ef70ce824a43abf0cfdc1b0bT4160N1Tree.d528 = .ok (.special 810 false, #[810]) := by
  combatV2_certify

theorem cachedRay :
    (s4160.player.scene.map rayResult) = some (.ok (.special 810 false, #[810])) := by
  rw [cachedScene]
  exact congrArg some directRay

/-- The ordinary dispatcher on the concrete mutable predecessor map. -/
def feedback (s : Simulation) : Bool × Nat × String × Bool := Id.run do
  let line := s.map.lines[810]!
  let side := s.map.sides[line.front]!
  let r := LevelSpecials.exitSwitch (LevelSpecials.switchList s.switchEpisode)
    (⟨side.upper,side.middle,side.lower⟩ : LevelSpecials.Textures String) line.special true false
  return (r.completed,r.special,r.textures.middle,r.switchSound)

theorem predecessorFeedback : feedback s4160 = (true, 0, "SW2COMP", true) := by
  combatV2_certify

#print axioms cachedRay
#print axioms predecessorFeedback
end Campaign.E1M7.ShortExit
