import Doom.ProjectileRuntime
import Doom.Radius
import LeanDoomProofs.WeaponTotal
import LeanDoomProofs.CombatGeometryV2

/-! CombatV2: total weapon controller plus fully specified integer enemy
arithmetic. Non-imp range, facing, sight, movement and corpse-camera arithmetic
are revised. Imp logic, damage/RNG, player physics and interaction order are
retained. This is NOT asserted equivalent to CombatV1 or the original engine.
GPL-2.0-or-later; upstream provenance remains in vendor/leandoom. -/
namespace Doom
open LeanDoomProofs

def Map.rayClearCombatV2 (map : Map) (x y z tx ty tz : Int) : Bool :=
  EnemyArithmeticV2.rayClear map x y z tx ty tz

private def floorAt (m : Map) (p : Vertex) : Int :=
  let index := (m.sectorAt (Fixed.ofInt p.x) (Fixed.ofInt p.y)).toOption.getD 0
  m.sectors[index]!.floor

private def Simulation.randomCombatV2 (s : Simulation) : Nat × Simulation :=
  let (value, rng) := s.rng.nextPlay
  (value, { s with rng })

private def Simulation.noticeCombatV2 (s : Simulation) (message : String) : Simulation :=
  { s with message, messageTicks := 70 }

private def sourceCredit (source : Option Nat) : Option (Option (Fin 4)) :=
  source.map fun id => if id == 0 then some 0 else none

private def Simulation.hurtPlayerCombatV2 (s : Simulation) (damage : Nat) (source : Option Nat) : Simulation := Id.run do
  let inventory := s.inventory.damage damage
  if inventory.health == s.inventory.health then return s
  let lost := s.inventory.health-inventory.health
  -- Keep overkill after the existing armor bridge; full P_DamageMobj is separate.
  let health := Int32.ofNat s.inventory.health - Int32.ofNat (damage - (s.inventory.armor-inventory.armor))
  let mut s := { s with inventory, attacker := source.bind (fun id => if id == 0 then none else some (id-1)) }
  if inventory.health == 0 then
    let weaponResult := WeaponTotal.drop { state := s.weapon, player := inventory.toPickup, dead := true }
    let .ok droppedWeapon := weaponResult | return { s with physicsError := some WeaponTotal.exhausted }
    let weapon := droppedWeapon.state
    s := { s with weapon }
    match s.killPlayer health (sourceCredit source) with
    | .ok next => s := next
    | .error error => return { s with physicsError := some error }
  if inventory.health > 0 then s := s.sound "plpain"
  return s.noticeCombatV2 (if inventory.health == 0 then "You died - R to restart" else s!"Hit for {lost}")

private def Simulation.hurtActorCombatV2 (s : Simulation) (index damage : Nat)
    (source : Option Nat) : Simulation := Id.run do
  let mut s := s
  let actor := s.actors[index]!
  let some spec := enemySpec actor.kind | return s
  if actor.health == 0 then return s
  let health := Int32.ofNat actor.health - Int32.ofNat damage
  if health ≤ 0 then
    match s.killActor index health (sourceCredit source) with
    | .ok next => return next.noticeCombatV2 "Enemy down"
    | .error error => return { s with physicsError := some error }
  let mut actor := { actor with health := health.toInt.toNat }
  -- P_DamageMobj returns on lethal damage before assigning target. Barrels
  -- retain the first surviving hit's source: their threshold never chases down.
  if actor.damageTarget.isNone && source != some (actor.thing+1) then
    actor := { actor with damageTarget := source }
  let (roll,next) := s.randomCombatV2
  s := next
  if let some imp := actor.imp then
    let pain := roll < spec.painChance
    let imp := { imp with reaction := 0, justHit := imp.justHit || pain }
    let imp := if imp.threshold == 0 && source.isSome && source != some imp.id then
        { imp with target := source, threshold := 100 } else imp
    let entry := if pain then some ImpData.TROO_PAIN
      else if imp.frame == ImpData.TROO_STND && imp.target.isSome then some ImpData.TROO_RUN1 else none
    actor := { actor with imp := some imp }
    s := { s with actors := s.actors.set! index actor }
    if let some frame := entry then
      match s.impRun index (some frame) with
      | .ok next => s := next
      | .error error => return { s with physicsError := some error }
    return s.noticeCombatV2 s!"Hit - enemy health {health}"
  if roll < spec.painChance then
    actor := { actor with mode := .pain, age := 0 }
    s := s.sound (if actor.kind == 3002 || actor.kind == 58 then "dmpain" else "popain") (.actor (actor.thing+1))
  else if actor.mode == .idle && actor.kind != 2035 && actor.kind != 3001 then actor := { actor with mode := .chase, age := 0 }
  return { (s.noticeCombatV2 s!"Hit - enemy health {health}") with actors := s.actors.set! index actor }

