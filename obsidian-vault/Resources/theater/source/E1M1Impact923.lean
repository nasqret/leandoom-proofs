import E1M1Tic923Projectiles
open Doom LeanDoomProofs LeanDoomProofs.E1M1Route

namespace LeanDoomProofs.E1M1Shot

theorem health_before_923 : E1M1Tic923.actors.inventory.health = 72 := by doom_kernel_rfl

/-- On this real E1M1 combat state, missile slot two hits the player for
24 points. Both the health and emitted events are obtained from the actual
projectile thinker, including its damage callback. -/
theorem third_fireball_hits :
    (E1M1Tic923.actors.tickProjectiles damageOp).map
        (fun s => (s.inventory.health, s.projectileEvents)) =
      .ok (48, #[(2, .hit 0 24), (2, .sound "firxpl")]) := by
  rw [tic923Projectiles]
  doom_kernel_rfl

#print axioms health_before_923
#print axioms third_fireball_hits
end LeanDoomProofs.E1M1Shot
