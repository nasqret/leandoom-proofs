import LeanDoomProofs.ArenaWitness

/-! Generated checkpoint proposals. No computation here is trusted as a proof.
Each adjacent pair is checked in the corresponding ArenaSegments module. -/
namespace LeanDoomProofs
open Doom
set_option maxRecDepth 8192

def arena_state_169 : Simulation := {
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 99 },
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 62 },
      { thing := 3, kind := 3001, health := 0,
        death :=
          Option.some
            { kind := 3001, health := -5, flags := 5243904, height := { raw := 917504 },
              info := { spawnHealth := 60, normal := 457, extreme := 462, sound := "bgdth1", flags := 4194310 },
              state := 461, tics := -1 },
        imp :=
          Option.some
            { id := 4, frame := 455, tics := 2, angle := { raw := 2147483648 }, target := Option.some 0, movedir := 4,
              reaction := 0, threshold := 90, justHit := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 25 }],
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
          { x := { raw := -4725519 }, y := { raw := -26049 }, angle := { raw := 2145481021 }, z := { raw := 2097152 },
            ceilingz := { raw := 8388608 }, height := { raw := 524288 }, noGravity := Bool.true },
        frame := 100, tics := 1, exploding := Bool.true }],
  soundTargets := #[Option.some 0], deathStats := #v[{ kills := 3 }, { }, { }, { }],
  deathEvents := #[(4, Doom.Death.Event.state 461)], rng := { play := 208, misc := 169 },
  weapon :=
    { weapon := { frame := 26, tics := 2, y := { raw := 2097152 } },
      flash := { frame := 0, tics := 0, y := { raw := 2097152 } }, refire := 3 },
  weaponAge := 27, refire := Bool.true,
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.shotgun, tic := 145, ammoBefore := 5, ammoAfter := 4, pelletsExpected := 7,
        pelletsTraced := 7, aim := Option.some { },
        pelletAngles := #[37486592, 30932992, 4274520064, 4261937152, 4194304, 4276355072, 4279500800] },
  shots := 4, lastShot := 145, kills := 3,
  statusFace :=
    { index := 11, count := 34, priority := 7, lastAttack := 1, oldHealth := 79,
      oldWeapons :=
        #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false] },
  attacker := Option.some 3,
  player :=
    {
      inventory :=
        { health := 79, shells := 4, weapons := #[0, 1, 2],
          pickupState :=
            { health := 79, bodyHealth := 79, ammo := #v[50, 4, 0, 0],
              weapons :=
                #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false,
                  Bool.false],
              readyWeapon := 2, cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
              powers := #v[0, 0, 0, 0, 0, 0], damageCount := 12, message := "GOTSHOTGUN" } },
      camera := { x := { raw := -1563841 }, y := { raw := 3858 }, z := { raw := 2989529 }, angle := { raw := 0 } },
      feet := Doom.Fixed.toFloat { raw := 0 }, velocityZ := Doom.Fixed.toFloat { raw := 0 },
      body :=
        { x := { raw := -1563841 }, y := { raw := 3858 }, momx := { raw := 448308 }, momy := { raw := 162 },
          ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
      view := { height := { raw := 2686976 }, z := { raw := 2989529 }, bob := { raw := 933506 } },
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
              #[{ x := { raw := -1563841 }, y := { raw := 3858 }, radius := { raw := 1048576 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, moveFlags := { dropoff := Bool.true },
                  momx := { raw := 448308 }, momy := { raw := 162 }, canPickup := Bool.true, health := 100,
                  shootable := Bool.true },
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
                  solid := Bool.false, height := { raw := 917504 }, ceiling := { raw := 8388608 },
                  moveFlags := { dropoff := Bool.true }, health := -5 },
                { kind := 2001, x := { raw := -11534336 }, y := { raw := 0 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  pickup := Option.some { sprite := 34 }, removed := Bool.true }],
            links :=
              #[#[], #[], #[], #[], #[], #[], #[], #[], #[4, 3], #[], #[], #[0], #[2], #[], #[], #[], #[], #[], #[],
                #[]],
            sectors := #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } }], sectorLinks := #[#[0, 4, 3, 2]],
            pickupPlayer :=
              Option.some
                { actor := 0,
                  state :=
                    { health := 79, bodyHealth := 79, ammo := #v[50, 4, 0, 0],
                      weapons :=
                        #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false,
                          Bool.false],
                      readyWeapon := 2,
                      cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
                      powers := #v[0, 0, 0, 0, 0, 0], damageCount := 12, message := "GOTSHOTGUN" },
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
                  rng := { play := 208, misc := 168 } } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 157, y := -6 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := 208, y := -2 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := -176, y := 0 }, angle := 0, kind := 2001, flags := 0 }],
      levelTime := 169,
      frictionSample :=
        Option.some
          {
            before :=
              { x := { raw := -1563841 }, y := { raw := 3858 }, momx := { raw := 494685 }, momy := { raw := 179 },
                ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
            after :=
              { x := { raw := -1563841 }, y := { raw := 3858 }, momx := { raw := 448308 }, momy := { raw := 162 },
                ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
            cmd := { forwardMove := 25 } } },
  inventory :=
    { health := 79, shells := 4, weapons := #[0, 1, 2],
      pickupState :=
        { health := 79, bodyHealth := 79, ammo := #v[50, 4, 0, 0],
          weapons :=
            #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          readyWeapon := 2, cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], damageCount := 12, message := "GOTSHOTGUN" } },
  ticks := 169, collected := #[4], message := "Hit for 21", messageTicks := 61 }

def arena_state_170 : Simulation := {
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 100 },
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 63 },
      { thing := 3, kind := 3001, health := 0,
        death :=
          Option.some
            { kind := 3001, health := -5, flags := 5243904, height := { raw := 917504 },
              info := { spawnHealth := 60, normal := 457, extreme := 462, sound := "bgdth1", flags := 4194310 },
              state := 461, tics := -1 },
        imp :=
          Option.some
            { id := 4, frame := 455, tics := 2, angle := { raw := 2147483648 }, target := Option.some 0, movedir := 4,
              reaction := 0, threshold := 90, justHit := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 26 }],
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
          { x := { raw := -4725519 }, y := { raw := -26049 }, angle := { raw := 2145481021 }, z := { raw := 2097152 },
            ceilingz := { raw := 8388608 }, height := { raw := 524288 }, noGravity := Bool.true },
        frame := 101, tics := 6, exploding := Bool.true }],
  soundTargets := #[Option.some 0], deathStats := #v[{ kills := 3 }, { }, { }, { }],
  rng := { play := 208, misc := 170 },
  weapon :=
    { weapon := { frame := 26, y := { raw := 2097152 } }, flash := { frame := 0, tics := 0, y := { raw := 2097152 } },
      refire := 3 },
  weaponAge := 28, refire := Bool.true,
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.shotgun, tic := 145, ammoBefore := 5, ammoAfter := 4, pelletsExpected := 7,
        pelletsTraced := 7, aim := Option.some { },
        pelletAngles := #[37486592, 30932992, 4274520064, 4261937152, 4194304, 4276355072, 4279500800] },
  shots := 4, lastShot := 145, kills := 3,
  statusFace :=
    { index := 11, count := 34, priority := 7, lastAttack := 1, oldHealth := 79,
      oldWeapons :=
        #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false] },
  attacker := Option.some 3,
  player :=
    {
      inventory :=
        { health := 79, shells := 4, weapons := #[0, 1, 2],
          pickupState :=
            { health := 79, bodyHealth := 79, ammo := #v[50, 4, 0, 0],
              weapons :=
                #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false,
                  Bool.false],
              readyWeapon := 2, cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
              powers := #v[0, 0, 0, 0, 0, 0], damageCount := 11, message := "GOTSHOTGUN" } },
      camera := { x := { raw := -1064334 }, y := { raw := 4039 }, z := { raw := 2868581 }, angle := { raw := 0 } },
      feet := Doom.Fixed.toFloat { raw := 0 }, velocityZ := Doom.Fixed.toFloat { raw := 0 },
      body :=
        { x := { raw := -1064334 }, y := { raw := 4039 }, momx := { raw := 452678 }, momy := { raw := 164 },
          ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
      view := { height := { raw := 2686976 }, z := { raw := 2868581 }, bob := { raw := 951794 } },
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
              #[{ x := { raw := -1064334 }, y := { raw := 4039 }, radius := { raw := 1048576 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, moveFlags := { dropoff := Bool.true },
                  momx := { raw := 452678 }, momy := { raw := 164 }, canPickup := Bool.true, health := 100,
                  shootable := Bool.true },
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
                  solid := Bool.false, height := { raw := 917504 }, ceiling := { raw := 8388608 },
                  moveFlags := { dropoff := Bool.true }, health := -5 },
                { kind := 2001, x := { raw := -11534336 }, y := { raw := 0 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  pickup := Option.some { sprite := 34 }, removed := Bool.true }],
            links :=
              #[#[], #[], #[], #[], #[], #[], #[], #[], #[4, 3], #[], #[], #[0], #[2], #[], #[], #[], #[], #[], #[],
                #[]],
            sectors := #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } }], sectorLinks := #[#[0, 4, 3, 2]],
            pickupPlayer :=
              Option.some
                { actor := 0,
                  state :=
                    { health := 79, bodyHealth := 79, ammo := #v[50, 4, 0, 0],
                      weapons :=
                        #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false,
                          Bool.false],
                      readyWeapon := 2,
                      cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
                      powers := #v[0, 0, 0, 0, 0, 0], damageCount := 11, message := "GOTSHOTGUN" },
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
                  rng := { play := 208, misc := 169 } } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 157, y := -6 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := 208, y := -2 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := -176, y := 0 }, angle := 0, kind := 2001, flags := 0 }],
      levelTime := 170,
      frictionSample :=
        Option.some
          {
            before :=
              { x := { raw := -1064334 }, y := { raw := 4039 }, momx := { raw := 499507 }, momy := { raw := 181 },
                ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
            after :=
              { x := { raw := -1064334 }, y := { raw := 4039 }, momx := { raw := 452678 }, momy := { raw := 164 },
                ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
            cmd := { forwardMove := 25 } } },
  inventory :=
    { health := 79, shells := 4, weapons := #[0, 1, 2],
      pickupState :=
        { health := 79, bodyHealth := 79, ammo := #v[50, 4, 0, 0],
          weapons :=
            #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          readyWeapon := 2, cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], damageCount := 11, message := "GOTSHOTGUN" } },
  ticks := 170, collected := #[4], message := "Hit for 21", messageTicks := 60 }

def arena_state_171 : Simulation := {
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 101 },
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 64 },
      { thing := 3, kind := 3001, health := 0,
        death :=
          Option.some
            { kind := 3001, health := -5, flags := 5243904, height := { raw := 917504 },
              info := { spawnHealth := 60, normal := 457, extreme := 462, sound := "bgdth1", flags := 4194310 },
              state := 461, tics := -1 },
        imp :=
          Option.some
            { id := 4, frame := 455, tics := 2, angle := { raw := 2147483648 }, target := Option.some 0, movedir := 4,
              reaction := 0, threshold := 90, justHit := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 27 }],
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
          { x := { raw := -4725519 }, y := { raw := -26049 }, angle := { raw := 2145481021 }, z := { raw := 2097152 },
            ceilingz := { raw := 8388608 }, height := { raw := 524288 }, noGravity := Bool.true },
        frame := 101, tics := 5, exploding := Bool.true }],
  soundTargets := #[Option.some 0], deathStats := #v[{ kills := 3 }, { }, { }, { }],
  rng := { play := 208, misc := 171 },
  weapon :=
    { weapon := { frame := 27, tics := 5, y := { raw := 2097152 } },
      flash := { frame := 0, tics := 0, y := { raw := 2097152 } }, refire := 3 },
  weaponAge := 29, refire := Bool.true,
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.shotgun, tic := 145, ammoBefore := 5, ammoAfter := 4, pelletsExpected := 7,
        pelletsTraced := 7, aim := Option.some { },
        pelletAngles := #[37486592, 30932992, 4274520064, 4261937152, 4194304, 4276355072, 4279500800] },
  shots := 4, lastShot := 145, kills := 3,
  statusFace :=
    { index := 11, count := 34, priority := 7, lastAttack := 1, oldHealth := 79,
      oldWeapons :=
        #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false] },
  attacker := Option.some 3,
  player :=
    {
      inventory :=
        { health := 79, shells := 4, weapons := #[0, 1, 2],
          pickupState :=
            { health := 79, bodyHealth := 79, ammo := #v[50, 4, 0, 0],
              weapons :=
                #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false,
                  Bool.false],
              readyWeapon := 2, cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
              powers := #v[0, 0, 0, 0, 0, 0], damageCount := 10, message := "GOTSHOTGUN" } },
      camera := { x := { raw := -560457 }, y := { raw := 4222 }, z := { raw := 2724631 }, angle := { raw := 0 } },
      feet := Doom.Fixed.toFloat { raw := 0 }, velocityZ := Doom.Fixed.toFloat { raw := 0 },
      body :=
        { x := { raw := -560457 }, y := { raw := 4222 }, momx := { raw := 456638 }, momy := { raw := 165 },
          ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
      view := { height := { raw := 2686976 }, z := { raw := 2724631 }, bob := { raw := 968521 } },
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
              #[{ x := { raw := -560457 }, y := { raw := 4222 }, radius := { raw := 1048576 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, moveFlags := { dropoff := Bool.true },
                  momx := { raw := 456638 }, momy := { raw := 165 }, canPickup := Bool.true, health := 100,
                  shootable := Bool.true },
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
                  solid := Bool.false, height := { raw := 917504 }, ceiling := { raw := 8388608 },
                  moveFlags := { dropoff := Bool.true }, health := -5 },
                { kind := 2001, x := { raw := -11534336 }, y := { raw := 0 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  pickup := Option.some { sprite := 34 }, removed := Bool.true }],
            links :=
              #[#[], #[], #[], #[], #[], #[], #[], #[], #[4, 3], #[], #[], #[0], #[2], #[], #[], #[], #[], #[], #[],
                #[]],
            sectors := #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } }], sectorLinks := #[#[0, 4, 3, 2]],
            pickupPlayer :=
              Option.some
                { actor := 0,
                  state :=
                    { health := 79, bodyHealth := 79, ammo := #v[50, 4, 0, 0],
                      weapons :=
                        #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false,
                          Bool.false],
                      readyWeapon := 2,
                      cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
                      powers := #v[0, 0, 0, 0, 0, 0], damageCount := 10, message := "GOTSHOTGUN" },
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
                  rng := { play := 208, misc := 170 } } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 157, y := -6 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := 208, y := -2 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := -176, y := 0 }, angle := 0, kind := 2001, flags := 0 }],
      levelTime := 171,
      frictionSample :=
        Option.some
          {
            before :=
              { x := { raw := -560457 }, y := { raw := 4222 }, momx := { raw := 503877 }, momy := { raw := 183 },
                ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
            after :=
              { x := { raw := -560457 }, y := { raw := 4222 }, momx := { raw := 456638 }, momy := { raw := 165 },
                ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
            cmd := { forwardMove := 25 } } },
  inventory :=
    { health := 79, shells := 4, weapons := #[0, 1, 2],
      pickupState :=
        { health := 79, bodyHealth := 79, ammo := #v[50, 4, 0, 0],
          weapons :=
            #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          readyWeapon := 2, cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], damageCount := 10, message := "GOTSHOTGUN" } },
  ticks := 171, collected := #[4], message := "Hit for 21", messageTicks := 59 }

def arena_state_172 : Simulation := {
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 102 },
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 65 },
      { thing := 3, kind := 3001, health := 0,
        death :=
          Option.some
            { kind := 3001, health := -5, flags := 5243904, height := { raw := 917504 },
              info := { spawnHealth := 60, normal := 457, extreme := 462, sound := "bgdth1", flags := 4194310 },
              state := 461, tics := -1 },
        imp :=
          Option.some
            { id := 4, frame := 455, tics := 2, angle := { raw := 2147483648 }, target := Option.some 0, movedir := 4,
              reaction := 0, threshold := 90, justHit := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 28 }],
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
          { x := { raw := -4725519 }, y := { raw := -26049 }, angle := { raw := 2145481021 }, z := { raw := 2097152 },
            ceilingz := { raw := 8388608 }, height := { raw := 524288 }, noGravity := Bool.true },
        frame := 101, exploding := Bool.true }],
  soundTargets := #[Option.some 0], deathStats := #v[{ kills := 3 }, { }, { }, { }],
  rng := { play := 208, misc := 172 },
  weapon :=
    { weapon := { frame := 27, tics := 4, y := { raw := 2097152 } },
      flash := { frame := 0, tics := 0, y := { raw := 2097152 } }, refire := 3 },
  weaponAge := 30, refire := Bool.true,
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.shotgun, tic := 145, ammoBefore := 5, ammoAfter := 4, pelletsExpected := 7,
        pelletsTraced := 7, aim := Option.some { },
        pelletAngles := #[37486592, 30932992, 4274520064, 4261937152, 4194304, 4276355072, 4279500800] },
  shots := 4, lastShot := 145, kills := 3,
  statusFace :=
    { index := 11, count := 34, priority := 7, lastAttack := 1, oldHealth := 79,
      oldWeapons :=
        #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false] },
  attacker := Option.some 3,
  player :=
    {
      inventory :=
        { health := 79, shells := 4, weapons := #[0, 1, 2],
          pickupState :=
            { health := 79, bodyHealth := 79, ammo := #v[50, 4, 0, 0],
              weapons :=
                #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false,
                  Bool.false],
              readyWeapon := 2, cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
              powers := #v[0, 0, 0, 0, 0, 0], damageCount := 9, message := "GOTSHOTGUN" } },
      camera := { x := { raw := -52620 }, y := { raw := 4406 }, z := { raw := 2572039 }, angle := { raw := 0 } },
      feet := Doom.Fixed.toFloat { raw := 0 }, velocityZ := Doom.Fixed.toFloat { raw := 0 },
      body :=
        { x := { raw := -52620 }, y := { raw := 4406 }, momx := { raw := 460227 }, momy := { raw := 166 },
          ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
      view := { height := { raw := 2686976 }, z := { raw := 2572039 }, bob := { raw := 983804 } },
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
              #[{ x := { raw := -52620 }, y := { raw := 4406 }, radius := { raw := 1048576 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, moveFlags := { dropoff := Bool.true },
                  momx := { raw := 460227 }, momy := { raw := 166 }, canPickup := Bool.true, health := 100,
                  shootable := Bool.true },
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
                  solid := Bool.false, height := { raw := 917504 }, ceiling := { raw := 8388608 },
                  moveFlags := { dropoff := Bool.true }, health := -5 },
                { kind := 2001, x := { raw := -11534336 }, y := { raw := 0 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  pickup := Option.some { sprite := 34 }, removed := Bool.true }],
            links :=
              #[#[], #[], #[], #[], #[], #[], #[], #[], #[4, 3], #[], #[], #[0], #[2], #[], #[], #[], #[], #[], #[],
                #[]],
            sectors := #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } }], sectorLinks := #[#[0, 4, 3, 2]],
            pickupPlayer :=
              Option.some
                { actor := 0,
                  state :=
                    { health := 79, bodyHealth := 79, ammo := #v[50, 4, 0, 0],
                      weapons :=
                        #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false,
                          Bool.false],
                      readyWeapon := 2,
                      cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
                      powers := #v[0, 0, 0, 0, 0, 0], damageCount := 9, message := "GOTSHOTGUN" },
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
                  rng := { play := 208, misc := 171 } } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 157, y := -6 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := 208, y := -2 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := -176, y := 0 }, angle := 0, kind := 2001, flags := 0 }],
      levelTime := 172,
      frictionSample :=
        Option.some
          {
            before :=
              { x := { raw := -52620 }, y := { raw := 4406 }, momx := { raw := 507837 }, momy := { raw := 184 },
                ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
            after :=
              { x := { raw := -52620 }, y := { raw := 4406 }, momx := { raw := 460227 }, momy := { raw := 166 },
                ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
            cmd := { forwardMove := 25 } } },
  inventory :=
    { health := 79, shells := 4, weapons := #[0, 1, 2],
      pickupState :=
        { health := 79, bodyHealth := 79, ammo := #v[50, 4, 0, 0],
          weapons :=
            #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          readyWeapon := 2, cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], damageCount := 9, message := "GOTSHOTGUN" } },
  ticks := 172, collected := #[4], message := "Hit for 21", messageTicks := 58 }

def arena_state_173 : Simulation := {
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 103 },
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 66 },
      { thing := 3, kind := 3001, health := 0,
        death :=
          Option.some
            { kind := 3001, health := -5, flags := 5243904, height := { raw := 917504 },
              info := { spawnHealth := 60, normal := 457, extreme := 462, sound := "bgdth1", flags := 4194310 },
              state := 461, tics := -1 },
        imp :=
          Option.some
            { id := 4, frame := 455, tics := 2, angle := { raw := 2147483648 }, target := Option.some 0, movedir := 4,
              reaction := 0, threshold := 90, justHit := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 29 }],
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
          { x := { raw := -4725519 }, y := { raw := -26049 }, angle := { raw := 2145481021 }, z := { raw := 2097152 },
            ceilingz := { raw := 8388608 }, height := { raw := 524288 }, noGravity := Bool.true },
        frame := 101, tics := 3, exploding := Bool.true }],
  soundTargets := #[Option.some 0], deathStats := #v[{ kills := 3 }, { }, { }, { }],
  rng := { play := 208, misc := 173 },
  weapon :=
    { weapon := { frame := 27, tics := 3, y := { raw := 2097152 } },
      flash := { frame := 0, tics := 0, y := { raw := 2097152 } }, refire := 3 },
  weaponAge := 31, refire := Bool.true,
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.shotgun, tic := 145, ammoBefore := 5, ammoAfter := 4, pelletsExpected := 7,
        pelletsTraced := 7, aim := Option.some { },
        pelletAngles := #[37486592, 30932992, 4274520064, 4261937152, 4194304, 4276355072, 4279500800] },
  shots := 4, lastShot := 145, kills := 3,
  statusFace :=
    { index := 11, count := 34, priority := 7, lastAttack := 1, oldHealth := 79,
      oldWeapons :=
        #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false] },
  attacker := Option.some 3,
  player :=
    {
      inventory :=
        { health := 79, shells := 4, weapons := #[0, 1, 2],
          pickupState :=
            { health := 79, bodyHealth := 79, ammo := #v[50, 4, 0, 0],
              weapons :=
                #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false,
                  Bool.false],
              readyWeapon := 2, cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
              powers := #v[0, 0, 0, 0, 0, 0], damageCount := 8, message := "GOTSHOTGUN" } },
      camera := { x := { raw := 458806 }, y := { raw := 4591 }, z := { raw := 2426414 }, angle := { raw := 0 } },
      feet := Doom.Fixed.toFloat { raw := 0 }, velocityZ := Doom.Fixed.toFloat { raw := 0 },
      body :=
        { x := { raw := 458806 }, y := { raw := 4591 }, momx := { raw := 463479 }, momy := { raw := 167 },
          ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
      view := { height := { raw := 2686976 }, z := { raw := 2426414 }, bob := { raw := 997759 } },
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
              #[{ x := { raw := 458806 }, y := { raw := 4591 }, radius := { raw := 1048576 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, moveFlags := { dropoff := Bool.true },
                  momx := { raw := 463479 }, momy := { raw := 167 }, canPickup := Bool.true, health := 100,
                  shootable := Bool.true },
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
                  solid := Bool.false, height := { raw := 917504 }, ceiling := { raw := 8388608 },
                  moveFlags := { dropoff := Bool.true }, health := -5 },
                { kind := 2001, x := { raw := -11534336 }, y := { raw := 0 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  pickup := Option.some { sprite := 34 }, removed := Bool.true }],
            links :=
              #[#[], #[], #[], #[], #[], #[], #[], #[], #[4, 3], #[], #[], #[], #[0, 2], #[], #[], #[], #[], #[], #[],
                #[]],
            sectors := #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } }], sectorLinks := #[#[0, 4, 3, 2]],
            pickupPlayer :=
              Option.some
                { actor := 0,
                  state :=
                    { health := 79, bodyHealth := 79, ammo := #v[50, 4, 0, 0],
                      weapons :=
                        #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false,
                          Bool.false],
                      readyWeapon := 2,
                      cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
                      powers := #v[0, 0, 0, 0, 0, 0], damageCount := 8, message := "GOTSHOTGUN" },
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
                  rng := { play := 208, misc := 172 } } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 157, y := -6 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := 208, y := -2 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := -176, y := 0 }, angle := 0, kind := 2001, flags := 0 }],
      levelTime := 173,
      frictionSample :=
        Option.some
          {
            before :=
              { x := { raw := 458806 }, y := { raw := 4591 }, momx := { raw := 511426 }, momy := { raw := 185 },
                ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
            after :=
              { x := { raw := 458806 }, y := { raw := 4591 }, momx := { raw := 463479 }, momy := { raw := 167 },
                ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
            cmd := { forwardMove := 25 } } },
  inventory :=
    { health := 79, shells := 4, weapons := #[0, 1, 2],
      pickupState :=
        { health := 79, bodyHealth := 79, ammo := #v[50, 4, 0, 0],
          weapons :=
            #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          readyWeapon := 2, cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], damageCount := 8, message := "GOTSHOTGUN" } },
  ticks := 173, collected := #[4], message := "Hit for 21", messageTicks := 57 }

def arena_state_174 : Simulation := {
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 104 },
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 67 },
      { thing := 3, kind := 3001, health := 0,
        death :=
          Option.some
            { kind := 3001, health := -5, flags := 5243904, height := { raw := 917504 },
              info := { spawnHealth := 60, normal := 457, extreme := 462, sound := "bgdth1", flags := 4194310 },
              state := 461, tics := -1 },
        imp :=
          Option.some
            { id := 4, frame := 455, tics := 2, angle := { raw := 2147483648 }, target := Option.some 0, movedir := 4,
              reaction := 0, threshold := 90, justHit := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 30 }],
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
          { x := { raw := -4725519 }, y := { raw := -26049 }, angle := { raw := 2145481021 }, z := { raw := 2097152 },
            ceilingz := { raw := 8388608 }, height := { raw := 524288 }, noGravity := Bool.true },
        frame := 101, tics := 2, exploding := Bool.true }],
  soundTargets := #[Option.some 0], deathStats := #v[{ kills := 3 }, { }, { }, { }],
  rng := { play := 208, misc := 174 },
  weapon :=
    { weapon := { frame := 27, tics := 2, y := { raw := 2097152 } },
      flash := { frame := 0, tics := 0, y := { raw := 2097152 } }, refire := 3 },
  weaponAge := 32, refire := Bool.true,
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.shotgun, tic := 145, ammoBefore := 5, ammoAfter := 4, pelletsExpected := 7,
        pelletsTraced := 7, aim := Option.some { },
        pelletAngles := #[37486592, 30932992, 4274520064, 4261937152, 4194304, 4276355072, 4279500800] },
  shots := 4, lastShot := 145, kills := 3,
  statusFace :=
    { index := 11, count := 34, priority := 7, lastAttack := 1, oldHealth := 79,
      oldWeapons :=
        #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false] },
  attacker := Option.some 3,
  player :=
    {
      inventory :=
        { health := 79, shells := 4, weapons := #[0, 1, 2],
          pickupState :=
            { health := 79, bodyHealth := 79, ammo := #v[50, 4, 0, 0],
              weapons :=
                #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false,
                  Bool.false],
              readyWeapon := 2, cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
              powers := #v[0, 0, 0, 0, 0, 0], damageCount := 7, message := "GOTSHOTGUN" } },
      camera := { x := { raw := 973484 }, y := { raw := 4777 }, z := { raw := 2303016 }, angle := { raw := 0 } },
      feet := Doom.Fixed.toFloat { raw := 0 }, velocityZ := Doom.Fixed.toFloat { raw := 0 },
      body :=
        { x := { raw := 973484 }, y := { raw := 4777 }, momx := { raw := 466426 }, momy := { raw := 168 },
          ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
      view := { height := { raw := 2686976 }, z := { raw := 2303016 }, bob := { raw := 1010488 } },
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
              #[{ x := { raw := 973484 }, y := { raw := 4777 }, radius := { raw := 1048576 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, moveFlags := { dropoff := Bool.true },
                  momx := { raw := 466426 }, momy := { raw := 168 }, canPickup := Bool.true, health := 100,
                  shootable := Bool.true },
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
                  solid := Bool.false, height := { raw := 917504 }, ceiling := { raw := 8388608 },
                  moveFlags := { dropoff := Bool.true }, health := -5 },
                { kind := 2001, x := { raw := -11534336 }, y := { raw := 0 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  pickup := Option.some { sprite := 34 }, removed := Bool.true }],
            links :=
              #[#[], #[], #[], #[], #[], #[], #[], #[], #[4, 3], #[], #[], #[], #[0, 2], #[], #[], #[], #[], #[], #[],
                #[]],
            sectors := #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } }], sectorLinks := #[#[0, 4, 3, 2]],
            pickupPlayer :=
              Option.some
                { actor := 0,
                  state :=
                    { health := 79, bodyHealth := 79, ammo := #v[50, 4, 0, 0],
                      weapons :=
                        #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false,
                          Bool.false],
                      readyWeapon := 2,
                      cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
                      powers := #v[0, 0, 0, 0, 0, 0], damageCount := 7, message := "GOTSHOTGUN" },
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
                  rng := { play := 208, misc := 173 } } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 157, y := -6 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := 208, y := -2 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := -176, y := 0 }, angle := 0, kind := 2001, flags := 0 }],
      levelTime := 174,
      frictionSample :=
        Option.some
          {
            before :=
              { x := { raw := 973484 }, y := { raw := 4777 }, momx := { raw := 514678 }, momy := { raw := 186 },
                ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
            after :=
              { x := { raw := 973484 }, y := { raw := 4777 }, momx := { raw := 466426 }, momy := { raw := 168 },
                ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
            cmd := { forwardMove := 25 } } },
  inventory :=
    { health := 79, shells := 4, weapons := #[0, 1, 2],
      pickupState :=
        { health := 79, bodyHealth := 79, ammo := #v[50, 4, 0, 0],
          weapons :=
            #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          readyWeapon := 2, cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], damageCount := 7, message := "GOTSHOTGUN" } },
  ticks := 174, collected := #[4], message := "Hit for 21", messageTicks := 56 }

def arena_state_175 : Simulation := {
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 105 },
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 68 },
      { thing := 3, kind := 3001, health := 0,
        death :=
          Option.some
            { kind := 3001, health := -5, flags := 5243904, height := { raw := 917504 },
              info := { spawnHealth := 60, normal := 457, extreme := 462, sound := "bgdth1", flags := 4194310 },
              state := 461, tics := -1 },
        imp :=
          Option.some
            { id := 4, frame := 455, tics := 2, angle := { raw := 2147483648 }, target := Option.some 0, movedir := 4,
              reaction := 0, threshold := 90, justHit := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 31 }],
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
          { x := { raw := -4725519 }, y := { raw := -26049 }, angle := { raw := 2145481021 }, z := { raw := 2097152 },
            ceilingz := { raw := 8388608 }, height := { raw := 524288 }, noGravity := Bool.true },
        frame := 101, tics := 1, exploding := Bool.true }],
  soundTargets := #[Option.some 0], deathStats := #v[{ kills := 3 }, { }, { }, { }],
  rng := { play := 208, misc := 175 },
  weapon :=
    { weapon := { frame := 27, y := { raw := 2097152 } }, flash := { frame := 0, tics := 0, y := { raw := 2097152 } },
      refire := 3 },
  weaponAge := 33, refire := Bool.true,
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.shotgun, tic := 145, ammoBefore := 5, ammoAfter := 4, pelletsExpected := 7,
        pelletsTraced := 7, aim := Option.some { },
        pelletAngles := #[37486592, 30932992, 4274520064, 4261937152, 4194304, 4276355072, 4279500800] },
  shots := 4, lastShot := 145, kills := 3,
  statusFace :=
    { index := 11, count := 34, priority := 7, lastAttack := 1, oldHealth := 79,
      oldWeapons :=
        #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false] },
  attacker := Option.some 3,
  player :=
    {
      inventory :=
        { health := 79, shells := 4, weapons := #[0, 1, 2],
          pickupState :=
            { health := 79, bodyHealth := 79, ammo := #v[50, 4, 0, 0],
              weapons :=
                #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false,
                  Bool.false],
              readyWeapon := 2, cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
              powers := #v[0, 0, 0, 0, 0, 0], damageCount := 6, message := "GOTSHOTGUN" } },
      camera := { x := { raw := 1491109 }, y := { raw := 4964 }, z := { raw := 2215060 }, angle := { raw := 0 } },
      feet := Doom.Fixed.toFloat { raw := 0 }, velocityZ := Doom.Fixed.toFloat { raw := 0 },
      body :=
        { x := { raw := 1491109 }, y := { raw := 4964 }, momx := { raw := 469097 }, momy := { raw := 169 },
          ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
      view := { height := { raw := 2686976 }, z := { raw := 2215060 }, bob := { raw := 1022093 } },
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
              #[{ x := { raw := 1491109 }, y := { raw := 4964 }, radius := { raw := 1048576 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, moveFlags := { dropoff := Bool.true },
                  momx := { raw := 469097 }, momy := { raw := 169 }, canPickup := Bool.true, health := 100,
                  shootable := Bool.true },
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
                  solid := Bool.false, height := { raw := 917504 }, ceiling := { raw := 8388608 },
                  moveFlags := { dropoff := Bool.true }, health := -5 },
                { kind := 2001, x := { raw := -11534336 }, y := { raw := 0 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  pickup := Option.some { sprite := 34 }, removed := Bool.true }],
            links :=
              #[#[], #[], #[], #[], #[], #[], #[], #[], #[4, 3], #[], #[], #[], #[0, 2], #[], #[], #[], #[], #[], #[],
                #[]],
            sectors := #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } }], sectorLinks := #[#[0, 4, 3, 2]],
            pickupPlayer :=
              Option.some
                { actor := 0,
                  state :=
                    { health := 79, bodyHealth := 79, ammo := #v[50, 4, 0, 0],
                      weapons :=
                        #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false,
                          Bool.false],
                      readyWeapon := 2,
                      cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
                      powers := #v[0, 0, 0, 0, 0, 0], damageCount := 6, message := "GOTSHOTGUN" },
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
                  rng := { play := 208, misc := 174 } } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 157, y := -6 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := 208, y := -2 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := -176, y := 0 }, angle := 0, kind := 2001, flags := 0 }],
      levelTime := 175,
      frictionSample :=
        Option.some
          {
            before :=
              { x := { raw := 1491109 }, y := { raw := 4964 }, momx := { raw := 517625 }, momy := { raw := 187 },
                ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
            after :=
              { x := { raw := 1491109 }, y := { raw := 4964 }, momx := { raw := 469097 }, momy := { raw := 169 },
                ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
            cmd := { forwardMove := 25 } } },
  inventory :=
    { health := 79, shells := 4, weapons := #[0, 1, 2],
      pickupState :=
        { health := 79, bodyHealth := 79, ammo := #v[50, 4, 0, 0],
          weapons :=
            #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          readyWeapon := 2, cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], damageCount := 6, message := "GOTSHOTGUN" } },
  ticks := 175, collected := #[4], message := "Hit for 21", messageTicks := 55 }

def arena_state_176 : Simulation := {
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 106 },
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 69 },
      { thing := 3, kind := 3001, health := 0,
        death :=
          Option.some
            { kind := 3001, health := -5, flags := 5243904, height := { raw := 917504 },
              info := { spawnHealth := 60, normal := 457, extreme := 462, sound := "bgdth1", flags := 4194310 },
              state := 461, tics := -1 },
        imp :=
          Option.some
            { id := 4, frame := 455, tics := 2, angle := { raw := 2147483648 }, target := Option.some 0, movedir := 4,
              reaction := 0, threshold := 90, justHit := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 32 }],
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
          { x := { raw := -4725519 }, y := { raw := -26049 }, angle := { raw := 2145481021 }, z := { raw := 2097152 },
            ceilingz := { raw := 8388608 }, height := { raw := 524288 }, noGravity := Bool.true },
        frame := 101, tics := 0, exploding := Bool.true, removed := Bool.true }],
  projectileEvents := #[(2, Doom.Projectile.Event.remove)], soundTargets := #[Option.some 0],
  deathStats := #v[{ kills := 3 }, { }, { }, { }], rng := { play := 208, misc := 176 },
  weapon :=
    { weapon := { frame := 28, tics := 3, y := { raw := 2097152 } },
      flash := { frame := 0, tics := 0, y := { raw := 2097152 } }, refire := 3 },
  weaponAge := 34, refire := Bool.true,
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.shotgun, tic := 145, ammoBefore := 5, ammoAfter := 4, pelletsExpected := 7,
        pelletsTraced := 7, aim := Option.some { },
        pelletAngles := #[37486592, 30932992, 4274520064, 4261937152, 4194304, 4276355072, 4279500800] },
  shots := 4, lastShot := 145, kills := 3,
  statusFace :=
    { index := 11, count := 34, priority := 7, lastAttack := 1, oldHealth := 79,
      oldWeapons :=
        #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false] },
  attacker := Option.some 3,
  player :=
    {
      inventory :=
        { health := 79, shells := 4, weapons := #[0, 1, 2],
          pickupState :=
            { health := 79, bodyHealth := 79, ammo := #v[50, 4, 0, 0],
              weapons :=
                #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false,
                  Bool.false],
              readyWeapon := 2, cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
              powers := #v[0, 0, 0, 0, 0, 0], damageCount := 5, message := "GOTSHOTGUN" } },
      camera := { x := { raw := 2011405 }, y := { raw := 5152 }, z := { raw := 2172304 }, angle := { raw := 0 } },
      feet := Doom.Fixed.toFloat { raw := 0 }, velocityZ := Doom.Fixed.toFloat { raw := 0 },
      body :=
        { x := { raw := 2011405 }, y := { raw := 5152 }, momx := { raw := 471518 }, momy := { raw := 170 },
          ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
      view := { height := { raw := 2686976 }, z := { raw := 2172304 }, bob := { raw := 1032668 } },
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
              #[{ x := { raw := 2011405 }, y := { raw := 5152 }, radius := { raw := 1048576 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, moveFlags := { dropoff := Bool.true },
                  momx := { raw := 471518 }, momy := { raw := 170 }, canPickup := Bool.true, health := 100,
                  shootable := Bool.true },
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
                  solid := Bool.false, height := { raw := 917504 }, ceiling := { raw := 8388608 },
                  moveFlags := { dropoff := Bool.true }, health := -5 },
                { kind := 2001, x := { raw := -11534336 }, y := { raw := 0 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  pickup := Option.some { sprite := 34 }, removed := Bool.true }],
            links :=
              #[#[], #[], #[], #[], #[], #[], #[], #[], #[4, 3], #[], #[], #[], #[0, 2], #[], #[], #[], #[], #[], #[],
                #[]],
            sectors := #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } }], sectorLinks := #[#[0, 4, 3, 2]],
            pickupPlayer :=
              Option.some
                { actor := 0,
                  state :=
                    { health := 79, bodyHealth := 79, ammo := #v[50, 4, 0, 0],
                      weapons :=
                        #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false,
                          Bool.false],
                      readyWeapon := 2,
                      cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
                      powers := #v[0, 0, 0, 0, 0, 0], damageCount := 5, message := "GOTSHOTGUN" },
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
                  rng := { play := 208, misc := 175 } } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 157, y := -6 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := 208, y := -2 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := -176, y := 0 }, angle := 0, kind := 2001, flags := 0 }],
      levelTime := 176,
      frictionSample :=
        Option.some
          {
            before :=
              { x := { raw := 2011405 }, y := { raw := 5152 }, momx := { raw := 520296 }, momy := { raw := 188 },
                ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
            after :=
              { x := { raw := 2011405 }, y := { raw := 5152 }, momx := { raw := 471518 }, momy := { raw := 170 },
                ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
            cmd := { forwardMove := 25 } } },
  inventory :=
    { health := 79, shells := 4, weapons := #[0, 1, 2],
      pickupState :=
        { health := 79, bodyHealth := 79, ammo := #v[50, 4, 0, 0],
          weapons :=
            #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          readyWeapon := 2, cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], damageCount := 5, message := "GOTSHOTGUN" } },
  ticks := 176, collected := #[4], message := "Hit for 21", messageTicks := 54 }

def arena_state_177 : Simulation := {
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 107 },
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 70 },
      { thing := 3, kind := 3001, health := 0,
        death :=
          Option.some
            { kind := 3001, health := -5, flags := 5243904, height := { raw := 917504 },
              info := { spawnHealth := 60, normal := 457, extreme := 462, sound := "bgdth1", flags := 4194310 },
              state := 461, tics := -1 },
        imp :=
          Option.some
            { id := 4, frame := 455, tics := 2, angle := { raw := 2147483648 }, target := Option.some 0, movedir := 4,
              reaction := 0, threshold := 90, justHit := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 33 }],
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
          { x := { raw := -4725519 }, y := { raw := -26049 }, angle := { raw := 2145481021 }, z := { raw := 2097152 },
            ceilingz := { raw := 8388608 }, height := { raw := 524288 }, noGravity := Bool.true },
        frame := 101, tics := 0, exploding := Bool.true, removed := Bool.true }],
  soundTargets := #[Option.some 0], deathStats := #v[{ kills := 3 }, { }, { }, { }],
  rng := { play := 208, misc := 177 },
  weapon :=
    { weapon := { frame := 28, tics := 2, y := { raw := 2097152 } },
      flash := { frame := 0, tics := 0, y := { raw := 2097152 } }, refire := 3 },
  weaponAge := 35, refire := Bool.true,
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.shotgun, tic := 145, ammoBefore := 5, ammoAfter := 4, pelletsExpected := 7,
        pelletsTraced := 7, aim := Option.some { },
        pelletAngles := #[37486592, 30932992, 4274520064, 4261937152, 4194304, 4276355072, 4279500800] },
  shots := 4, lastShot := 145, kills := 3,
  statusFace :=
    { index := 11, count := 34, priority := 7, lastAttack := 1, oldHealth := 79,
      oldWeapons :=
        #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false] },
  attacker := Option.some 3,
  player :=
    {
      inventory :=
        { health := 79, shells := 4, weapons := #[0, 1, 2],
          pickupState :=
            { health := 79, bodyHealth := 79, ammo := #v[50, 4, 0, 0],
              weapons :=
                #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false,
                  Bool.false],
              readyWeapon := 2, cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
              powers := #v[0, 0, 0, 0, 0, 0], damageCount := 4, message := "GOTSHOTGUN" } },
      camera := { x := { raw := 2534122 }, y := { raw := 5341 }, z := { raw := 2179980 }, angle := { raw := 0 } },
      feet := Doom.Fixed.toFloat { raw := 0 }, velocityZ := Doom.Fixed.toFloat { raw := 0 },
      body :=
        { x := { raw := 2534122 }, y := { raw := 5341 }, momx := { raw := 473712 }, momy := { raw := 171 },
          ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
      view := { height := { raw := 2686976 }, z := { raw := 2179980 }, bob := { raw := 1042301 } },
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
              #[{ x := { raw := 2534122 }, y := { raw := 5341 }, radius := { raw := 1048576 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, moveFlags := { dropoff := Bool.true },
                  momx := { raw := 473712 }, momy := { raw := 171 }, canPickup := Bool.true, health := 100,
                  shootable := Bool.true },
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
                  solid := Bool.false, height := { raw := 917504 }, ceiling := { raw := 8388608 },
                  moveFlags := { dropoff := Bool.true }, health := -5 },
                { kind := 2001, x := { raw := -11534336 }, y := { raw := 0 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  pickup := Option.some { sprite := 34 }, removed := Bool.true }],
            links :=
              #[#[], #[], #[], #[], #[], #[], #[], #[], #[4, 3], #[], #[], #[], #[0, 2], #[], #[], #[], #[], #[], #[],
                #[]],
            sectors := #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } }], sectorLinks := #[#[0, 4, 3, 2]],
            pickupPlayer :=
              Option.some
                { actor := 0,
                  state :=
                    { health := 79, bodyHealth := 79, ammo := #v[50, 4, 0, 0],
                      weapons :=
                        #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false,
                          Bool.false],
                      readyWeapon := 2,
                      cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
                      powers := #v[0, 0, 0, 0, 0, 0], damageCount := 4, message := "GOTSHOTGUN" },
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
                  rng := { play := 208, misc := 176 } } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 157, y := -6 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := 208, y := -2 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := -176, y := 0 }, angle := 0, kind := 2001, flags := 0 }],
      levelTime := 177,
      frictionSample :=
        Option.some
          {
            before :=
              { x := { raw := 2534122 }, y := { raw := 5341 }, momx := { raw := 522717 }, momy := { raw := 189 },
                ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
            after :=
              { x := { raw := 2534122 }, y := { raw := 5341 }, momx := { raw := 473712 }, momy := { raw := 171 },
                ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
            cmd := { forwardMove := 25 } } },
  inventory :=
    { health := 79, shells := 4, weapons := #[0, 1, 2],
      pickupState :=
        { health := 79, bodyHealth := 79, ammo := #v[50, 4, 0, 0],
          weapons :=
            #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          readyWeapon := 2, cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], damageCount := 4, message := "GOTSHOTGUN" } },
  ticks := 177, collected := #[4], message := "Hit for 21", messageTicks := 53 }

def arena_state_178 : Simulation := {
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 108 },
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 71 },
      { thing := 3, kind := 3001, health := 0,
        death :=
          Option.some
            { kind := 3001, health := -5, flags := 5243904, height := { raw := 917504 },
              info := { spawnHealth := 60, normal := 457, extreme := 462, sound := "bgdth1", flags := 4194310 },
              state := 461, tics := -1 },
        imp :=
          Option.some
            { id := 4, frame := 455, tics := 2, angle := { raw := 2147483648 }, target := Option.some 0, movedir := 4,
              reaction := 0, threshold := 90, justHit := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 34 }],
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
          { x := { raw := -4725519 }, y := { raw := -26049 }, angle := { raw := 2145481021 }, z := { raw := 2097152 },
            ceilingz := { raw := 8388608 }, height := { raw := 524288 }, noGravity := Bool.true },
        frame := 101, tics := 0, exploding := Bool.true, removed := Bool.true }],
  soundTargets := #[Option.some 0], deathStats := #v[{ kills := 3 }, { }, { }, { }],
  rng := { play := 208, misc := 178 },
  weapon :=
    { weapon := { frame := 28, y := { raw := 2097152 } }, flash := { frame := 0, tics := 0, y := { raw := 2097152 } },
      refire := 3 },
  weaponAge := 36, refire := Bool.true,
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.shotgun, tic := 145, ammoBefore := 5, ammoAfter := 4, pelletsExpected := 7,
        pelletsTraced := 7, aim := Option.some { },
        pelletAngles := #[37486592, 30932992, 4274520064, 4261937152, 4194304, 4276355072, 4279500800] },
  shots := 4, lastShot := 145, kills := 3,
  statusFace :=
    { index := 11, count := 34, priority := 7, lastAttack := 1, oldHealth := 79,
      oldWeapons :=
        #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false] },
  attacker := Option.some 3,
  player :=
    {
      inventory :=
        { health := 79, shells := 4, weapons := #[0, 1, 2],
          pickupState :=
            { health := 79, bodyHealth := 79, ammo := #v[50, 4, 0, 0],
              weapons :=
                #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false,
                  Bool.false],
              readyWeapon := 2, cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
              powers := #v[0, 0, 0, 0, 0, 0], damageCount := 3, message := "GOTSHOTGUN" } },
      camera := { x := { raw := 3059033 }, y := { raw := 5531 }, z := { raw := 2239256 }, angle := { raw := 0 } },
      feet := Doom.Fixed.toFloat { raw := 0 }, velocityZ := Doom.Fixed.toFloat { raw := 0 },
      body :=
        { x := { raw := 3059033 }, y := { raw := 5531 }, momx := { raw := 475700 }, momy := { raw := 172 },
          ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
      view := { height := { raw := 2686976 }, z := { raw := 2239256 }, bob := { raw := 1048576 } },
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
              #[{ x := { raw := 3059033 }, y := { raw := 5531 }, radius := { raw := 1048576 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, moveFlags := { dropoff := Bool.true },
                  momx := { raw := 475700 }, momy := { raw := 172 }, canPickup := Bool.true, health := 100,
                  shootable := Bool.true },
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
                  solid := Bool.false, height := { raw := 917504 }, ceiling := { raw := 8388608 },
                  moveFlags := { dropoff := Bool.true }, health := -5 },
                { kind := 2001, x := { raw := -11534336 }, y := { raw := 0 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  pickup := Option.some { sprite := 34 }, removed := Bool.true }],
            links :=
              #[#[], #[], #[], #[], #[], #[], #[], #[], #[4, 3], #[], #[], #[], #[0, 2], #[], #[], #[], #[], #[], #[],
                #[]],
            sectors := #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } }], sectorLinks := #[#[0, 4, 3, 2]],
            pickupPlayer :=
              Option.some
                { actor := 0,
                  state :=
                    { health := 79, bodyHealth := 79, ammo := #v[50, 4, 0, 0],
                      weapons :=
                        #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false,
                          Bool.false],
                      readyWeapon := 2,
                      cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
                      powers := #v[0, 0, 0, 0, 0, 0], damageCount := 3, message := "GOTSHOTGUN" },
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
                  rng := { play := 208, misc := 177 } } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 157, y := -6 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := 208, y := -2 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := -176, y := 0 }, angle := 0, kind := 2001, flags := 0 }],
      levelTime := 178,
      frictionSample :=
        Option.some
          {
            before :=
              { x := { raw := 3059033 }, y := { raw := 5531 }, momx := { raw := 524911 }, momy := { raw := 190 },
                ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
            after :=
              { x := { raw := 3059033 }, y := { raw := 5531 }, momx := { raw := 475700 }, momy := { raw := 172 },
                ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
            cmd := { forwardMove := 25 } } },
  inventory :=
    { health := 79, shells := 4, weapons := #[0, 1, 2],
      pickupState :=
        { health := 79, bodyHealth := 79, ammo := #v[50, 4, 0, 0],
          weapons :=
            #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          readyWeapon := 2, cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], damageCount := 3, message := "GOTSHOTGUN" } },
  ticks := 178, collected := #[4], message := "Hit for 21", messageTicks := 52 }

def arena_state_179 : Simulation := {
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 109 },
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 72 },
      { thing := 3, kind := 3001, health := 0,
        death :=
          Option.some
            { kind := 3001, health := -5, flags := 5243904, height := { raw := 917504 },
              info := { spawnHealth := 60, normal := 457, extreme := 462, sound := "bgdth1", flags := 4194310 },
              state := 461, tics := -1 },
        imp :=
          Option.some
            { id := 4, frame := 455, tics := 2, angle := { raw := 2147483648 }, target := Option.some 0, movedir := 4,
              reaction := 0, threshold := 90, justHit := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 35 }],
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
          { x := { raw := -4725519 }, y := { raw := -26049 }, angle := { raw := 2145481021 }, z := { raw := 2097152 },
            ceilingz := { raw := 8388608 }, height := { raw := 524288 }, noGravity := Bool.true },
        frame := 101, tics := 0, exploding := Bool.true, removed := Bool.true }],
  soundTargets := #[Option.some 0], deathStats := #v[{ kills := 3 }, { }, { }, { }],
  rng := { play := 208, misc := 179 },
  weapon :=
    { weapon := { frame := 29, tics := 7, y := { raw := 2097152 } },
      flash := { frame := 0, tics := 0, y := { raw := 2097152 } } },
  weaponAge := 37,
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.shotgun, tic := 145, ammoBefore := 5, ammoAfter := 4, pelletsExpected := 7,
        pelletsTraced := 7, aim := Option.some { },
        pelletAngles := #[37486592, 30932992, 4274520064, 4261937152, 4194304, 4276355072, 4279500800] },
  shots := 4, lastShot := 145, kills := 3,
  statusFace :=
    { index := 11, count := 34, priority := 7, lastAttack := 1, oldHealth := 79,
      oldWeapons :=
        #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false] },
  attacker := Option.some 3,
  player :=
    {
      inventory :=
        { health := 79, shells := 4, weapons := #[0, 1, 2],
          pickupState :=
            { health := 79, bodyHealth := 79, ammo := #v[50, 4, 0, 0],
              weapons :=
                #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false,
                  Bool.false],
              readyWeapon := 2, cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
              powers := #v[0, 0, 0, 0, 0, 0], damageCount := 2, message := "GOTSHOTGUN" } },
      camera := { x := { raw := 3585932 }, y := { raw := 5722 }, z := { raw := 2345288 }, angle := { raw := 0 } },
      feet := Doom.Fixed.toFloat { raw := 0 }, velocityZ := Doom.Fixed.toFloat { raw := 0 },
      body :=
        { x := { raw := 3585932 }, y := { raw := 5722 }, momx := { raw := 477502 }, momy := { raw := 173 },
          ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
      view := { height := { raw := 2686976 }, z := { raw := 2345288 }, bob := { raw := 1048576 } },
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
              #[{ x := { raw := 3585932 }, y := { raw := 5722 }, radius := { raw := 1048576 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, moveFlags := { dropoff := Bool.true },
                  momx := { raw := 477502 }, momy := { raw := 173 }, canPickup := Bool.true, health := 100,
                  shootable := Bool.true },
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
                  solid := Bool.false, height := { raw := 917504 }, ceiling := { raw := 8388608 },
                  moveFlags := { dropoff := Bool.true }, health := -5 },
                { kind := 2001, x := { raw := -11534336 }, y := { raw := 0 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  pickup := Option.some { sprite := 34 }, removed := Bool.true }],
            links :=
              #[#[], #[], #[], #[], #[], #[], #[], #[], #[4, 3], #[], #[], #[], #[0, 2], #[], #[], #[], #[], #[], #[],
                #[]],
            sectors := #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } }], sectorLinks := #[#[0, 4, 3, 2]],
            pickupPlayer :=
              Option.some
                { actor := 0,
                  state :=
                    { health := 79, bodyHealth := 79, ammo := #v[50, 4, 0, 0],
                      weapons :=
                        #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false,
                          Bool.false],
                      readyWeapon := 2,
                      cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
                      powers := #v[0, 0, 0, 0, 0, 0], damageCount := 2, message := "GOTSHOTGUN" },
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
                  rng := { play := 208, misc := 178 } } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 157, y := -6 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := 208, y := -2 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := -176, y := 0 }, angle := 0, kind := 2001, flags := 0 }],
      levelTime := 179,
      frictionSample :=
        Option.some
          {
            before :=
              { x := { raw := 3585932 }, y := { raw := 5722 }, momx := { raw := 526899 }, momy := { raw := 191 },
                ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
            after :=
              { x := { raw := 3585932 }, y := { raw := 5722 }, momx := { raw := 477502 }, momy := { raw := 173 },
                ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
            cmd := { forwardMove := 25 } } },
  inventory :=
    { health := 79, shells := 4, weapons := #[0, 1, 2],
      pickupState :=
        { health := 79, bodyHealth := 79, ammo := #v[50, 4, 0, 0],
          weapons :=
            #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          readyWeapon := 2, cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], damageCount := 2, message := "GOTSHOTGUN" } },
  ticks := 179, collected := #[4], message := "Hit for 21", messageTicks := 51 }

def arena_state_180 : Simulation := {
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 110 },
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 73 },
      { thing := 3, kind := 3001, health := 0,
        death :=
          Option.some
            { kind := 3001, health := -5, flags := 5243904, height := { raw := 917504 },
              info := { spawnHealth := 60, normal := 457, extreme := 462, sound := "bgdth1", flags := 4194310 },
              state := 461, tics := -1 },
        imp :=
          Option.some
            { id := 4, frame := 455, tics := 2, angle := { raw := 2147483648 }, target := Option.some 0, movedir := 4,
              reaction := 0, threshold := 90, justHit := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 36 }],
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
          { x := { raw := -4725519 }, y := { raw := -26049 }, angle := { raw := 2145481021 }, z := { raw := 2097152 },
            ceilingz := { raw := 8388608 }, height := { raw := 524288 }, noGravity := Bool.true },
        frame := 101, tics := 0, exploding := Bool.true, removed := Bool.true }],
  soundTargets := #[Option.some 0], deathStats := #v[{ kills := 3 }, { }, { }, { }],
  rng := { play := 208, misc := 180 },
  weapon :=
    { weapon := { frame := 29, tics := 6, y := { raw := 2097152 } },
      flash := { frame := 0, tics := 0, y := { raw := 2097152 } } },
  weaponAge := 38,
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.shotgun, tic := 145, ammoBefore := 5, ammoAfter := 4, pelletsExpected := 7,
        pelletsTraced := 7, aim := Option.some { },
        pelletAngles := #[37486592, 30932992, 4274520064, 4261937152, 4194304, 4276355072, 4279500800] },
  shots := 4, lastShot := 145, kills := 3,
  statusFace :=
    { index := 11, count := 34, priority := 7, lastAttack := 1, oldHealth := 79,
      oldWeapons :=
        #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false] },
  attacker := Option.some 3,
  player :=
    {
      inventory :=
        { health := 79, shells := 4, weapons := #[0, 1, 2],
          pickupState :=
            { health := 79, bodyHealth := 79, ammo := #v[50, 4, 0, 0],
              weapons :=
                #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false,
                  Bool.false],
              readyWeapon := 2, cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
              powers := #v[0, 0, 0, 0, 0, 0], damageCount := 1, message := "GOTSHOTGUN" } },
      camera := { x := { raw := 4114633 }, y := { raw := 5914 }, z := { raw := 2484672 }, angle := { raw := 0 } },
      feet := Doom.Fixed.toFloat { raw := 0 }, velocityZ := Doom.Fixed.toFloat { raw := 0 },
      body :=
        { x := { raw := 4114633 }, y := { raw := 5914 }, momx := { raw := 479135 }, momy := { raw := 174 },
          ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
      view := { height := { raw := 2686976 }, z := { raw := 2484672 }, bob := { raw := 1048576 } },
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
              #[{ x := { raw := 4114633 }, y := { raw := 5914 }, radius := { raw := 1048576 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, moveFlags := { dropoff := Bool.true },
                  momx := { raw := 479135 }, momy := { raw := 174 }, canPickup := Bool.true, health := 100,
                  shootable := Bool.true },
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
                  solid := Bool.false, height := { raw := 917504 }, ceiling := { raw := 8388608 },
                  moveFlags := { dropoff := Bool.true }, health := -5 },
                { kind := 2001, x := { raw := -11534336 }, y := { raw := 0 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  pickup := Option.some { sprite := 34 }, removed := Bool.true }],
            links :=
              #[#[], #[], #[], #[], #[], #[], #[], #[], #[4, 3], #[], #[], #[], #[0, 2], #[], #[], #[], #[], #[], #[],
                #[]],
            sectors := #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } }], sectorLinks := #[#[0, 4, 3, 2]],
            pickupPlayer :=
              Option.some
                { actor := 0,
                  state :=
                    { health := 79, bodyHealth := 79, ammo := #v[50, 4, 0, 0],
                      weapons :=
                        #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false,
                          Bool.false],
                      readyWeapon := 2,
                      cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
                      powers := #v[0, 0, 0, 0, 0, 0], damageCount := 1, message := "GOTSHOTGUN" },
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
                  rng := { play := 208, misc := 179 } } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 157, y := -6 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := 208, y := -2 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := -176, y := 0 }, angle := 0, kind := 2001, flags := 0 }],
      levelTime := 180,
      frictionSample :=
        Option.some
          {
            before :=
              { x := { raw := 4114633 }, y := { raw := 5914 }, momx := { raw := 528701 }, momy := { raw := 192 },
                ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
            after :=
              { x := { raw := 4114633 }, y := { raw := 5914 }, momx := { raw := 479135 }, momy := { raw := 174 },
                ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
            cmd := { forwardMove := 25 } } },
  inventory :=
    { health := 79, shells := 4, weapons := #[0, 1, 2],
      pickupState :=
        { health := 79, bodyHealth := 79, ammo := #v[50, 4, 0, 0],
          weapons :=
            #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          readyWeapon := 2, cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], damageCount := 1, message := "GOTSHOTGUN" } },
  ticks := 180, collected := #[4], message := "Hit for 21", messageTicks := 50 }

def arena_inputs_019 : List UInt32 := [2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2]

end LeanDoomProofs