private def Simulation.applyCombatDamageCombatV2 (s : Simulation) (target damage : Nat) (source : Option Nat) : Simulation :=
  if target == 0 then s.hurtPlayerCombatV2 damage source
  else match s.actors.findIdx? (·.thing == target-1) with
    | some index => s.hurtActorCombatV2 index damage source
    | none => s

private def Simulation.alertImpsCombatV2 (s : Simulation) : Simulation :=
  match s.noiseAlert with
  | .ok next => next
  | .error e => { s with physicsError := some e }

/-- Reuse live block links and exact clipped actor heights. Prototype actor
movement still mirrors map positions into this scene at the combat boundary. -/
private def Simulation.combatSceneCombatV2 (s : Simulation) : Except String Collision.Scene :=
  s.player.syncScene s.map

/-- Consume ordered hit requests using the existing damage bridge. Effect actor
spawning and its RNG and full P_DamageMobj remain pending.
E1M1 has no shoot-activated specials; unsupported active cases fail explicitly. -/
private def Simulation.shootCombatV2 (s : Simulation) (shooter : Nat) (angle : Angle)
    (slope : Fixed) (damage : Nat) (distance : Fixed := Fixed.ofInt 2048) : Simulation := Id.run do
  let result := do
    let scene ← s.combatSceneCombatV2
    scene.lineAttack shooter angle distance slope (Int32.ofNat damage)
      (fun id =>
        let line := s.map.lines[id]!
        let front := s.map.sectors[s.map.sides[line.front]!.sector]!.ceilingTexture == "F_SKY1"
        let back := (s.map.sides[line.back]?.bind fun side => s.map.sectors[side.sector]?).any (fun (sector : Sector) => sector.ceilingTexture == "F_SKY1")
        (front,back))
      (fun id => id > 0 && s.map.things[id-1]!.kind == 2035)
  let .ok result := result | return { s with physicsError := (match result with | .error error => some error | .ok _ => none) }
  let mut s := { s with shotSlope := slope }
  for event in result.events do
    s := { s with shotEvents := s.shotEvents.push (shooter,event) }
    match event with
    | .special id =>
      let special := s.map.lines[id]!.special
      if special == 46 || (shooter == 0 && (special == 24 || special == 47)) then
        return { s with physicsError := some s!"combat: shoot-activated special {special} is not ported" }
    | .damage target amount =>
      if target == 0 then s := s.hurtPlayerCombatV2 amount.toInt.toNat (some shooter)
      else if let some index := s.actors.findIdx? (fun (actor : Actor) => actor.thing == target-1) then
        s := s.hurtActorCombatV2 index amount.toInt.toNat (some shooter)
    | _ => pure ()
  return s

/-- A_FirePistol/A_FireShotgun share one autoaim slope. Each pellet consumes
its damage/spread draws immediately before tracing and applying its damage, so
pain/death RNG from earlier pellets interleaves with later pellet draws. -/
private def Simulation.fireGunCombatV2 (s : Simulation) (shotgun accurate : Bool) : Simulation := Id.run do
  let mut s := (s.sound (if shotgun then "shotgn" else "pistol")).noticeCombatV2 (if shotgun then "Shotgun fired" else "Pistol fired")
  let aiming := do
    let scene ← s.combatSceneCombatV2
    scene.bulletAim 0 s.player.body.angle
  let .ok aim := aiming | return { s with physicsError := (match aiming with | .error error => some error | .ok _ => none) }
  let slope := aim.slope
  s := { s with shots := s.shots+1, lastShot := s.ticks, lastFire := s.lastFire.map fun shot => { shot with aim := some aim } }
  let gun : Fire.Gun := if shotgun then .shotgun else .pistol
  for _ in [:gun.pellets] do
    let (roll,next) := s.randomCombatV2
    s := next
    let damage := 5*(roll%3+1)
    let mut angle := s.player.body.angle
    if !accurate then
      let (spread,rng) := s.rng.subPlay
      s := { s with rng }
      angle := ⟨angle.raw + (Int32.ofInt spread * 262144).toUInt32⟩
    s := s.shootCombatV2 0 angle slope damage
    if s.physicsError.isSome then return s
    s := { s with lastFire := s.lastFire.map fun shot => { shot with pelletsTraced := shot.pelletsTraced+1, pelletAngles := shot.pelletAngles.push angle.raw } }
  return s

