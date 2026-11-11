import LeanDoomProofs.ArenaWitness

/-! Generated checkpoint proposals. No computation here is trusted as a proof.
Each adjacent pair is checked in the corresponding ArenaSegments module. -/
namespace LeanDoomProofs
open Doom
set_option maxRecDepth 8192

def arena_state_73 : Simulation := {
  map :=
    { name := "ARENA03",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 176, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 261, y := -19 }, angle := 225, kind := 3001, flags := 7 },
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
            { kind := 3001, health := -10, flags := 5243906, height := { raw := 917504 },
              info := { spawnHealth := 60, normal := 457, extreme := 462, sound := "bgdth1", flags := 4194310 },
              state := 457, tics := 4 },
        imp :=
          Option.some
            { id := 2, frame := 455, tics := 2, angle := { raw := 2147483647 }, target := Option.some 0, reaction := 0,
              threshold := 91, justHit := Bool.true, justAttacked := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 3 },
      { thing := 2, kind := 3001, health := 20,
        imp :=
          Option.some
            { id := 3, frame := 456, tics := 1, angle := { raw := 2147483647 }, target := Option.some 0, reaction := 0,
              threshold := 100, justHit := Bool.true, justAttacked := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.pain, age := 77 },
      { thing := 3, kind := 3001, health := 45,
        imp :=
          Option.some
            { id := 4, frame := 456, tics := 1, angle := { raw := 2684354560 }, target := Option.some 0, movedir := 5,
              movecount := 1, reaction := 0, threshold := 100, justHit := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.pain, age := 74 }],
  projectiles :=
    #[{ source := 3,
        motion :=
          { x := { raw := 6750273 }, y := { raw := 1625 }, angle := { raw := 2147483647 }, z := { raw := 2097152 },
            ceilingz := { raw := 8388608 }, height := { raw := 524288 }, noGravity := Bool.true },
        frame := 101, tics := 0, exploding := Bool.true, removed := Bool.true }],
  soundTargets := #[Option.some 0], deathStats := #v[{ kills := 1 }, { }, { }, { }], rng := { play := 123, misc := 73 },
  weapon :=
    { weapon := { frame := 22, tics := 5, y := { raw := 2097152 } }, flash := { frame := 30, y := { raw := 2097152 } },
      refire := 1, extraLight := 1 },
  weaponAge := 5, refire := Bool.true, shotSlope := { raw := -2124 },
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.shotgun, tic := 71, ammoBefore := 7, ammoAfter := 6, pelletsExpected := 7,
        pelletsTraced := 7,
        aim :=
          Option.some
            { slope := { raw := -2124 },
              window :=
                Option.some
                  { portalBottom := -40960, portalTop := 40960, targetBottom := -9560, targetTop := 5311,
                    distance := { raw := 16173056 }, shootZ := { raw := 2359296 }, target := 2, targetZ := { raw := 0 },
                    targetHeight := { raw := 3670016 } } },
        pelletAngles := #[55050240, 1835008, 23068672, 12058624, 31457280, 4278714368, 15204352] },
  shots := 2, lastShot := 71, kills := 1,
  statusFace :=
    { count := 14, lastAttack := 69, oldHealth := 100,
      oldWeapons :=
        #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false] },
  player :=
    {
      inventory :=
        { shells := 6, weapons := #[0, 1, 2],
          pickupState :=
            { ammo := #v[50, 6, 0, 0],
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
                  height := { raw := 917504 }, ceiling := { raw := 8388608 }, moveFlags := { dropoff := Bool.true },
                  health := -10 },
                { kind := 3001, x := { raw := 11534336 }, y := { raw := 0 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, health := 60, shootable := Bool.true },
                { kind := 3001, x := { raw := 17142656 }, y := { raw := -1207424 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, health := 60, shootable := Bool.true },
                { kind := 2001, x := { raw := -11534336 }, y := { raw := 0 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  pickup := Option.some { sprite := 34 }, removed := Bool.true }],
            links :=
              #[#[], #[], #[], #[], #[], #[], #[], #[], #[], #[4], #[0], #[], #[2], #[3], #[], #[], #[], #[], #[], #[]],
            sectors := #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } }], sectorLinks := #[#[4, 2, 3, 0]],
            pickupPlayer :=
              Option.some
                { actor := 0,
                  state :=
                    { ammo := #v[50, 6, 0, 0],
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
                          { position := { x := 176, y := 0 }, angle := 179, kind := 3001, flags := 7 },
                          { position := { x := 261, y := -19 }, angle := 225, kind := 3001, flags := 7 },
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
                  rng := { play := 123, misc := 72 } } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 176, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 261, y := -19 }, angle := 225, kind := 3001, flags := 7 },
          { position := { x := -176, y := 0 }, angle := 0, kind := 2001, flags := 0 }],
      levelTime := 73 },
  inventory :=
    { shells := 6, weapons := #[0, 1, 2],
      pickupState :=
        { ammo := #v[50, 6, 0, 0],
          weapons :=
            #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          readyWeapon := 2, cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTSHOTGUN" } },
  ticks := 73, collected := #[4], message := "Hit - enemy health 20", messageTicks := 68 }

def arena_state_74 : Simulation := {
  map :=
    { name := "ARENA03",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 184, y := 0 }, angle := 90, kind := 3001, flags := 7 },
          { position := { x := 255, y := -25 }, angle := 225, kind := 3001, flags := 7 },
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
            { kind := 3001, health := -10, flags := 5243906, height := { raw := 917504 },
              info := { spawnHealth := 60, normal := 457, extreme := 462, sound := "bgdth1", flags := 4194310 },
              state := 457, tics := 3 },
        imp :=
          Option.some
            { id := 2, frame := 455, tics := 2, angle := { raw := 2147483647 }, target := Option.some 0, reaction := 0,
              threshold := 91, justHit := Bool.true, justAttacked := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 4 },
      { thing := 2, kind := 3001, health := 20,
        imp :=
          Option.some
            { id := 3, frame := 444, tics := 3, angle := { raw := 1073741824 }, target := Option.some 0,
              movecount := 11, reaction := 0, threshold := 99, justHit := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.chase, age := 78 },
      { thing := 3, kind := 3001, health := 45,
        imp :=
          Option.some
            { id := 4, frame := 444, tics := 3, angle := { raw := 2684354560 }, target := Option.some 0, movedir := 5,
              reaction := 0, threshold := 99, justHit := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.chase, age := 75 }],
  projectiles :=
    #[{ source := 3,
        motion :=
          { x := { raw := 6750273 }, y := { raw := 1625 }, angle := { raw := 2147483647 }, z := { raw := 2097152 },
            ceilingz := { raw := 8388608 }, height := { raw := 524288 }, noGravity := Bool.true },
        frame := 101, tics := 0, exploding := Bool.true, removed := Bool.true }],
  soundTargets := #[Option.some 0], deathStats := #v[{ kills := 1 }, { }, { }, { }], rng := { play := 126, misc := 74 },
  weapon :=
    { weapon := { frame := 22, tics := 4, y := { raw := 2097152 } },
      flash := { frame := 31, tics := 3, y := { raw := 2097152 } }, refire := 1, extraLight := 2 },
  weaponAge := 6, refire := Bool.true, shotSlope := { raw := -2124 },
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.shotgun, tic := 71, ammoBefore := 7, ammoAfter := 6, pelletsExpected := 7,
        pelletsTraced := 7,
        aim :=
          Option.some
            { slope := { raw := -2124 },
              window :=
                Option.some
                  { portalBottom := -40960, portalTop := 40960, targetBottom := -9560, targetTop := 5311,
                    distance := { raw := 16173056 }, shootZ := { raw := 2359296 }, target := 2, targetZ := { raw := 0 },
                    targetHeight := { raw := 3670016 } } },
        pelletAngles := #[55050240, 1835008, 23068672, 12058624, 31457280, 4278714368, 15204352] },
  shots := 2, lastShot := 71, kills := 1,
  statusFace :=
    { count := 13, lastAttack := 68, oldHealth := 100,
      oldWeapons :=
        #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false] },
  player :=
    {
      inventory :=
        { shells := 6, weapons := #[0, 1, 2],
          pickupState :=
            { ammo := #v[50, 6, 0, 0],
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
                  height := { raw := 917504 }, ceiling := { raw := 8388608 }, moveFlags := { dropoff := Bool.true },
                  health := -10 },
                { kind := 3001, x := { raw := 12058624 }, y := { raw := 0 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, health := 60, shootable := Bool.true },
                { kind := 3001, x := { raw := 16766656 }, y := { raw := -1583424 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, health := 60, shootable := Bool.true },
                { kind := 2001, x := { raw := -11534336 }, y := { raw := 0 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  pickup := Option.some { sprite := 34 }, removed := Bool.true }],
            links :=
              #[#[], #[], #[], #[], #[], #[], #[], #[], #[4], #[], #[0], #[], #[2], #[3], #[], #[], #[], #[], #[], #[]],
            sectors := #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } }], sectorLinks := #[#[4, 3, 2, 0]],
            pickupPlayer :=
              Option.some
                { actor := 0,
                  state :=
                    { ammo := #v[50, 6, 0, 0],
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
                          { position := { x := 184, y := 0 }, angle := 90, kind := 3001, flags := 7 },
                          { position := { x := 261, y := -19 }, angle := 225, kind := 3001, flags := 7 },
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
                  rng := { play := 125, misc := 73 } } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 184, y := 0 }, angle := 90, kind := 3001, flags := 7 },
          { position := { x := 255, y := -25 }, angle := 225, kind := 3001, flags := 7 },
          { position := { x := -176, y := 0 }, angle := 0, kind := 2001, flags := 0 }],
      levelTime := 74 },
  inventory :=
    { shells := 6, weapons := #[0, 1, 2],
      pickupState :=
        { ammo := #v[50, 6, 0, 0],
          weapons :=
            #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          readyWeapon := 2, cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTSHOTGUN" } },
  ticks := 74, collected := #[4], message := "Hit - enemy health 20", messageTicks := 67 }

def arena_state_75 : Simulation := {
  map :=
    { name := "ARENA03",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 184, y := 0 }, angle := 90, kind := 3001, flags := 7 },
          { position := { x := 255, y := -25 }, angle := 225, kind := 3001, flags := 7 },
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
            { kind := 3001, health := -10, flags := 5243906, height := { raw := 917504 },
              info := { spawnHealth := 60, normal := 457, extreme := 462, sound := "bgdth1", flags := 4194310 },
              state := 457, tics := 2 },
        imp :=
          Option.some
            { id := 2, frame := 455, tics := 2, angle := { raw := 2147483647 }, target := Option.some 0, reaction := 0,
              threshold := 91, justHit := Bool.true, justAttacked := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 5 },
      { thing := 2, kind := 3001, health := 20,
        imp :=
          Option.some
            { id := 3, frame := 444, tics := 2, angle := { raw := 1073741824 }, target := Option.some 0,
              movecount := 11, reaction := 0, threshold := 99, justHit := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.chase, age := 79 },
      { thing := 3, kind := 3001, health := 45,
        imp :=
          Option.some
            { id := 4, frame := 444, tics := 2, angle := { raw := 2684354560 }, target := Option.some 0, movedir := 5,
              reaction := 0, threshold := 99, justHit := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.chase, age := 76 }],
  projectiles :=
    #[{ source := 3,
        motion :=
          { x := { raw := 6750273 }, y := { raw := 1625 }, angle := { raw := 2147483647 }, z := { raw := 2097152 },
            ceilingz := { raw := 8388608 }, height := { raw := 524288 }, noGravity := Bool.true },
        frame := 101, tics := 0, exploding := Bool.true, removed := Bool.true }],
  soundTargets := #[Option.some 0], deathStats := #v[{ kills := 1 }, { }, { }, { }], rng := { play := 126, misc := 75 },
  weapon :=
    { weapon := { frame := 22, tics := 3, y := { raw := 2097152 } },
      flash := { frame := 31, tics := 2, y := { raw := 2097152 } }, refire := 1, extraLight := 2 },
  weaponAge := 7, refire := Bool.true, shotSlope := { raw := -2124 },
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.shotgun, tic := 71, ammoBefore := 7, ammoAfter := 6, pelletsExpected := 7,
        pelletsTraced := 7,
        aim :=
          Option.some
            { slope := { raw := -2124 },
              window :=
                Option.some
                  { portalBottom := -40960, portalTop := 40960, targetBottom := -9560, targetTop := 5311,
                    distance := { raw := 16173056 }, shootZ := { raw := 2359296 }, target := 2, targetZ := { raw := 0 },
                    targetHeight := { raw := 3670016 } } },
        pelletAngles := #[55050240, 1835008, 23068672, 12058624, 31457280, 4278714368, 15204352] },
  shots := 2, lastShot := 71, kills := 1,
  statusFace :=
    { count := 12, lastAttack := 67, oldHealth := 100,
      oldWeapons :=
        #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false] },
  player :=
    {
      inventory :=
        { shells := 6, weapons := #[0, 1, 2],
          pickupState :=
            { ammo := #v[50, 6, 0, 0],
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
                  height := { raw := 917504 }, ceiling := { raw := 8388608 }, moveFlags := { dropoff := Bool.true },
                  health := -10 },
                { kind := 3001, x := { raw := 12058624 }, y := { raw := 0 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, health := 60, shootable := Bool.true },
                { kind := 3001, x := { raw := 16766656 }, y := { raw := -1583424 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, health := 60, shootable := Bool.true },
                { kind := 2001, x := { raw := -11534336 }, y := { raw := 0 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  pickup := Option.some { sprite := 34 }, removed := Bool.true }],
            links :=
              #[#[], #[], #[], #[], #[], #[], #[], #[], #[4], #[], #[0], #[], #[2], #[3], #[], #[], #[], #[], #[], #[]],
            sectors := #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } }], sectorLinks := #[#[4, 3, 2, 0]],
            pickupPlayer :=
              Option.some
                { actor := 0,
                  state :=
                    { ammo := #v[50, 6, 0, 0],
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
                          { position := { x := 184, y := 0 }, angle := 90, kind := 3001, flags := 7 },
                          { position := { x := 255, y := -25 }, angle := 225, kind := 3001, flags := 7 },
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
                  rng := { play := 126, misc := 74 } } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 184, y := 0 }, angle := 90, kind := 3001, flags := 7 },
          { position := { x := 255, y := -25 }, angle := 225, kind := 3001, flags := 7 },
          { position := { x := -176, y := 0 }, angle := 0, kind := 2001, flags := 0 }],
      levelTime := 75 },
  inventory :=
    { shells := 6, weapons := #[0, 1, 2],
      pickupState :=
        { ammo := #v[50, 6, 0, 0],
          weapons :=
            #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          readyWeapon := 2, cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTSHOTGUN" } },
  ticks := 75, collected := #[4], message := "Hit - enemy health 20", messageTicks := 66 }

def arena_state_76 : Simulation := {
  map :=
    { name := "ARENA03",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 184, y := 0 }, angle := 90, kind := 3001, flags := 7 },
          { position := { x := 255, y := -25 }, angle := 225, kind := 3001, flags := 7 },
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
            { kind := 3001, health := -10, flags := 5243906, height := { raw := 917504 },
              info := { spawnHealth := 60, normal := 457, extreme := 462, sound := "bgdth1", flags := 4194310 },
              state := 457, tics := 1 },
        imp :=
          Option.some
            { id := 2, frame := 455, tics := 2, angle := { raw := 2147483647 }, target := Option.some 0, reaction := 0,
              threshold := 91, justHit := Bool.true, justAttacked := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 6 },
      { thing := 2, kind := 3001, health := 20,
        imp :=
          Option.some
            { id := 3, frame := 444, tics := 1, angle := { raw := 1073741824 }, target := Option.some 0,
              movecount := 11, reaction := 0, threshold := 99, justHit := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.chase, age := 80 },
      { thing := 3, kind := 3001, health := 45,
        imp :=
          Option.some
            { id := 4, frame := 444, tics := 1, angle := { raw := 2684354560 }, target := Option.some 0, movedir := 5,
              reaction := 0, threshold := 99, justHit := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.chase, age := 77 }],
  projectiles :=
    #[{ source := 3,
        motion :=
          { x := { raw := 6750273 }, y := { raw := 1625 }, angle := { raw := 2147483647 }, z := { raw := 2097152 },
            ceilingz := { raw := 8388608 }, height := { raw := 524288 }, noGravity := Bool.true },
        frame := 101, tics := 0, exploding := Bool.true, removed := Bool.true }],
  soundTargets := #[Option.some 0], deathStats := #v[{ kills := 1 }, { }, { }, { }], rng := { play := 126, misc := 76 },
  weapon :=
    { weapon := { frame := 22, tics := 2, y := { raw := 2097152 } }, flash := { frame := 31, y := { raw := 2097152 } },
      refire := 1, extraLight := 2 },
  weaponAge := 8, refire := Bool.true, shotSlope := { raw := -2124 },
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.shotgun, tic := 71, ammoBefore := 7, ammoAfter := 6, pelletsExpected := 7,
        pelletsTraced := 7,
        aim :=
          Option.some
            { slope := { raw := -2124 },
              window :=
                Option.some
                  { portalBottom := -40960, portalTop := 40960, targetBottom := -9560, targetTop := 5311,
                    distance := { raw := 16173056 }, shootZ := { raw := 2359296 }, target := 2, targetZ := { raw := 0 },
                    targetHeight := { raw := 3670016 } } },
        pelletAngles := #[55050240, 1835008, 23068672, 12058624, 31457280, 4278714368, 15204352] },
  shots := 2, lastShot := 71, kills := 1,
  statusFace :=
    { count := 11, lastAttack := 66, oldHealth := 100,
      oldWeapons :=
        #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false] },
  player :=
    {
      inventory :=
        { shells := 6, weapons := #[0, 1, 2],
          pickupState :=
            { ammo := #v[50, 6, 0, 0],
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
                  height := { raw := 917504 }, ceiling := { raw := 8388608 }, moveFlags := { dropoff := Bool.true },
                  health := -10 },
                { kind := 3001, x := { raw := 12058624 }, y := { raw := 0 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, health := 60, shootable := Bool.true },
                { kind := 3001, x := { raw := 16766656 }, y := { raw := -1583424 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, health := 60, shootable := Bool.true },
                { kind := 2001, x := { raw := -11534336 }, y := { raw := 0 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  pickup := Option.some { sprite := 34 }, removed := Bool.true }],
            links :=
              #[#[], #[], #[], #[], #[], #[], #[], #[], #[4], #[], #[0], #[], #[2], #[3], #[], #[], #[], #[], #[], #[]],
            sectors := #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } }], sectorLinks := #[#[4, 3, 2, 0]],
            pickupPlayer :=
              Option.some
                { actor := 0,
                  state :=
                    { ammo := #v[50, 6, 0, 0],
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
                          { position := { x := 184, y := 0 }, angle := 90, kind := 3001, flags := 7 },
                          { position := { x := 255, y := -25 }, angle := 225, kind := 3001, flags := 7 },
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
                  rng := { play := 126, misc := 75 } } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 184, y := 0 }, angle := 90, kind := 3001, flags := 7 },
          { position := { x := 255, y := -25 }, angle := 225, kind := 3001, flags := 7 },
          { position := { x := -176, y := 0 }, angle := 0, kind := 2001, flags := 0 }],
      levelTime := 76 },
  inventory :=
    { shells := 6, weapons := #[0, 1, 2],
      pickupState :=
        { ammo := #v[50, 6, 0, 0],
          weapons :=
            #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          readyWeapon := 2, cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTSHOTGUN" } },
  ticks := 76, collected := #[4], message := "Hit - enemy health 20", messageTicks := 65 }

def arena_state_77 : Simulation := {
  map :=
    { name := "ARENA03",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 192, y := 0 }, angle := 45, kind := 3001, flags := 7 },
          { position := { x := 255, y := -25 }, angle := 176, kind := 3001, flags := 7 },
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
    #[{ name := "bgdth1", origin := Option.some (Doom.Audio.Sfx.Origin.actor 2),
        position := { x := { raw := 6291456 }, y := { raw := 0 } } }],
  combatEnabled := Bool.true,
  actors :=
    #[{ thing := 1, kind := 3001, health := 0,
        death :=
          Option.some
            { kind := 3001, health := -10, flags := 5243906, height := { raw := 917504 },
              info := { spawnHealth := 60, normal := 457, extreme := 462, sound := "bgdth1", flags := 4194310 },
              state := 458, tics := 8 },
        imp :=
          Option.some
            { id := 2, frame := 455, tics := 2, angle := { raw := 2147483647 }, target := Option.some 0, reaction := 0,
              threshold := 91, justHit := Bool.true, justAttacked := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 7 },
      { thing := 2, kind := 3001, health := 20,
        imp :=
          Option.some
            { id := 3, frame := 445, tics := 3, angle := { raw := 536870912 }, target := Option.some 0, movecount := 10,
              reaction := 0, threshold := 98, justHit := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.chase, age := 81 },
      { thing := 3, kind := 3001, health := 45,
        imp :=
          Option.some
            { id := 4, frame := 452, tics := 8, angle := { raw := 2107144115 }, target := Option.some 0, movedir := 5,
              reaction := 0, threshold := 98, justAttacked := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.attack, age := 78 }],
  projectiles :=
    #[{ source := 3,
        motion :=
          { x := { raw := 6750273 }, y := { raw := 1625 }, angle := { raw := 2147483647 }, z := { raw := 2097152 },
            ceilingz := { raw := 8388608 }, height := { raw := 524288 }, noGravity := Bool.true },
        frame := 101, tics := 0, exploding := Bool.true, removed := Bool.true }],
  soundTargets := #[Option.some 0], deathStats := #v[{ kills := 1 }, { }, { }, { }],
  deathEvents := #[(2, Doom.Death.Event.state 458), (2, Doom.Death.Event.sound "bgdth1")],
  rng := { play := 128, misc := 77 },
  weapon :=
    { weapon := { frame := 22, y := { raw := 2097152 } }, flash := { frame := 0, tics := 0, y := { raw := 2097152 } },
      refire := 1 },
  weaponAge := 9, refire := Bool.true, shotSlope := { raw := -2124 },
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.shotgun, tic := 71, ammoBefore := 7, ammoAfter := 6, pelletsExpected := 7,
        pelletsTraced := 7,
        aim :=
          Option.some
            { slope := { raw := -2124 },
              window :=
                Option.some
                  { portalBottom := -40960, portalTop := 40960, targetBottom := -9560, targetTop := 5311,
                    distance := { raw := 16173056 }, shootZ := { raw := 2359296 }, target := 2, targetZ := { raw := 0 },
                    targetHeight := { raw := 3670016 } } },
        pelletAngles := #[55050240, 1835008, 23068672, 12058624, 31457280, 4278714368, 15204352] },
  shots := 2, lastShot := 71, kills := 1,
  statusFace :=
    { count := 10, lastAttack := 65, oldHealth := 100,
      oldWeapons :=
        #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false] },
  player :=
    {
      inventory :=
        { shells := 6, weapons := #[0, 1, 2],
          pickupState :=
            { ammo := #v[50, 6, 0, 0],
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
                  height := { raw := 917504 }, ceiling := { raw := 8388608 }, moveFlags := { dropoff := Bool.true },
                  health := -10 },
                { kind := 3001, x := { raw := 12582912 }, y := { raw := 0 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, health := 60, shootable := Bool.true },
                { kind := 3001, x := { raw := 16766656 }, y := { raw := -1583424 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, health := 60, shootable := Bool.true },
                { kind := 2001, x := { raw := -11534336 }, y := { raw := 0 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  pickup := Option.some { sprite := 34 }, removed := Bool.true }],
            links :=
              #[#[], #[], #[], #[], #[], #[], #[], #[], #[4], #[], #[0], #[], #[2], #[3], #[], #[], #[], #[], #[], #[]],
            sectors := #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } }], sectorLinks := #[#[3, 4, 2, 0]],
            pickupPlayer :=
              Option.some
                { actor := 0,
                  state :=
                    { ammo := #v[50, 6, 0, 0],
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
                          { position := { x := 184, y := 0 }, angle := 90, kind := 3001, flags := 7 },
                          { position := { x := 255, y := -25 }, angle := 225, kind := 3001, flags := 7 },
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
                  rng := { play := 127, misc := 76 } } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 192, y := 0 }, angle := 45, kind := 3001, flags := 7 },
          { position := { x := 255, y := -25 }, angle := 176, kind := 3001, flags := 7 },
          { position := { x := -176, y := 0 }, angle := 0, kind := 2001, flags := 0 }],
      levelTime := 77 },
  inventory :=
    { shells := 6, weapons := #[0, 1, 2],
      pickupState :=
        { ammo := #v[50, 6, 0, 0],
          weapons :=
            #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          readyWeapon := 2, cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTSHOTGUN" } },
  ticks := 77, collected := #[4], message := "Hit - enemy health 20", messageTicks := 64 }

def arena_state_78 : Simulation := {
  map :=
    { name := "ARENA03",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 192, y := 0 }, angle := 45, kind := 3001, flags := 7 },
          { position := { x := 255, y := -25 }, angle := 176, kind := 3001, flags := 7 },
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
            { kind := 3001, health := -10, flags := 5243906, height := { raw := 917504 },
              info := { spawnHealth := 60, normal := 457, extreme := 462, sound := "bgdth1", flags := 4194310 },
              state := 458, tics := 7 },
        imp :=
          Option.some
            { id := 2, frame := 455, tics := 2, angle := { raw := 2147483647 }, target := Option.some 0, reaction := 0,
              threshold := 91, justHit := Bool.true, justAttacked := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 8 },
      { thing := 2, kind := 3001, health := 20,
        imp :=
          Option.some
            { id := 3, frame := 445, tics := 2, angle := { raw := 536870912 }, target := Option.some 0, movecount := 10,
              reaction := 0, threshold := 98, justHit := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.chase, age := 82 },
      { thing := 3, kind := 3001, health := 45,
        imp :=
          Option.some
            { id := 4, frame := 452, tics := 7, angle := { raw := 2107144115 }, target := Option.some 0, movedir := 5,
              reaction := 0, threshold := 98, justAttacked := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.attack, age := 79 }],
  projectiles :=
    #[{ source := 3,
        motion :=
          { x := { raw := 6750273 }, y := { raw := 1625 }, angle := { raw := 2147483647 }, z := { raw := 2097152 },
            ceilingz := { raw := 8388608 }, height := { raw := 524288 }, noGravity := Bool.true },
        frame := 101, tics := 0, exploding := Bool.true, removed := Bool.true }],
  soundTargets := #[Option.some 0], deathStats := #v[{ kills := 1 }, { }, { }, { }], rng := { play := 128, misc := 78 },
  weapon :=
    { weapon := { frame := 23, tics := 5, y := { raw := 2097152 } },
      flash := { frame := 0, tics := 0, y := { raw := 2097152 } }, refire := 1 },
  weaponAge := 10, refire := Bool.true, shotSlope := { raw := -2124 },
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.shotgun, tic := 71, ammoBefore := 7, ammoAfter := 6, pelletsExpected := 7,
        pelletsTraced := 7,
        aim :=
          Option.some
            { slope := { raw := -2124 },
              window :=
                Option.some
                  { portalBottom := -40960, portalTop := 40960, targetBottom := -9560, targetTop := 5311,
                    distance := { raw := 16173056 }, shootZ := { raw := 2359296 }, target := 2, targetZ := { raw := 0 },
                    targetHeight := { raw := 3670016 } } },
        pelletAngles := #[55050240, 1835008, 23068672, 12058624, 31457280, 4278714368, 15204352] },
  shots := 2, lastShot := 71, kills := 1,
  statusFace :=
    { count := 9, lastAttack := 64, oldHealth := 100,
      oldWeapons :=
        #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false] },
  player :=
    {
      inventory :=
        { shells := 6, weapons := #[0, 1, 2],
          pickupState :=
            { ammo := #v[50, 6, 0, 0],
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
                  height := { raw := 917504 }, ceiling := { raw := 8388608 }, moveFlags := { dropoff := Bool.true },
                  health := -10 },
                { kind := 3001, x := { raw := 12582912 }, y := { raw := 0 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, health := 60, shootable := Bool.true },
                { kind := 3001, x := { raw := 16766656 }, y := { raw := -1583424 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, health := 60, shootable := Bool.true },
                { kind := 2001, x := { raw := -11534336 }, y := { raw := 0 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  pickup := Option.some { sprite := 34 }, removed := Bool.true }],
            links :=
              #[#[], #[], #[], #[], #[], #[], #[], #[], #[4], #[], #[0], #[], #[2], #[3], #[], #[], #[], #[], #[], #[]],
            sectors := #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } }], sectorLinks := #[#[3, 4, 2, 0]],
            pickupPlayer :=
              Option.some
                { actor := 0,
                  state :=
                    { ammo := #v[50, 6, 0, 0],
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
                          { position := { x := 192, y := 0 }, angle := 45, kind := 3001, flags := 7 },
                          { position := { x := 255, y := -25 }, angle := 176, kind := 3001, flags := 7 },
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
                  rng := { play := 128, misc := 77 } } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 192, y := 0 }, angle := 45, kind := 3001, flags := 7 },
          { position := { x := 255, y := -25 }, angle := 176, kind := 3001, flags := 7 },
          { position := { x := -176, y := 0 }, angle := 0, kind := 2001, flags := 0 }],
      levelTime := 78 },
  inventory :=
    { shells := 6, weapons := #[0, 1, 2],
      pickupState :=
        { ammo := #v[50, 6, 0, 0],
          weapons :=
            #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          readyWeapon := 2, cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTSHOTGUN" } },
  ticks := 78, collected := #[4], message := "Hit - enemy health 20", messageTicks := 63 }

def arena_state_79 : Simulation := {
  map :=
    { name := "ARENA03",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 192, y := 0 }, angle := 45, kind := 3001, flags := 7 },
          { position := { x := 255, y := -25 }, angle := 176, kind := 3001, flags := 7 },
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
            { kind := 3001, health := -10, flags := 5243906, height := { raw := 917504 },
              info := { spawnHealth := 60, normal := 457, extreme := 462, sound := "bgdth1", flags := 4194310 },
              state := 458, tics := 6 },
        imp :=
          Option.some
            { id := 2, frame := 455, tics := 2, angle := { raw := 2147483647 }, target := Option.some 0, reaction := 0,
              threshold := 91, justHit := Bool.true, justAttacked := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 9 },
      { thing := 2, kind := 3001, health := 20,
        imp :=
          Option.some
            { id := 3, frame := 445, tics := 1, angle := { raw := 536870912 }, target := Option.some 0, movecount := 10,
              reaction := 0, threshold := 98, justHit := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.chase, age := 83 },
      { thing := 3, kind := 3001, health := 45,
        imp :=
          Option.some
            { id := 4, frame := 452, tics := 6, angle := { raw := 2107144115 }, target := Option.some 0, movedir := 5,
              reaction := 0, threshold := 98, justAttacked := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.attack, age := 80 }],
  projectiles :=
    #[{ source := 3,
        motion :=
          { x := { raw := 6750273 }, y := { raw := 1625 }, angle := { raw := 2147483647 }, z := { raw := 2097152 },
            ceilingz := { raw := 8388608 }, height := { raw := 524288 }, noGravity := Bool.true },
        frame := 101, tics := 0, exploding := Bool.true, removed := Bool.true }],
  soundTargets := #[Option.some 0], deathStats := #v[{ kills := 1 }, { }, { }, { }], rng := { play := 128, misc := 79 },
  weapon :=
    { weapon := { frame := 23, tics := 4, y := { raw := 2097152 } },
      flash := { frame := 0, tics := 0, y := { raw := 2097152 } }, refire := 1 },
  weaponAge := 11, refire := Bool.true, shotSlope := { raw := -2124 },
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.shotgun, tic := 71, ammoBefore := 7, ammoAfter := 6, pelletsExpected := 7,
        pelletsTraced := 7,
        aim :=
          Option.some
            { slope := { raw := -2124 },
              window :=
                Option.some
                  { portalBottom := -40960, portalTop := 40960, targetBottom := -9560, targetTop := 5311,
                    distance := { raw := 16173056 }, shootZ := { raw := 2359296 }, target := 2, targetZ := { raw := 0 },
                    targetHeight := { raw := 3670016 } } },
        pelletAngles := #[55050240, 1835008, 23068672, 12058624, 31457280, 4278714368, 15204352] },
  shots := 2, lastShot := 71, kills := 1,
  statusFace :=
    { count := 8, lastAttack := 63, oldHealth := 100,
      oldWeapons :=
        #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false] },
  player :=
    {
      inventory :=
        { shells := 6, weapons := #[0, 1, 2],
          pickupState :=
            { ammo := #v[50, 6, 0, 0],
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
                  height := { raw := 917504 }, ceiling := { raw := 8388608 }, moveFlags := { dropoff := Bool.true },
                  health := -10 },
                { kind := 3001, x := { raw := 12582912 }, y := { raw := 0 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, health := 60, shootable := Bool.true },
                { kind := 3001, x := { raw := 16766656 }, y := { raw := -1583424 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, health := 60, shootable := Bool.true },
                { kind := 2001, x := { raw := -11534336 }, y := { raw := 0 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  pickup := Option.some { sprite := 34 }, removed := Bool.true }],
            links :=
              #[#[], #[], #[], #[], #[], #[], #[], #[], #[4], #[], #[0], #[], #[2], #[3], #[], #[], #[], #[], #[], #[]],
            sectors := #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } }], sectorLinks := #[#[3, 4, 2, 0]],
            pickupPlayer :=
              Option.some
                { actor := 0,
                  state :=
                    { ammo := #v[50, 6, 0, 0],
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
                          { position := { x := 192, y := 0 }, angle := 45, kind := 3001, flags := 7 },
                          { position := { x := 255, y := -25 }, angle := 176, kind := 3001, flags := 7 },
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
                  rng := { play := 128, misc := 78 } } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 192, y := 0 }, angle := 45, kind := 3001, flags := 7 },
          { position := { x := 255, y := -25 }, angle := 176, kind := 3001, flags := 7 },
          { position := { x := -176, y := 0 }, angle := 0, kind := 2001, flags := 0 }],
      levelTime := 79 },
  inventory :=
    { shells := 6, weapons := #[0, 1, 2],
      pickupState :=
        { ammo := #v[50, 6, 0, 0],
          weapons :=
            #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          readyWeapon := 2, cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTSHOTGUN" } },
  ticks := 79, collected := #[4], message := "Hit - enemy health 20", messageTicks := 62 }

def arena_state_80 : Simulation := {
  map :=
    { name := "ARENA03",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 200, y := 0 }, angle := 0, kind := 3001, flags := 7 },
          { position := { x := 255, y := -25 }, angle := 176, kind := 3001, flags := 7 },
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
            { kind := 3001, health := -10, flags := 5243906, height := { raw := 917504 },
              info := { spawnHealth := 60, normal := 457, extreme := 462, sound := "bgdth1", flags := 4194310 },
              state := 458, tics := 5 },
        imp :=
          Option.some
            { id := 2, frame := 455, tics := 2, angle := { raw := 2147483647 }, target := Option.some 0, reaction := 0,
              threshold := 91, justHit := Bool.true, justAttacked := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 10 },
      { thing := 2, kind := 3001, health := 20,
        imp :=
          Option.some
            { id := 3, frame := 446, tics := 3, target := Option.some 0, movecount := 9, reaction := 0, threshold := 97,
              justHit := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.chase, age := 84 },
      { thing := 3, kind := 3001, health := 45,
        imp :=
          Option.some
            { id := 4, frame := 452, tics := 5, angle := { raw := 2107144115 }, target := Option.some 0, movedir := 5,
              reaction := 0, threshold := 98, justAttacked := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.attack, age := 81 }],
  projectiles :=
    #[{ source := 3,
        motion :=
          { x := { raw := 6750273 }, y := { raw := 1625 }, angle := { raw := 2147483647 }, z := { raw := 2097152 },
            ceilingz := { raw := 8388608 }, height := { raw := 524288 }, noGravity := Bool.true },
        frame := 101, tics := 0, exploding := Bool.true, removed := Bool.true }],
  soundTargets := #[Option.some 0], deathStats := #v[{ kills := 1 }, { }, { }, { }], rng := { play := 129, misc := 80 },
  weapon :=
    { weapon := { frame := 23, tics := 3, y := { raw := 2097152 } },
      flash := { frame := 0, tics := 0, y := { raw := 2097152 } }, refire := 1 },
  weaponAge := 12, refire := Bool.true, shotSlope := { raw := -2124 },
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.shotgun, tic := 71, ammoBefore := 7, ammoAfter := 6, pelletsExpected := 7,
        pelletsTraced := 7,
        aim :=
          Option.some
            { slope := { raw := -2124 },
              window :=
                Option.some
                  { portalBottom := -40960, portalTop := 40960, targetBottom := -9560, targetTop := 5311,
                    distance := { raw := 16173056 }, shootZ := { raw := 2359296 }, target := 2, targetZ := { raw := 0 },
                    targetHeight := { raw := 3670016 } } },
        pelletAngles := #[55050240, 1835008, 23068672, 12058624, 31457280, 4278714368, 15204352] },
  shots := 2, lastShot := 71, kills := 1,
  statusFace :=
    { count := 7, lastAttack := 62, oldHealth := 100,
      oldWeapons :=
        #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false] },
  player :=
    {
      inventory :=
        { shells := 6, weapons := #[0, 1, 2],
          pickupState :=
            { ammo := #v[50, 6, 0, 0],
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
                  height := { raw := 917504 }, ceiling := { raw := 8388608 }, moveFlags := { dropoff := Bool.true },
                  health := -10 },
                { kind := 3001, x := { raw := 13107200 }, y := { raw := 0 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, health := 60, shootable := Bool.true },
                { kind := 3001, x := { raw := 16766656 }, y := { raw := -1583424 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, health := 60, shootable := Bool.true },
                { kind := 2001, x := { raw := -11534336 }, y := { raw := 0 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  pickup := Option.some { sprite := 34 }, removed := Bool.true }],
            links :=
              #[#[], #[], #[], #[], #[], #[], #[], #[], #[4], #[], #[0], #[], #[2], #[3], #[], #[], #[], #[], #[], #[]],
            sectors := #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } }], sectorLinks := #[#[3, 4, 2, 0]],
            pickupPlayer :=
              Option.some
                { actor := 0,
                  state :=
                    { ammo := #v[50, 6, 0, 0],
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
                          { position := { x := 192, y := 0 }, angle := 45, kind := 3001, flags := 7 },
                          { position := { x := 255, y := -25 }, angle := 176, kind := 3001, flags := 7 },
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
                  rng := { play := 128, misc := 79 } } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 200, y := 0 }, angle := 0, kind := 3001, flags := 7 },
          { position := { x := 255, y := -25 }, angle := 176, kind := 3001, flags := 7 },
          { position := { x := -176, y := 0 }, angle := 0, kind := 2001, flags := 0 }],
      levelTime := 80 },
  inventory :=
    { shells := 6, weapons := #[0, 1, 2],
      pickupState :=
        { ammo := #v[50, 6, 0, 0],
          weapons :=
            #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          readyWeapon := 2, cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTSHOTGUN" } },
  ticks := 80, collected := #[4], message := "Hit - enemy health 20", messageTicks := 61 }

def arena_state_81 : Simulation := {
  map :=
    { name := "ARENA03",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 200, y := 0 }, angle := 0, kind := 3001, flags := 7 },
          { position := { x := 255, y := -25 }, angle := 176, kind := 3001, flags := 7 },
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
            { kind := 3001, health := -10, flags := 5243906, height := { raw := 917504 },
              info := { spawnHealth := 60, normal := 457, extreme := 462, sound := "bgdth1", flags := 4194310 },
              state := 458, tics := 4 },
        imp :=
          Option.some
            { id := 2, frame := 455, tics := 2, angle := { raw := 2147483647 }, target := Option.some 0, reaction := 0,
              threshold := 91, justHit := Bool.true, justAttacked := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 11 },
      { thing := 2, kind := 3001, health := 20,
        imp :=
          Option.some
            { id := 3, frame := 446, tics := 2, target := Option.some 0, movecount := 9, reaction := 0, threshold := 97,
              justHit := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.chase, age := 85 },
      { thing := 3, kind := 3001, health := 45,
        imp :=
          Option.some
            { id := 4, frame := 452, tics := 4, angle := { raw := 2107144115 }, target := Option.some 0, movedir := 5,
              reaction := 0, threshold := 98, justAttacked := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.attack, age := 82 }],
  projectiles :=
    #[{ source := 3,
        motion :=
          { x := { raw := 6750273 }, y := { raw := 1625 }, angle := { raw := 2147483647 }, z := { raw := 2097152 },
            ceilingz := { raw := 8388608 }, height := { raw := 524288 }, noGravity := Bool.true },
        frame := 101, tics := 0, exploding := Bool.true, removed := Bool.true }],
  soundTargets := #[Option.some 0], deathStats := #v[{ kills := 1 }, { }, { }, { }], rng := { play := 129, misc := 81 },
  weapon :=
    { weapon := { frame := 23, tics := 2, y := { raw := 2097152 } },
      flash := { frame := 0, tics := 0, y := { raw := 2097152 } }, refire := 1 },
  weaponAge := 13, refire := Bool.true, shotSlope := { raw := -2124 },
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.shotgun, tic := 71, ammoBefore := 7, ammoAfter := 6, pelletsExpected := 7,
        pelletsTraced := 7,
        aim :=
          Option.some
            { slope := { raw := -2124 },
              window :=
                Option.some
                  { portalBottom := -40960, portalTop := 40960, targetBottom := -9560, targetTop := 5311,
                    distance := { raw := 16173056 }, shootZ := { raw := 2359296 }, target := 2, targetZ := { raw := 0 },
                    targetHeight := { raw := 3670016 } } },
        pelletAngles := #[55050240, 1835008, 23068672, 12058624, 31457280, 4278714368, 15204352] },
  shots := 2, lastShot := 71, kills := 1,
  statusFace :=
    { count := 6, lastAttack := 61, oldHealth := 100,
      oldWeapons :=
        #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false] },
  player :=
    {
      inventory :=
        { shells := 6, weapons := #[0, 1, 2],
          pickupState :=
            { ammo := #v[50, 6, 0, 0],
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
                  height := { raw := 917504 }, ceiling := { raw := 8388608 }, moveFlags := { dropoff := Bool.true },
                  health := -10 },
                { kind := 3001, x := { raw := 13107200 }, y := { raw := 0 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, health := 60, shootable := Bool.true },
                { kind := 3001, x := { raw := 16766656 }, y := { raw := -1583424 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, health := 60, shootable := Bool.true },
                { kind := 2001, x := { raw := -11534336 }, y := { raw := 0 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  pickup := Option.some { sprite := 34 }, removed := Bool.true }],
            links :=
              #[#[], #[], #[], #[], #[], #[], #[], #[], #[4], #[], #[0], #[], #[2], #[3], #[], #[], #[], #[], #[], #[]],
            sectors := #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } }], sectorLinks := #[#[3, 4, 2, 0]],
            pickupPlayer :=
              Option.some
                { actor := 0,
                  state :=
                    { ammo := #v[50, 6, 0, 0],
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
                          { position := { x := 200, y := 0 }, angle := 0, kind := 3001, flags := 7 },
                          { position := { x := 255, y := -25 }, angle := 176, kind := 3001, flags := 7 },
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
                  rng := { play := 129, misc := 80 } } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 200, y := 0 }, angle := 0, kind := 3001, flags := 7 },
          { position := { x := 255, y := -25 }, angle := 176, kind := 3001, flags := 7 },
          { position := { x := -176, y := 0 }, angle := 0, kind := 2001, flags := 0 }],
      levelTime := 81 },
  inventory :=
    { shells := 6, weapons := #[0, 1, 2],
      pickupState :=
        { ammo := #v[50, 6, 0, 0],
          weapons :=
            #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          readyWeapon := 2, cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTSHOTGUN" } },
  ticks := 81, collected := #[4], message := "Hit - enemy health 20", messageTicks := 60 }

def arena_state_82 : Simulation := {
  map :=
    { name := "ARENA03",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 200, y := 0 }, angle := 0, kind := 3001, flags := 7 },
          { position := { x := 255, y := -25 }, angle := 176, kind := 3001, flags := 7 },
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
            { kind := 3001, health := -10, flags := 5243906, height := { raw := 917504 },
              info := { spawnHealth := 60, normal := 457, extreme := 462, sound := "bgdth1", flags := 4194310 },
              state := 458, tics := 3 },
        imp :=
          Option.some
            { id := 2, frame := 455, tics := 2, angle := { raw := 2147483647 }, target := Option.some 0, reaction := 0,
              threshold := 91, justHit := Bool.true, justAttacked := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 12 },
      { thing := 2, kind := 3001, health := 20,
        imp :=
          Option.some
            { id := 3, frame := 446, tics := 1, target := Option.some 0, movecount := 9, reaction := 0, threshold := 97,
              justHit := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.chase, age := 86 },
      { thing := 3, kind := 3001, health := 45,
        imp :=
          Option.some
            { id := 4, frame := 452, tics := 3, angle := { raw := 2107144115 }, target := Option.some 0, movedir := 5,
              reaction := 0, threshold := 98, justAttacked := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.attack, age := 83 }],
  projectiles :=
    #[{ source := 3,
        motion :=
          { x := { raw := 6750273 }, y := { raw := 1625 }, angle := { raw := 2147483647 }, z := { raw := 2097152 },
            ceilingz := { raw := 8388608 }, height := { raw := 524288 }, noGravity := Bool.true },
        frame := 101, tics := 0, exploding := Bool.true, removed := Bool.true }],
  soundTargets := #[Option.some 0], deathStats := #v[{ kills := 1 }, { }, { }, { }], rng := { play := 129, misc := 82 },
  weapon :=
    { weapon := { frame := 23, y := { raw := 2097152 } }, flash := { frame := 0, tics := 0, y := { raw := 2097152 } },
      refire := 1 },
  weaponAge := 14, refire := Bool.true, shotSlope := { raw := -2124 },
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.shotgun, tic := 71, ammoBefore := 7, ammoAfter := 6, pelletsExpected := 7,
        pelletsTraced := 7,
        aim :=
          Option.some
            { slope := { raw := -2124 },
              window :=
                Option.some
                  { portalBottom := -40960, portalTop := 40960, targetBottom := -9560, targetTop := 5311,
                    distance := { raw := 16173056 }, shootZ := { raw := 2359296 }, target := 2, targetZ := { raw := 0 },
                    targetHeight := { raw := 3670016 } } },
        pelletAngles := #[55050240, 1835008, 23068672, 12058624, 31457280, 4278714368, 15204352] },
  shots := 2, lastShot := 71, kills := 1,
  statusFace :=
    { count := 5, lastAttack := 60, oldHealth := 100,
      oldWeapons :=
        #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false] },
  player :=
    {
      inventory :=
        { shells := 6, weapons := #[0, 1, 2],
          pickupState :=
            { ammo := #v[50, 6, 0, 0],
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
                  height := { raw := 917504 }, ceiling := { raw := 8388608 }, moveFlags := { dropoff := Bool.true },
                  health := -10 },
                { kind := 3001, x := { raw := 13107200 }, y := { raw := 0 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, health := 60, shootable := Bool.true },
                { kind := 3001, x := { raw := 16766656 }, y := { raw := -1583424 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, health := 60, shootable := Bool.true },
                { kind := 2001, x := { raw := -11534336 }, y := { raw := 0 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  pickup := Option.some { sprite := 34 }, removed := Bool.true }],
            links :=
              #[#[], #[], #[], #[], #[], #[], #[], #[], #[4], #[], #[0], #[], #[2], #[3], #[], #[], #[], #[], #[], #[]],
            sectors := #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } }], sectorLinks := #[#[3, 4, 2, 0]],
            pickupPlayer :=
              Option.some
                { actor := 0,
                  state :=
                    { ammo := #v[50, 6, 0, 0],
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
                          { position := { x := 200, y := 0 }, angle := 0, kind := 3001, flags := 7 },
                          { position := { x := 255, y := -25 }, angle := 176, kind := 3001, flags := 7 },
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
                  rng := { play := 129, misc := 81 } } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 200, y := 0 }, angle := 0, kind := 3001, flags := 7 },
          { position := { x := 255, y := -25 }, angle := 176, kind := 3001, flags := 7 },
          { position := { x := -176, y := 0 }, angle := 0, kind := 2001, flags := 0 }],
      levelTime := 82 },
  inventory :=
    { shells := 6, weapons := #[0, 1, 2],
      pickupState :=
        { ammo := #v[50, 6, 0, 0],
          weapons :=
            #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          readyWeapon := 2, cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTSHOTGUN" } },
  ticks := 82, collected := #[4], message := "Hit - enemy health 20", messageTicks := 59 }

def arena_state_83 : Simulation := {
  map :=
    { name := "ARENA03",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 208, y := 0 }, angle := 0, kind := 3001, flags := 7 },
          { position := { x := 255, y := -25 }, angle := 176, kind := 3001, flags := 7 },
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
            { kind := 3001, health := -10, flags := 5243906, height := { raw := 917504 },
              info := { spawnHealth := 60, normal := 457, extreme := 462, sound := "bgdth1", flags := 4194310 },
              state := 458, tics := 2 },
        imp :=
          Option.some
            { id := 2, frame := 455, tics := 2, angle := { raw := 2147483647 }, target := Option.some 0, reaction := 0,
              threshold := 91, justHit := Bool.true, justAttacked := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 13 },
      { thing := 2, kind := 3001, health := 20,
        imp :=
          Option.some
            { id := 3, frame := 447, tics := 3, target := Option.some 0, movecount := 8, reaction := 0, threshold := 96,
              justHit := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.chase, age := 87 },
      { thing := 3, kind := 3001, health := 45,
        imp :=
          Option.some
            { id := 4, frame := 452, tics := 2, angle := { raw := 2107144115 }, target := Option.some 0, movedir := 5,
              reaction := 0, threshold := 98, justAttacked := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.attack, age := 84 }],
  projectiles :=
    #[{ source := 3,
        motion :=
          { x := { raw := 6750273 }, y := { raw := 1625 }, angle := { raw := 2147483647 }, z := { raw := 2097152 },
            ceilingz := { raw := 8388608 }, height := { raw := 524288 }, noGravity := Bool.true },
        frame := 101, tics := 0, exploding := Bool.true, removed := Bool.true }],
  soundTargets := #[Option.some 0], deathStats := #v[{ kills := 1 }, { }, { }, { }], rng := { play := 130, misc := 83 },
  weapon :=
    { weapon := { frame := 24, tics := 5, y := { raw := 2097152 } },
      flash := { frame := 0, tics := 0, y := { raw := 2097152 } }, refire := 1 },
  weaponAge := 15, refire := Bool.true, shotSlope := { raw := -2124 },
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.shotgun, tic := 71, ammoBefore := 7, ammoAfter := 6, pelletsExpected := 7,
        pelletsTraced := 7,
        aim :=
          Option.some
            { slope := { raw := -2124 },
              window :=
                Option.some
                  { portalBottom := -40960, portalTop := 40960, targetBottom := -9560, targetTop := 5311,
                    distance := { raw := 16173056 }, shootZ := { raw := 2359296 }, target := 2, targetZ := { raw := 0 },
                    targetHeight := { raw := 3670016 } } },
        pelletAngles := #[55050240, 1835008, 23068672, 12058624, 31457280, 4278714368, 15204352] },
  shots := 2, lastShot := 71, kills := 1,
  statusFace :=
    { count := 4, lastAttack := 59, oldHealth := 100,
      oldWeapons :=
        #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false] },
  player :=
    {
      inventory :=
        { shells := 6, weapons := #[0, 1, 2],
          pickupState :=
            { ammo := #v[50, 6, 0, 0],
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
                  height := { raw := 917504 }, ceiling := { raw := 8388608 }, moveFlags := { dropoff := Bool.true },
                  health := -10 },
                { kind := 3001, x := { raw := 13631488 }, y := { raw := 0 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, health := 60, shootable := Bool.true },
                { kind := 3001, x := { raw := 16766656 }, y := { raw := -1583424 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, health := 60, shootable := Bool.true },
                { kind := 2001, x := { raw := -11534336 }, y := { raw := 0 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  pickup := Option.some { sprite := 34 }, removed := Bool.true }],
            links :=
              #[#[], #[], #[], #[], #[], #[], #[], #[], #[4], #[], #[0], #[], #[2], #[3], #[], #[], #[], #[], #[], #[]],
            sectors := #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } }], sectorLinks := #[#[3, 4, 2, 0]],
            pickupPlayer :=
              Option.some
                { actor := 0,
                  state :=
                    { ammo := #v[50, 6, 0, 0],
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
                          { position := { x := 200, y := 0 }, angle := 0, kind := 3001, flags := 7 },
                          { position := { x := 255, y := -25 }, angle := 176, kind := 3001, flags := 7 },
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
                  rng := { play := 129, misc := 82 } } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 208, y := 0 }, angle := 0, kind := 3001, flags := 7 },
          { position := { x := 255, y := -25 }, angle := 176, kind := 3001, flags := 7 },
          { position := { x := -176, y := 0 }, angle := 0, kind := 2001, flags := 0 }],
      levelTime := 83 },
  inventory :=
    { shells := 6, weapons := #[0, 1, 2],
      pickupState :=
        { ammo := #v[50, 6, 0, 0],
          weapons :=
            #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          readyWeapon := 2, cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTSHOTGUN" } },
  ticks := 83, collected := #[4], message := "Hit - enemy health 20", messageTicks := 58 }

def arena_state_84 : Simulation := {
  map :=
    { name := "ARENA03",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 208, y := 0 }, angle := 0, kind := 3001, flags := 7 },
          { position := { x := 255, y := -25 }, angle := 176, kind := 3001, flags := 7 },
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
            { kind := 3001, health := -10, flags := 5243906, height := { raw := 917504 },
              info := { spawnHealth := 60, normal := 457, extreme := 462, sound := "bgdth1", flags := 4194310 },
              state := 458, tics := 1 },
        imp :=
          Option.some
            { id := 2, frame := 455, tics := 2, angle := { raw := 2147483647 }, target := Option.some 0, reaction := 0,
              threshold := 91, justHit := Bool.true, justAttacked := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 14 },
      { thing := 2, kind := 3001, health := 20,
        imp :=
          Option.some
            { id := 3, frame := 447, tics := 2, target := Option.some 0, movecount := 8, reaction := 0, threshold := 96,
              justHit := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.chase, age := 88 },
      { thing := 3, kind := 3001, health := 45,
        imp :=
          Option.some
            { id := 4, frame := 452, tics := 1, angle := { raw := 2107144115 }, target := Option.some 0, movedir := 5,
              reaction := 0, threshold := 98, justAttacked := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.attack, age := 85 }],
  projectiles :=
    #[{ source := 3,
        motion :=
          { x := { raw := 6750273 }, y := { raw := 1625 }, angle := { raw := 2147483647 }, z := { raw := 2097152 },
            ceilingz := { raw := 8388608 }, height := { raw := 524288 }, noGravity := Bool.true },
        frame := 101, tics := 0, exploding := Bool.true, removed := Bool.true }],
  soundTargets := #[Option.some 0], deathStats := #v[{ kills := 1 }, { }, { }, { }], rng := { play := 130, misc := 84 },
  weapon :=
    { weapon := { frame := 24, tics := 4, y := { raw := 2097152 } },
      flash := { frame := 0, tics := 0, y := { raw := 2097152 } }, refire := 1 },
  weaponAge := 16, refire := Bool.true, shotSlope := { raw := -2124 },
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.shotgun, tic := 71, ammoBefore := 7, ammoAfter := 6, pelletsExpected := 7,
        pelletsTraced := 7,
        aim :=
          Option.some
            { slope := { raw := -2124 },
              window :=
                Option.some
                  { portalBottom := -40960, portalTop := 40960, targetBottom := -9560, targetTop := 5311,
                    distance := { raw := 16173056 }, shootZ := { raw := 2359296 }, target := 2, targetZ := { raw := 0 },
                    targetHeight := { raw := 3670016 } } },
        pelletAngles := #[55050240, 1835008, 23068672, 12058624, 31457280, 4278714368, 15204352] },
  shots := 2, lastShot := 71, kills := 1,
  statusFace :=
    { count := 3, lastAttack := 58, oldHealth := 100,
      oldWeapons :=
        #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false] },
  player :=
    {
      inventory :=
        { shells := 6, weapons := #[0, 1, 2],
          pickupState :=
            { ammo := #v[50, 6, 0, 0],
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
                  height := { raw := 917504 }, ceiling := { raw := 8388608 }, moveFlags := { dropoff := Bool.true },
                  health := -10 },
                { kind := 3001, x := { raw := 13631488 }, y := { raw := 0 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, health := 60, shootable := Bool.true },
                { kind := 3001, x := { raw := 16766656 }, y := { raw := -1583424 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, health := 60, shootable := Bool.true },
                { kind := 2001, x := { raw := -11534336 }, y := { raw := 0 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  pickup := Option.some { sprite := 34 }, removed := Bool.true }],
            links :=
              #[#[], #[], #[], #[], #[], #[], #[], #[], #[4], #[], #[0], #[], #[2], #[3], #[], #[], #[], #[], #[], #[]],
            sectors := #[{ floor := { raw := 0 }, ceiling := { raw := 8388608 } }], sectorLinks := #[#[3, 4, 2, 0]],
            pickupPlayer :=
              Option.some
                { actor := 0,
                  state :=
                    { ammo := #v[50, 6, 0, 0],
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
                          { position := { x := 208, y := 0 }, angle := 0, kind := 3001, flags := 7 },
                          { position := { x := 255, y := -25 }, angle := 176, kind := 3001, flags := 7 },
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
                  rng := { play := 130, misc := 83 } } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 208, y := 0 }, angle := 0, kind := 3001, flags := 7 },
          { position := { x := 255, y := -25 }, angle := 176, kind := 3001, flags := 7 },
          { position := { x := -176, y := 0 }, angle := 0, kind := 2001, flags := 0 }],
      levelTime := 84 },
  inventory :=
    { shells := 6, weapons := #[0, 1, 2],
      pickupState :=
        { ammo := #v[50, 6, 0, 0],
          weapons :=
            #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          readyWeapon := 2, cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTSHOTGUN" } },
  ticks := 84, collected := #[4], message := "Hit - enemy health 20", messageTicks := 57 }

def arena_inputs_010 : List UInt32 := [8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192]

end LeanDoomProofs
