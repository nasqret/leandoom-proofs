import LeanDoomProofs.ArenaWitness

/-! Generated checkpoint proposals. No computation here is trusted as a proof.
Each adjacent pair is checked in the corresponding ArenaSegments module. -/
namespace LeanDoomProofs
open Doom
set_option maxRecDepth 8192

def arena_state_205 : Simulation := {
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 135 },
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 98 },
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 61 }],
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
  rng := { play := 208, misc := 205 },
  weapon :=
    { weapon := { frame := 18, x := { raw := 466432 }, y := { raw := 3066048 } },
      flash := { frame := 0, tics := 0, x := { raw := 466432 }, y := { raw := 3066048 } }, attackDown := Bool.false },
  attackDown := Bool.false,
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.shotgun, tic := 145, ammoBefore := 5, ammoAfter := 4, pelletsExpected := 7,
        pelletsTraced := 7, aim := Option.some { },
        pelletAngles := #[37486592, 30932992, 4274520064, 4261937152, 4194304, 4276355072, 4279500800] },
  shots := 4, lastShot := 145, kills := 3,
  statusFace :=
    { index := 11, count := 9, priority := 7, lastAttack := 1, oldHealth := 79,
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
              powers := #v[0, 0, 0, 0, 0, 0], message := "GOTSHOTGUN" } },
      camera := { x := { raw := 17613591 }, y := { raw := 10739 }, z := { raw := 3168296 }, angle := { raw := 0 } },
      feet := Doom.Fixed.toFloat { raw := 0 }, velocityZ := Doom.Fixed.toFloat { raw := 0 },
      body :=
        { x := { raw := 17613591 }, y := { raw := 10739 }, momx := { raw := 493572 }, momy := { raw := 174 },
          ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
      view := { height := { raw := 2686976 }, z := { raw := 3168296 }, bob := { raw := 1048576 } },
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
              #[{ x := { raw := 17613591 }, y := { raw := 10739 }, radius := { raw := 1048576 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, moveFlags := { dropoff := Bool.true },
                  momx := { raw := 493572 }, momy := { raw := 174 }, canPickup := Bool.true, health := 100,
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
              #[#[], #[], #[], #[], #[], #[], #[], #[], #[4, 3], #[], #[], #[], #[2], #[], #[0], #[], #[], #[], #[],
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
                  rng := { play := 208, misc := 204 } } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 157, y := -6 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := 208, y := -2 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := -176, y := 0 }, angle := 0, kind := 2001, flags := 0 }],
      levelTime := 205,
      frictionSample :=
        Option.some
          {
            before :=
              { x := { raw := 17613591 }, y := { raw := 10739 }, momx := { raw := 544632 }, momy := { raw := 193 },
                ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
            after :=
              { x := { raw := 17613591 }, y := { raw := 10739 }, momx := { raw := 493572 }, momy := { raw := 174 },
                ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
            cmd := { forwardMove := 25 } } },
  inventory :=
    { health := 79, shells := 4, weapons := #[0, 1, 2],
      pickupState :=
        { health := 79, bodyHealth := 79, ammo := #v[50, 4, 0, 0],
          weapons :=
            #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          readyWeapon := 2, cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTSHOTGUN" } },
  ticks := 205, collected := #[4], message := "Hit for 21", messageTicks := 25 }

def arena_state_206 : Simulation := {
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
          { v1 := 2, v2 := 3, flags := 1, special := 0, tag := 0, front := 2, back := 65535 },
          { v1 := 3, v2 := 0, flags := 1, special := 0, tag := 0, front := 3, back := 65535 }],
      sides :=
        #[{ xOffset := 0, yOffset := 0, upper := "-", lower := "-", middle := "WALL", sector := 0 },
          { xOffset := 0, yOffset := 0, upper := "-", lower := "-", middle := "WALL", sector := 0 },
          { xOffset := 0, yOffset := 0, upper := "-", lower := "-", middle := "SW2EXIT", sector := 0 },
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
    #[{ name := "swtchn", origin := Option.some (Doom.Audio.Sfx.Origin.sector 0),
        position := { x := { raw := 2097152 }, y := { raw := 0 } } }],
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 136 },
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 99 },
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 62 }],
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
  rng := { play := 208, misc := 206 },
  weapon :=
    { weapon := { frame := 18, x := { raw := 334959 }, y := { raw := 2986545 } },
      flash := { frame := 0, tics := 0, x := { raw := 334959 }, y := { raw := 2986545 } }, attackDown := Bool.false },
  attackDown := Bool.false,
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.shotgun, tic := 145, ammoBefore := 5, ammoAfter := 4, pelletsExpected := 7,
        pelletsTraced := 7, aim := Option.some { },
        pelletAngles := #[37486592, 30932992, 4274520064, 4261937152, 4194304, 4276355072, 4279500800] },
  shots := 4, lastShot := 145, kills := 3,
  statusFace :=
    { index := 11, count := 8, priority := 7, lastAttack := 1, oldHealth := 79,
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
              powers := #v[0, 0, 0, 0, 0, 0], message := "GOTSHOTGUN" } },
      camera := { x := { raw := 18107163 }, y := { raw := 10913 }, z := { raw := 3149574 }, angle := { raw := 0 } },
      feet := Doom.Fixed.toFloat { raw := 0 }, velocityZ := Doom.Fixed.toFloat { raw := 0 },
      body :=
        { x := { raw := 18107163 }, y := { raw := 10913 }, momx := { raw := 447299 }, momy := { raw := 157 },
          ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
      view := { height := { raw := 2686976 }, z := { raw := 3149574 }, bob := { raw := 929311 } },
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
                  front := { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, blocking := Bool.true },
                { x := { raw := 20971520 }, y := { raw := -8388608 }, dx := { raw := -37748736 }, dy := { raw := 0 },
                  bbox :=
                    { top := { raw := -8388608 }, bottom := { raw := -8388608 }, left := { raw := -16777216 },
                      right := { raw := 20971520 } },
                  slope := Doom.Collision.Slope.horizontal,
                  front := { floor := { raw := 0 }, ceiling := { raw := 8388608 } }, blocking := Bool.true }],
            things :=
              #[{ x := { raw := 18107163 }, y := { raw := 10913 }, radius := { raw := 1048576 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, moveFlags := { dropoff := Bool.true },
                  momx := { raw := 447299 }, momy := { raw := 157 }, canPickup := Bool.true, health := 100,
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
              #[#[], #[], #[], #[], #[], #[], #[], #[], #[4, 3], #[], #[], #[], #[2], #[], #[0], #[], #[], #[], #[],
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
                  rng := { play := 208, misc := 205 } } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 157, y := -6 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := 208, y := -2 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := -176, y := 0 }, angle := 0, kind := 2001, flags := 0 }],
      levelTime := 206,
      frictionSample :=
        Option.some
          {
            before :=
              { x := { raw := 18107163 }, y := { raw := 10913 }, momx := { raw := 493572 }, momy := { raw := 174 },
                ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
            after :=
              { x := { raw := 18107163 }, y := { raw := 10913 }, momx := { raw := 447299 }, momy := { raw := 157 },
                ceilingz := { raw := 8388608 }, height := { raw := 3670016 }, frame := 1 },
            cmd := { buttons := 2 } } },
  inventory :=
    { health := 79, shells := 4, weapons := #[0, 1, 2],
      pickupState :=
        { health := 79, bodyHealth := 79, ammo := #v[50, 4, 0, 0],
          weapons :=
            #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          readyWeapon := 2, cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTSHOTGUN" } },
  exitRequested := Bool.true, exitSwitchSound := Bool.true, ticks := 206, useHeld := Bool.true, collected := #[4],
  message := "Exit requested — intermission is not implemented yet", messageTicks := 105 }

def arena_inputs_022 : List UInt32 := [2, 4096]

end LeanDoomProofs