private def Simulation.punchCombatV2 (s : Simulation) : Simulation := Id.run do
  let (roll,s) := s.randomCombatV2
  let (spread,rng) := s.rng.subPlay
  let mut s := { s with rng }
  let damage := 2*(roll%10+1)*(if s.inventory.berserk then 10 else 1)
  let angle : Angle := ⟨s.player.body.angle.raw + (Int32.ofInt spread * 262144).toUInt32⟩
  let result := do
    let scene ← s.combatSceneCombatV2
    scene.aimLineAttack 0 angle (Fixed.ofInt 64)
  let .ok aim := result | return { s with physicsError := (match result with | .error e => some e | .ok _ => none) }
  let before := s.shotEvents.size
  s := s.shootCombatV2 0 angle aim.slope damage (Fixed.ofInt 64)
  -- P_LineAttack's target, not merely autoaim, controls impact sound and facing.
  for (_,event) in s.shotEvents.extract before s.shotEvents.size do
    if let .damage target _ := event then
      s := s.sound "punch"
      if let some body := s.player.scene.bind (fun scene => scene.things[target]?) then
        let facing := Angle.fromVector (body.x-s.player.body.x) (body.y-s.player.body.y)
        s := { s with player := { s.player with body := { s.player.body with angle := facing }, camera := { s.player.camera with angle := facing } } }
  return s

private def Simulation.weaponTickCombatV2 (s : Simulation) (keys : UInt32) : Simulation := Id.run do
  let choice := if keyDown keys 16384 then some 0 else if keyDown keys 32768 then some 1
    else if keyDown keys 65536 then some 2 else none
  let context : Weapon.Context := { state := s.weapon, player := s.inventory.toPickup, attack := keyDown keys 8192, dead := s.inventory.health == 0, bob := s.player.view.bob, time := Int32.ofNat (s.ticks-1) }
  let before := context.player.ammo
  let weaponResult := WeaponTotal.tick (context.select choice)
  let .ok context := weaponResult | return { s with physicsError := some WeaponTotal.exhausted }
  let mut age := 100
  let first := Weapon.attackState context.player.readyWeapon.val
  if context.state.weapon.frame ≥ first && context.state.weapon.frame < (if context.player.readyWeapon == 0 then 10 else if context.player.readyWeapon == 1 then 17 else 30) then
    age := 0
    for f in [first:context.state.weapon.frame] do age := age + WeaponData.frames[f]!.tics.toInt.toNat
    age := age + (WeaponData.frames[context.state.weapon.frame]!.tics-context.state.weapon.tics).toInt.toNat
  let mut s := { s with weapon := context.state, inventory := Inventory.fromPickup context.player, weaponAge := age, attackDown := context.state.attackDown, refire := context.state.refire != 0 }
  for event in context.events do
    let gun := match event with | .pistol _ => some Fire.Gun.pistol | .shotgun => some .shotgun | _ => none
    if let some gun := gun then
      s := { s with lastFire := some { gun, tic := s.ticks, ammoBefore := before[gun.ammoIndex], ammoAfter := context.player.ammo[gun.ammoIndex], pelletsExpected := gun.pellets } }
    s := match event with
    | .pistol accurate => s.fireGunCombatV2 false accurate
    | .shotgun => s.fireGunCombatV2 true false
    | .punch => s.punchCombatV2
    | .noise => s.alertImpsCombatV2
    if s.physicsError.isSome then return s
  return s

