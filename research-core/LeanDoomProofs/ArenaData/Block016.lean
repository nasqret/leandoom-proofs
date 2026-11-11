import LeanDoomProofs.ArenaWitness

/-! Generated checkpoint proposals. No computation here is trusted as a proof.
Each adjacent pair is checked in the corresponding ArenaSegments module. -/
namespace LeanDoomProofs
open Doom
set_option maxRecDepth 8192

def arena_state_145 : Simulation := {
  map :=
    { name := "ARENA03",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 157, y := -6 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := 208, y := -2 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := -176, y := 0 }, angle := 0, kind := 2001, flags := 0 }],
      vertices := #[{ x := -256, y := -128 }, { x := -256, y := 128 }, { x := 320, y := 128 }, { x := 320, y := -128 }],
      lines :=
        #[{ v1 := 0, v2 := 1, flags := 1, special := 0, tag := 0, front := 0, back := 65535 },
          { v1 := 1, v2 := 2, flags := 1, special := 0, tag := 0, front := 1, back := 65535 },
          { v1 := 2, v2 := 3, flags := 1, special := 11, tag := 0, front := 2, back := 65535 },
          { v1 := 3, v2 := 0, flags := 1, special := 0, tag := 0, front := 3, back := 65535 }],
      sides :=
        #[{ xOffset := 0, yOffset := 0, upper := "-", lower := "-", middle := "WALL", sector := 0 },
          { xOffset := 0, yOffset := 0, upper := "-", lower := "-", middle := "WALL", sector := 0 },
          { xOffset := 0, yOffset := 0, upper := "-", lower := "-", middle := "SW1EXIT", sector := 0 },
          { xOffset := 0, yOffset := 0, upper := "-", lower := "-", middle := "WALL", sector := 0 }],
      sectors :=
        #[{ floor := 0, ceiling := 128, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
            tag := 0 }],
      segs :=
        #[{ v1 := 0, v2 := 1, angle := 16384, linedef := 0, side := 0, offset := 0 },
          { v1 := 1, v2 := 2, angle := 0, linedef := 1, side := 0, offset := 0 },
          { v1 := 2, v2 := 3, angle := 49152, linedef := 2, side := 0, offset := 0 },
          { v1 := 3, v2 := 0, angle := 32768, linedef := 3, side := 0, offset := 0 }],
      subsectors := #[{ count := 4, first := 0 }], nodes := #[], reject := { data := #[0] },
      blockmap :=
        { origin := { x := -256, y := -256 }, width := 5, height := 4,
          cells :=
            #[#[0, 1, 2, 3], #[0, 1, 2, 3], #[0, 1, 2, 3], #[0, 1, 2, 3], #[0, 1, 2, 3], #[0, 1, 2, 3], #[0, 1, 2, 3],
              #[0, 1, 2, 3], #[0, 1, 2, 3], #[0, 1, 2, 3], #[0, 1, 2, 3], #[0, 1, 2, 3], #[0, 1, 2, 3], #[0, 1, 2, 3],
              #[0, 1, 2, 3], #[0, 1, 2, 3], #[0, 1, 2, 3], #[0, 1, 2, 3], #[0, 1, 2, 3], #[0, 1, 2, 3]] } },
  original :=
    { name := "ARENA03",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := -32, y := 0 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := 224, y := 0 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := -176, y := 0 }, angle := 0, kind := 2001, flags := 7 }],
      vertices := #[{ x := -256, y := -128 }, { x := -256, y := 128 }, { x := 320, y := 128 }, { x := 320, y := -128 }],
      lines :=
        #[{ v1 := 0, v2 := 1, flags := 1, special := 0, tag := 0, front := 0, back := 65535 },
          { v1 := 1, v2 := 2, flags := 1, special := 0, tag := 0, front := 1, back := 65535 },
          { v1 := 2, v2 := 3, flags := 1, special := 11, tag := 0, front := 2, back := 65535 },
          { v1 := 3, v2 := 0, flags := 1, special := 0, tag := 0, front := 3, back := 65535 }],
      sides :=
        #[{ xOffset := 0, yOffset := 0, upper := "-", lower := "-", middle := "WALL", sector := 0 },
          { xOffset := 0, yOffset := 0, upper := "-", lower := "-", middle := "WALL", sector := 0 },
          { xOffset := 0, yOffset := 0, upper := "-", lower := "-", middle := "SW1EXIT", sector := 0 },
          { xOffset := 0, yOffset := 0, upper := "-", lower := "-", middle := "WALL", sector := 0 }],
      sectors :=
        #[{ floor := 0, ceiling := 128, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160, special := 0,
            tag := 0 }],
      segs :=
        #[{ v1 := 0, v2 := 1, angle := 16384, linedef := 0, side := 0, offset := 0 },
          { v1 := 1, v2 := 2, angle := 0, linedef := 1, side := 0, offset := 0 },
          { v1 := 2, v2 := 3, angle := 49152, linedef := 2, side := 0, offset := 0 },
          { v1 := 3, v2 := 0, angle := 32768, linedef := 3, side := 0, offset := 0 }],
      subsectors := #[{ count := 4, first := 0 }], nodes := #[], reject := { data := #[0] },
      blockmap :=
        { origin := { x := -256, y := -256 }, width := 5, height := 4,
          cells :=
            #[#[0, 1, 2, 3], #[0, 1, 2, 3], #[0, 1, 2, 3], #[0, 1, 2, 3], #[0, 1, 2, 3], #[0, 1, 2, 3], #[0, 1, 2, 3],
              #[0, 1, 2, 3], #[0, 1, 2, 3], #[0, 1, 2, 3], #[0, 1, 2, 3], #[0, 1, 2, 3], #[0, 1, 2, 3], #[0, 1, 2, 3],
              #[0, 1, 2, 3], #[0, 1, 2, 3], #[0, 1, 2, 3], #[0, 1, 2, 3], #[0, 1, 2, 3], #[0, 1, 2, 3]] } },
  audioEvents :=
    #[{ name := "shotgn", origin := Option.some (Doom.Audio.Sfx.Origin.actor 0),
        position := { x := { raw := -9888713 }, y := { raw := 851 } } }],
  combatEnabled := Bool.true,
  actors :=
    #[{ thing := 1, kind := 3001, health := 0,
        death :=
          Option.some
            { kind := 3001, health := -10, flags := 5243904, height := { raw := 917504 },
              info := { spawnHealth := 60, normal := 457, extreme := 462, sound := "bgdth1", flags := 4194310 },
              state := 461, tics := -1 },
        imp :=
          Option.some
            { id := 2, frame := 455, tics := 2, angle := { raw := 2147483647 }, target := Option.some 0, reaction := 0,
              threshold := 91, justHit := Bool.true, justAttacked := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 75 },
      { thing := 2, kind := 3001, health := 0,
        death :=
          Option.some
            { kind := 3001, health := -10, flags := 5243904, height := { raw := 917504 },
              info := { spawnHealth := 60, normal := 457, extreme := 462, sound := "bgdth1", flags := 4194310 },
              state := 461, tics := -1 },
        imp :=
          Option.some
            { id := 3, frame := 455, tics := 2, angle := { raw := 2147483648 }, target := Option.some 0, movedir := 4,
              movecount := 7, reaction := 0, threshold := 88, justHit := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 38 },
      { thing := 3, kind := 3001, health := 0,
        death :=
          Option.some
            { kind := 3001, health := -5, flags := 5243906, height := { raw := 917504 },
              info := { spawnHealth := 60, normal := 457, extreme := 462, sound := "bgdth1", flags := 4194310 },
              state := 457, tics := 4 },
        imp :=
          Option.some
            { id := 4, frame := 455, tics := 2, angle := { raw := 2147483648 }, target := Option.some 0, movedir := 4,
              reaction := 0, threshold := 90, justHit := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 1 }],
  projectiles :=
    #[{ source := 3,
        motion :=
          { x := { raw := 6750273 }, y := { raw := 1625 }, angle := { raw := 2147483647 }, z := { raw := 2097152 },
            ceilingz := { raw := 8388608 }, height := { raw := 524288 }, noGravity := Bool.true },
        frame := 101, tics := 0, exploding := Bool.true, removed := Bool.true },
      { source := 4,
        motion :=
          { x := { raw := 14476851 }, y := { raw := -1448919 }, angle := { raw := 2107144115 }, z := { raw := 2097152 },
            ceilingz := { raw := 8388608 }, height := { raw := 524288 }, noGravity := Bool.true },
        frame := 101, tics := 0, exploding := Bool.true, removed := Bool.true },
      { source := 4,
        motion :=
          { x := { raw := 4449381 }, y := { raw := -50549 }, momx := { raw := -655350 }, momy := { raw := 1750 },
            angle := { raw := 2145481021 }, z := { raw := 2097152 }, ceilingz := { raw := 8388608 },
            height := { raw := 524288 }, noGravity := Bool.true },
        frame := 97, tics := 1 }],
  soundTargets := #[Option.some 0], deathStats := #v[{ kills := 3 }, { }, { }, { }],
  deathEvents := #[(4, Doom.Death.Event.state 457)], rng := { play := 205, misc := 145 },
  weapon :=
    { weapon := { frame := 22, tics := 7, y := { raw := 2097152 } },
      flash := { frame := 30, tics := 3, y := { raw := 2097152 } }, refire := 3, extraLight := 1 },
  weaponAge := 3, refire := Bool.true,
  shotEvents :=
    #[(0, Doom.Collision.ShotEvent.special 2),
      (0, Doom.Collision.ShotEvent.puff { raw := 20709219 } { raw := 1680447 } { raw := 2359296 }),
      (0, Doom.Collision.ShotEvent.special 2),
      (0, Doom.Collision.ShotEvent.puff { raw := 20708926 } { raw := 1397834 } { raw := 2359296 }),
      (0, Doom.Collision.ShotEvent.blood { raw := 12434844 } { raw := -658220 } { raw := 2359296 } 5),
      (0, Doom.Collision.ShotEvent.damage 4 5),
      (0, Doom.Collision.ShotEvent.blood { raw := 12032204 } { raw := -1050657 } { raw := 2359296 } 15),
      (0, Doom.Collision.ShotEvent.damage 4 15), (0, Doom.Collision.ShotEvent.special 2),
      (0, Doom.Collision.ShotEvent.puff { raw := 20707473 } { raw := 200206 } { raw := 2359296 }),
      (0, Doom.Collision.ShotEvent.blood { raw := 12487387 } { raw := -608497 } { raw := 2359296 } 15),
      (0, Doom.Collision.ShotEvent.damage 4 15), (0, Doom.Collision.ShotEvent.special 2),
      (0, Doom.Collision.ShotEvent.puff { raw := 20708660 } { raw := -691243 } { raw := 2359296 })],
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.shotgun, tic := 145, ammoBefore := 5, ammoAfter := 4, pelletsExpected := 7,
        pelletsTraced := 7, aim := Option.some { },
        pelletAngles := #[37486592, 30932992, 4274520064, 4261937152, 4194304, 4276355072, 4279500800] },
  shots := 4, lastShot := 145, kills := 3,
  statusFace :=
    { index := 7, priority := 5, lastAttack := 1, oldHealth := 100,
      oldWeapons :=
        #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false] },
  player :=
    {
      inventory :=
        { shells := 5, weapons := #[0, 1, 2],
          pickupState :=
            { ammo := #v[50, 5, 0, 0],
              weapons :=
                #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false,
                  Bool.false],
              readyWeapon := 2, cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
              powers := #v[0, 0, 0, 0, 0, 0], message := "GOTSHOTGUN" } },
      camera := { x := { raw := -9888713 }, y := { raw := 851 }, z := { raw := 2686976 }, angle := { raw := 0 } },
      feet := Doom.Fixed.toFloat { raw := 0 }, velocityZ := Doom.Fixed.toFloat { raw := 0 },
      body :=
        { x := { raw := -9888713 }, y := { raw := 851 }, ceilingz := { raw := 8388608 }, height := { raw := 3670016 } },
      view := { height := { raw := 2686976 }, z := { raw := 2686976 } },
      scene :=
        Option.some
          {
            grid :=
              { origin := { x := -256, y := -256 }, width := 5, height := 4,
                cells :=
                  #[#[0, 1, 2, 3], #[0, 1, 2, 3], #[0, 1, 2, 3], #[0, 1, 2, 3], #[0, 1, 2, 3], #[0, 1, 2, 3],
                    #[0, 1, 2, 3], #[0, 1, 2, 3], #[0, 1, 2, 3], #[0, 1, 2, 3], #[0, 1, 2, 3], #[0, 1, 2, 3],
                    #[0, 1, 2, 3], #[0, 1, 2, 3], #[0, 1, 2, 3], #[0, 1, 2, 3], #[0, 1, 2, 3], #[0, 1, 2, 3],
                    #[0, 1, 2, 3], #[0, 1, 2, 3]] },
            lines :=
              #[{ x := { raw := -16777216 }, y := { raw := -8388608 }, dx := { raw := 0 }, dy := { raw := 16777216 },
                  bbox :=
                    { top := { raw := 8388608 }, bottom := { raw := -8388608 }, left := { raw := -16777216 },
                      right := { raw := -16777216 } },
                  slope := Doom.Collision.Slope.vertical,
                  front := { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, blocking := Bool.true },
                { x := { raw := -16777216 }, y := { raw := 8388608 }, dx := { raw := 37748736 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := 8388608 }, bottom := { raw := 8388608 }, left := { raw := -16777216 },
                      right := { raw := 20971520 } },
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, blocking := Bool.true },
                { x := { raw := 20971520 }, y := { raw := 8388608 }, dx := { raw := 0 }, dy := { raw := -16777216 },
                  bbox :=
                    { top := { raw := 8388608 }, bottom := { raw := -8388608 }, left := { raw := 20971520 },
                      right := { raw := 20971520 } },
                  slope := Doom.Collision.Slope.vertical,
                  front := { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, blocking := Bool.true,
                  special := Bool.true },
                { x := { raw := 20971520 }, y := { raw := -8388608 }, dx := { raw := -37748736 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := -8388608 }, bottom := { raw := -8388608 }, left := { raw := -16777216 },
                      right := { raw := 20971520 } },
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, blocking := Bool.true }],
            things :=
              #[{ x := { raw := -9888713 }, y := { raw := 851 }, radius := { raw := 1048576 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, moveFlags := { dropoff := Bool.true },
                  canPickup := Bool.true, health := 100, shootable := Bool.true },
                { kind := 1, x := { raw := -12582912 }, y := { raw := 0 }, radius := { raw := 0 }, solid := Bool.false,
                  height := { raw := 0 }, ceiling := { raw := 8388608 },
                  moveFlags := { noSector := Bool.true, noBlockmap := Bool.true } },
                { kind := 3001, x := { raw := 6291456 }, y := { raw := 0 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 917504 }, ceiling := { raw := 8388608 },
                  moveFlags := { dropoff := Bool.true }, health := -10 },
                { kind := 3001, x := { raw := 10337472 }, y := { raw := -376000 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 917504 }, ceiling := { raw := 8388608 },
                  moveFlags := { dropoff := Bool.true }, health := -10 },
                { kind := 3001, x := { raw := 13689792 }, y := { raw := -79424 }, radius := { raw := 1310720 },
                  height := { raw := 917504 }, ceiling := { raw := 8388608 }, moveFlags := { dropoff := Bool.true },
                  health := -5 },
                { kind := 2001, x := { raw := -11534336 }, y := { raw := 0 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  pickup := Option.some { sprite := 34 }, removed := Bool.true }],
            links :=
              #[#[], #[], #[], #[], #[], #[], #[], #[], #[4, 3], #[], #[0], #[], #[2], #[], #[], #[], #[], #[], #[],
                #[]],
            sectors := #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } }], sectorLinks := #[#[4, 3, 2, 0]],
            pickupPlayer :=
              Option.some
                { actor := 0,
                  state :=
                    { ammo := #v[50, 5, 0, 0],
                      weapons :=
                        #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false,
                          Bool.false],
                      readyWeapon := 2,
                      cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
                      powers := #v[0, 0, 0, 0, 0, 0], message := "GOTSHOTGUN" },
                  profile := { commercial := Bool.false } },
            lighting :=
              Option.some
                {
                  map :=
                    { name := "ARENA03",
                      things :=
                        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
                          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
                          { position := { x := 157, y := -6 }, angle := 180, kind := 3001, flags := 7 },
                          { position := { x := 208, y := -2 }, angle := 180, kind := 3001, flags := 7 },
                          { position := { x := -176, y := 0 }, angle := 0, kind := 2001, flags := 0 }],
                      vertices :=
                        #[{ x := -256, y := -128 }, { x := -256, y := 128 }, { x := 320, y := 128 },
                          { x := 320, y := -128 }],
                      lines :=
                        #[{ v1 := 0, v2 := 1, flags := 1, special := 0, tag := 0, front := 0, back := 65535 },
                          { v1 := 1, v2 := 2, flags := 1, special := 0, tag := 0, front := 1, back := 65535 },
                          { v1 := 2, v2 := 3, flags := 1, special := 11, tag := 0, front := 2, back := 65535 },
                          { v1 := 3, v2 := 0, flags := 1, special := 0, tag := 0, front := 3, back := 65535 }],
                      sides :=
                        #[{ xOffset := 0, yOffset := 0, upper := "-", lower := "-", middle := "WALL", sector := 0 },
                          { xOffset := 0, yOffset := 0, upper := "-", lower := "-", middle := "WALL", sector := 0 },
                          { xOffset := 0, yOffset := 0, upper := "-", lower := "-", middle := "SW1EXIT", sector := 0 },
                          { xOffset := 0, yOffset := 0, upper := "-", lower := "-", middle := "WALL", sector := 0 }],
                      sectors :=
                        #[{ floor := 0, ceiling := 128, floorTexture := "FLOOR", ceilingTexture := "CEIL", light := 160,
                            special := 0, tag := 0 }],
                      segs :=
                        #[{ v1 := 0, v2 := 1, angle := 16384, linedef := 0, side := 0, offset := 0 },
                          { v1 := 1, v2 := 2, angle := 0, linedef := 1, side := 0, offset := 0 },
                          { v1 := 2, v2 := 3, angle := 49152, linedef := 2, side := 0, offset := 0 },
                          { v1 := 3, v2 := 0, angle := 32768, linedef := 3, side := 0, offset := 0 }],
                      subsectors := #[{ count := 4, first := 0 }], nodes := #[], reject := { data := #[0] },
                      blockmap :=
                        { origin := { x := -256, y := -256 }, width := 5, height := 4,
                          cells :=
                            #[#[0, 1, 2, 3], #[0, 1, 2, 3], #[0, 1, 2, 3], #[0, 1, 2, 3], #[0, 1, 2, 3], #[0, 1, 2, 3],
                              #[0, 1, 2, 3], #[0, 1, 2, 3], #[0, 1, 2, 3], #[0, 1, 2, 3], #[0, 1, 2, 3], #[0, 1, 2, 3],
                              #[0, 1, 2, 3], #[0, 1, 2, 3], #[0, 1, 2, 3], #[0, 1, 2, 3], #[0, 1, 2, 3], #[0, 1, 2, 3],
                              #[0, 1, 2, 3], #[0, 1, 2, 3]] } },
                  rng := { play := 181, misc := 144 } } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 157, y := -6 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := 208, y := -2 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := -176, y := 0 }, angle := 0, kind := 2001, flags := 0 }],
      levelTime := 145 },
  inventory :=
    { shells := 4, weapons := #[0, 1, 2],
      pickupState :=
        { ammo := #v[50, 4, 0, 0],
          weapons :=
            #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          readyWeapon := 2, cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTSHOTGUN" } },
  ticks := 145, collected := #[4], message := "Enemy down", messageTicks := 70 }

def arena_inputs_016 : List UInt32 := [8192]

end LeanDoomProofs