private def actorCanMove (s : Simulation) (actor : Actor) (position : Vertex) : Bool := Id.run do
  let some spec := thingDef actor.kind | return false
  let old := s.map.things[actor.thing]!.position
  let .ok sector := s.map.sectorAt (Fixed.ofInt position.x) (Fixed.ofInt position.y) | return false
  let sec := s.map.sectors[sector]!
  let feet := floorAt s.map old
  let mut floor := sec.floor
  let mut lowest := sec.floor
  let mut ceiling := sec.ceiling
  let radius := Int.ofNat spec.radius
  if position.x < -32767 || position.x > 32767 || position.y < -32767 || position.y > 32767 then return false
  for line in s.map.lines do
    if !EnemyArithmeticV2.nearSegment position s.map.vertices[line.v1]! s.map.vertices[line.v2]! radius then continue
    if line.flags%4 != 0 || line.flags/4%2 == 0 then return false
    let some front := s.map.sides[line.front]? | return false
    let some back := s.map.sides[line.back]? | return false
    let a := s.map.sectors[front.sector]!
    let b := s.map.sectors[back.sector]!
    floor := max floor (max a.floor b.floor)
    lowest := min lowest (min a.floor b.floor)
    ceiling := min ceiling (min a.ceiling b.ceiling)
  if floor-feet > 24 || feet-lowest > 24 || ceiling-floor < Int.ofNat spec.height then return false
  let dx := position.x*65536-s.player.body.x.raw.toInt
  let dy := position.y*65536-s.player.body.y.raw.toInt
  if EnemyArithmeticV2.within dx dy (radius+16) && s.inventory.health > 0 then return false
  for index in [:s.map.things.size] do
    if index == actor.thing then continue
    let t := s.map.things[index]!
    if !t.active then continue
    let some d := thingDef t.kind | continue
    let corpse := (s.actors.find? (fun actor => actor.thing == index)).bind (·.death)
    if corpse.any (fun body => body.flags &&& 2 == 0) || !d.solid then continue
    let height := corpse.map (fun body => body.height.raw.toInt / 65536) |>.getD (Int.ofNat d.height)
    let z := floorAt s.map t.position
    if floor >= z + height || floor + Int.ofNat spec.height <= z then continue
    let dx := position.x-t.position.x
    let dy := position.y-t.position.y
    let separation := radius+Int.ofNat d.radius
    if dx*dx+dy*dy < separation*separation then return false
  return true

private def Simulation.moveActorCombatV2 (s : Simulation) (actor : Actor) : Simulation := Id.run do
  let some spec := enemySpec actor.kind | return s
  let old := s.map.things[actor.thing]!
  let dx := s.player.body.x.raw.toInt-old.position.x*65536
  let dy := s.player.body.y.raw.toInt-old.position.y*65536
  let (stepX,stepY) := EnemyArithmeticV2.movement dx dy spec.speed
  let mut s := s
  -- Split each movement into <=2-unit increments before axis sliding.
  let pieces := max 1 ((max stepX.natAbs stepY.natAbs + 1) / 2)
  let mut position := old.position
  for j in [:pieces] do
    let sx := (stepX * Int.ofNat (j+1) / Int.ofNat pieces) - (stepX * Int.ofNat j / Int.ofNat pieces)
    let sy := (stepY * Int.ofNat (j+1) / Int.ofNat pieces) - (stepY * Int.ofNat j / Int.ofNat pieces)
    let candidates := #[⟨position.x+sx, position.y+sy⟩, ⟨position.x+sx, position.y⟩, ⟨position.x, position.y+sy⟩]
    for candidate in candidates do
      if actorCanMove s actor candidate then
        position := candidate
        break
    let thing := { old with position }
    s := { s with map := { s.map with things := s.map.things.set! actor.thing thing } }
  return s

private def actorSees (s : Simulation) (a : Actor) : Bool :=
  let thing := s.map.things[a.thing]!
  s.map.rayClearCombatV2 (thing.position.x*65536) (thing.position.y*65536)
    ((floorAt s.map thing.position+28)*65536)
    s.player.body.x.raw.toInt s.player.body.y.raw.toInt (s.player.body.z.raw.toInt+28*65536)

private def Simulation.enemyAttackCombatV2 (s : Simulation) (a : Actor) : Simulation := Id.run do
  let some spec := enemySpec a.kind | return s
  if s.inventory.health == 0 || !actorSees s a then return s
  let thing := s.map.things[a.thing]!
  let dx := s.player.body.x.raw.toInt-thing.position.x*65536
  let dy := s.player.body.y.raw.toInt-thing.position.y*65536
  let mut s := s
  if spec.melee then
    if !EnemyArithmeticV2.within dx dy 64 ||
        (s.player.body.z.raw.toInt-floorAt s.map thing.position*65536).natAbs > 56*65536 then return s
    let (roll, next) := s.randomCombatV2
    return (next.sound "sgtatk" (.actor (a.thing+1))).hurtPlayerCombatV2 (4*(roll%10+1)) (some (a.thing+1))
  let angle := Angle.fromVector (s.player.body.x - Fixed.ofInt thing.position.x)
    (s.player.body.y - Fixed.ofInt thing.position.y)
  let aiming := do
    let scene ← s.combatSceneCombatV2
    scene.aimLineAttack (a.thing+1) angle (Fixed.ofInt 2048)
  let .ok aiming := aiming | return { s with physicsError := (match aiming with | .error error => some error | .ok _ => none) }
  s := s.sound (if a.kind == 9 then "shotgn" else "pistol") (.actor (a.thing+1))
  for _ in [:spec.pellets] do
    let (spread,rng) := s.rng.subPlay
    s := { s with rng }
    let (damage,next) := s.randomCombatV2
    s := next
    let shotAngle : Angle := ⟨angle.raw + (Int32.ofInt spread * 1048576).toUInt32⟩
    s := s.shootCombatV2 (a.thing+1) shotAngle aiming.slope (3*(damage%5+1))
    if s.physicsError.isSome then return s
  return s

/-- A_Explode uses the barrel's existing target, not necessarily the lethal
attacker. Sight runs from each victim toward the already-quarter-height barrel. -/
private def Simulation.explodeBarrelCombatV2 (s : Simulation) (actor : Actor) : Simulation := Id.run do
  let result := do
    let scene ← s.combatSceneCombatV2
    let spot := scene.things[actor.thing+1]!
    scene.radiusAttack spot 128
      (fun id => if id == 0 then 0 else s.map.things[id-1]!.kind) (Sight.check s.map)
  let .ok hits := result | return { s with physicsError := (match result with | .error e => some e | _ => none) }
  let mut s := s
  for (target,amount) in hits do
    s := { s with blastEvents := s.blastEvents.push (actor.thing+1,target,amount) }
    if target == 0 then s := s.hurtPlayerCombatV2 amount.toInt.toNat actor.damageTarget
    else if let some index := s.actors.findIdx? (·.thing == target-1) then
      s := s.hurtActorCombatV2 index amount.toInt.toNat actor.damageTarget
    if s.physicsError.isSome then return s
  return s

private def Simulation.actorTickCombatV2 (s : Simulation) : Simulation := Id.run do
  let mut s := s
  for index in [:s.actors.size] do
    if s.physicsError.isSome then return s
    if s.actors[index]!.death.isSome then
      let eventStart := s.deathEvents.size
      match s.tickCorpse index with
      | .ok next => s := next
      | .error error => return { s with physicsError := some error }
      for event in s.deathEvents[eventStart:].toArray do
        if let .explode := event.2 then s := s.explodeBarrelCombatV2 s.actors[index]!
      continue
    let mut a := s.actors[index]!
    let some spec := enemySpec a.kind | continue
    a := { a with age := a.age+1, cooldown := a.cooldown-1 }
    if a.kind == 3001 then
      let first := s.impEvents.size
      match s.impRun index with
      | .error error => return { s with physicsError := some error }
      | .ok next => s := next
      for (_,event) in s.impEvents[first:].toArray do
        match event with
        | .melee target amount => s := s.applyCombatDamageCombatV2 target amount (some (a.thing+1))
        | .missile target =>
          match s.spawnImpShot (a.thing+1) target Simulation.applyCombatDamageCombatV2 with
          | .ok next => s := next
          | .error error => return { s with physicsError := some error }
        | .sound _ => pure ()
      continue
    if a.kind == 2035 then
      s := { s with actors := s.actors.set! index a }
      continue
    if a.health == 0 || s.inventory.health == 0 then
      s := { s with actors := s.actors.set! index a }
      continue
    let t := s.map.things[a.thing]!
    let dx := s.player.body.x.raw.toInt-t.position.x*65536
    let dy := s.player.body.y.raw.toInt-t.position.y*65536
    let near := fun radius => EnemyArithmeticV2.within dx dy radius
    if a.mode == .idle then
      let facing := Angle.ofDegrees t.angle
      let heard := t.flags/8%2 == 0 && s.shots > 0 && s.ticks-s.lastShot < 35 && near 1024
      let looking := a.age == 1 || a.age % 10 == 0
      if looking && near 2048 && (dx*facing.fineCosine.raw.toInt+dy*facing.fineSine.raw.toInt ≥ 0 || near 64 || heard) && actorSees s a then
        a := { a with mode := .chase, age := 0 }
        s := s.sound (if a.kind == 3002 || a.kind == 58 then "sgtsit" else "posit1") (.actor (a.thing+1))
    else if a.mode == .pain then
      let duration := (actorPoses a.kind .pain).foldl (fun n p => n+p.ticks) 0
      if a.age ≥ duration then a := { a with mode := .chase, age := 0 }
    else if a.mode == .attack then
      if a.age == spec.attackTick then s := s.enemyAttackCombatV2 a
      if a.age ≥ spec.attackLength then a := { a with mode := .chase, age := 0, cooldown := 35 }
    else if a.mode == .chase then
      if a.cooldown == 0 && (if spec.melee then near 64 else near 1024) && actorSees s a then
        a := { a with mode := .attack, age := 0 }
      else if a.age % spec.movePeriod == 0 then
        s := s.moveActorCombatV2 a
    if a.mode != .idle then
      let binaryAngle := Angle.fromVector (s.player.body.x-Fixed.ofInt t.position.x)
        (s.player.body.y-Fixed.ofInt t.position.y)
      let angle := ((binaryAngle.raw.toNat*360 + 2147483648) / 4294967296) % 360
      let thing := { s.map.things[a.thing]! with angle }
      s := { s with map := { s.map with things := s.map.things.set! a.thing thing } }
    s := { s with actors := s.actors.set! index a }
  return s

/-- Shared combat/interaction tick. Free flight pauses combat for inspection. -/
def Simulation.tickCombatV2 (s : Simulation) (keys : UInt32) (walking : Bool := true) : Simulation := Id.run do
  if keyDown keys 1024 && !s.restartHeld then return { s.restart with restartHeld := true }
  -- G_ExitLevel queues completion; the activation tic finishes normally. Until
  -- G_DoCompleted/WI_Ticker are ported, hold the last level state at that boundary.
  if s.exitRequested then return { s with restartHeld := keyDown keys 1024 }
  let alive := s.inventory.health > 0
  let mut s := { s.interactionTick keys (walking && alive) with blastEvents := #[], impEvents := #[], projectileEvents := #[] }
  if s.physicsError.isSome then return s
  s := { s with restartHeld := keyDown keys 1024 }
  if s.combatEnabled && walking then
    if !alive then
      let p := s.inventory.toPickup
      s := { s with inventory := Inventory.fromPickup { p with damageCount := max (0 : Int32) (p.damageCount-1) } }
    s := s.weaponTickCombatV2 keys
    if s.physicsError.isSome then return s
    -- The player's mobj precedes the prototype enemy loop. A death caused by
    -- an enemy this tic begins its countdown on the following tic.
    match s.tickPlayerCorpse with
    | .ok next => s := next
    | .error error => return { s with physicsError := some error }
    s := s.actorTickCombatV2
    if s.physicsError.isSome then return s
    match s.tickProjectiles Simulation.applyCombatDamageCombatV2 with
    | .ok next => s := next
    | .error error => return { s with physicsError := some error }
    if s.physicsError.isSome then return s
    if s.inventory.health == 0 then
      let height := max (s.player.body.z.raw.toInt+6*65536) (s.player.camera.z.raw.toInt-65536)
      let camera := { s.player.camera with z := ⟨Int32.ofInt height⟩ }
      s := { s with player := { s.player with camera }, weaponAge := 100 }
  -- Map lighting thinkers are spawned after map things and retain sector order.
  -- Existing actor/door thinkers remain prototypes, so this is not full-tic parity.
  let (map, lights, rng) := SectorLights.tickMap s.map s.lights s.rng
  s := { s with map, lights, rng }
  s := s.moveFloors
  if s.physicsError.isSome then return s
  for (sector,sound) in s.moverSounds do
    s := s.sound (match sound with | .move => "stnmov" | .stop => "pstop" | .start => "pstart") (.sector sector)
  -- P_UpdateSpecials follows the map thinkers; unrelated button timing and
  -- the surrounding actor scheduling remain the existing adapters.
  match Scrolling.tickMap s.map s.scrollers with
  | .ok map => s := { s with map }
  | .error error => return { s with physicsError := some error }
  if s.combatEnabled && walking then
    let (random, rng) := s.rng.nextMisc
    let attackerAngle := s.attacker.bind fun index => do
      let thing ← s.map.things[index]?
      return (Angle.fromVector (Fixed.ofInt thing.position.x - s.player.camera.x)
        (Fixed.ofInt thing.position.y - s.player.camera.y)).raw
    let face := s.statusFace.tick {
      player := s.inventory.toPickup
      attack := s.attackDown, angle := s.player.camera.angle.raw, attackerAngle, random }
    s := { s with statusFace := face, rng }
  return s

end Doom
