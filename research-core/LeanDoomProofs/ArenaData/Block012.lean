import LeanDoomProofs.ArenaWitness

/-! Generated checkpoint proposals. No computation here is trusted as a proof.
Each adjacent pair is checked in the corresponding ArenaSegments module. -/
namespace LeanDoomProofs
open Doom
set_option maxRecDepth 8192

def arena_state_97 : Simulation := {
  map :=
    { name := "ARENA03",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 189, y := -6 }, angle := 225, kind := 3001, flags := 7 },
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
            { kind := 3001, health := -10, flags := 5243904, height := { raw := 917504 },
              info := { spawnHealth := 60, normal := 457, extreme := 462, sound := "bgdth1", flags := 4194310 },
              state := 461, tics := -1 },
        imp :=
          Option.some
            { id := 2, frame := 455, tics := 2, angle := { raw := 2147483647 }, target := Option.some 0, reaction := 0,
              threshold := 91, justHit := Bool.true, justAttacked := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 27 },
      { thing := 2, kind := 3001, health := 20,
        imp :=
          Option.some
            { id := 3, frame := 451, tics := 1, angle := { raw := 2684354560 }, target := Option.some 0, movedir := 4,
              movecount := 11, reaction := 0, threshold := 92, justHit := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.chase, age := 101 },
      { thing := 3, kind := 3001, health := 45,
        imp :=
          Option.some
            { id := 4, frame := 454, tics := 2, angle := { raw := 2107144115 }, target := Option.some 0, movedir := 5,
              reaction := 0, threshold := 98, justAttacked := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.attack, age := 98 }],
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
        frame := 99, tics := 1, exploding := Bool.true }],
  soundTargets := #[Option.some 0], deathStats := #v[{ kills := 1 }, { }, { }, { }],
  deathEvents := #[(2, Doom.Death.Event.state 461)], rng := { play := 142, misc := 97 },
  weapon :=
    { weapon := { frame := 27, tics := 5, y := { raw := 2097152 } },
      flash := { frame := 0, tics := 0, y := { raw := 2097152 } }, refire := 1 },
  weaponAge := 29, refire := Bool.true, shotSlope := { raw := -2124 },
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
    { index := 1, count := 7, lastAttack := 45, oldHealth := 100,
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
                  solid := Bool.false, height := { raw := 917504 }, ceiling := { raw := 8388608 },
                  moveFlags := { dropoff := Bool.true }, health := -10 },
                { kind := 3001, x := { raw := 12434624 }, y := { raw := -376000 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, health := 60, shootable := Bool.true },
                { kind := 3001, x := { raw := 16766656 }, y := { raw := -1583424 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, health := 60, shootable := Bool.true },
                { kind := 2001, x := { raw := -11534336 }, y := { raw := 0 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  pickup := Option.some { sprite := 34 }, removed := Bool.true }],
            links :=
              #[#[], #[], #[], #[], #[], #[], #[], #[], #[3, 4], #[], #[0], #[], #[2], #[], #[], #[], #[], #[], #[],
                #[]],
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
                          { position := { x := 189, y := -6 }, angle := 225, kind := 3001, flags := 7 },
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
                  rng := { play := 142, misc := 96 } } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 189, y := -6 }, angle := 225, kind := 3001, flags := 7 },
          { position := { x := 255, y := -25 }, angle := 176, kind := 3001, flags := 7 },
          { position := { x := -176, y := 0 }, angle := 0, kind := 2001, flags := 0 }],
      levelTime := 97 },
  inventory :=
    { shells := 6, weapons := #[0, 1, 2],
      pickupState :=
        { ammo := #v[50, 6, 0, 0],
          weapons :=
            #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          readyWeapon := 2, cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTSHOTGUN" } },
  ticks := 97, collected := #[4], message := "Hit - enemy health 20", messageTicks := 44 }

def arena_state_98 : Simulation := {
  map :=
    { name := "ARENA03",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 181, y := -6 }, angle := 180, kind := 3001, flags := 7 },
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
            { kind := 3001, health := -10, flags := 5243904, height := { raw := 917504 },
              info := { spawnHealth := 60, normal := 457, extreme := 462, sound := "bgdth1", flags := 4194310 },
              state := 461, tics := -1 },
        imp :=
          Option.some
            { id := 2, frame := 455, tics := 2, angle := { raw := 2147483647 }, target := Option.some 0, reaction := 0,
              threshold := 91, justHit := Bool.true, justAttacked := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 28 },
      { thing := 2, kind := 3001, health := 20,
        imp :=
          Option.some
            { id := 3, frame := 444, tics := 3, angle := { raw := 2147483648 }, target := Option.some 0, movedir := 4,
              movecount := 10, reaction := 0, threshold := 91, justHit := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.chase, age := 102 },
      { thing := 3, kind := 3001, health := 45,
        imp :=
          Option.some
            { id := 4, frame := 454, tics := 1, angle := { raw := 2107144115 }, target := Option.some 0, movedir := 5,
              reaction := 0, threshold := 98, justAttacked := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.attack, age := 99 }],
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
        frame := 100, tics := 6, exploding := Bool.true }],
  soundTargets := #[Option.some 0], deathStats := #v[{ kills := 1 }, { }, { }, { }], rng := { play := 143, misc := 98 },
  weapon :=
    { weapon := { frame := 27, tics := 4, y := { raw := 2097152 } },
      flash := { frame := 0, tics := 0, y := { raw := 2097152 } }, refire := 1 },
  weaponAge := 30, refire := Bool.true, shotSlope := { raw := -2124 },
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
    { index := 1, count := 6, lastAttack := 44, oldHealth := 100,
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
                  solid := Bool.false, height := { raw := 917504 }, ceiling := { raw := 8388608 },
                  moveFlags := { dropoff := Bool.true }, health := -10 },
                { kind := 3001, x := { raw := 11910336 }, y := { raw := -376000 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, health := 60, shootable := Bool.true },
                { kind := 3001, x := { raw := 16766656 }, y := { raw := -1583424 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, health := 60, shootable := Bool.true },
                { kind := 2001, x := { raw := -11534336 }, y := { raw := 0 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  pickup := Option.some { sprite := 34 }, removed := Bool.true }],
            links :=
              #[#[], #[], #[], #[], #[], #[], #[], #[], #[3, 4], #[], #[0], #[], #[2], #[], #[], #[], #[], #[], #[],
                #[]],
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
                          { position := { x := 189, y := -6 }, angle := 225, kind := 3001, flags := 7 },
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
                  rng := { play := 142, misc := 97 } } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 181, y := -6 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := 255, y := -25 }, angle := 176, kind := 3001, flags := 7 },
          { position := { x := -176, y := 0 }, angle := 0, kind := 2001, flags := 0 }],
      levelTime := 98 },
  inventory :=
    { shells := 6, weapons := #[0, 1, 2],
      pickupState :=
        { ammo := #v[50, 6, 0, 0],
          weapons :=
            #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          readyWeapon := 2, cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTSHOTGUN" } },
  ticks := 98, collected := #[4], message := "Hit - enemy health 20", messageTicks := 43 }

def arena_state_99 : Simulation := {
  map :=
    { name := "ARENA03",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 181, y := -6 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := 250, y := -19 }, angle := 180, kind := 3001, flags := 7 },
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 29 },
      { thing := 2, kind := 3001, health := 20,
        imp :=
          Option.some
            { id := 3, frame := 444, tics := 2, angle := { raw := 2147483648 }, target := Option.some 0, movedir := 4,
              movecount := 10, reaction := 0, threshold := 91, justHit := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.chase, age := 103 },
      { thing := 3, kind := 3001, health := 45,
        imp :=
          Option.some
            { id := 4, frame := 444, tics := 3, angle := { raw := 2147483648 }, target := Option.some 0, movedir := 3,
              movecount := 3, reaction := 0, threshold := 97 },
        damageTarget := Option.some 0, mode := Doom.ActorMode.chase, age := 100 }],
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
        frame := 100, tics := 5, exploding := Bool.true }],
  soundTargets := #[Option.some 0], deathStats := #v[{ kills := 1 }, { }, { }, { }], rng := { play := 144, misc := 99 },
  weapon :=
    { weapon := { frame := 27, tics := 3, y := { raw := 2097152 } },
      flash := { frame := 0, tics := 0, y := { raw := 2097152 } }, refire := 1 },
  weaponAge := 31, refire := Bool.true, shotSlope := { raw := -2124 },
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
    { index := 1, count := 5, lastAttack := 43, oldHealth := 100,
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
                  solid := Bool.false, height := { raw := 917504 }, ceiling := { raw := 8388608 },
                  moveFlags := { dropoff := Bool.true }, health := -10 },
                { kind := 3001, x := { raw := 11910336 }, y := { raw := -376000 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, health := 60, shootable := Bool.true },
                { kind := 3001, x := { raw := 16390656 }, y := { raw := -1207424 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, health := 60, shootable := Bool.true },
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
                          { position := { x := 181, y := -6 }, angle := 180, kind := 3001, flags := 7 },
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
                  rng := { play := 143, misc := 98 } } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 181, y := -6 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := 250, y := -19 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := -176, y := 0 }, angle := 0, kind := 2001, flags := 0 }],
      levelTime := 99 },
  inventory :=
    { shells := 6, weapons := #[0, 1, 2],
      pickupState :=
        { ammo := #v[50, 6, 0, 0],
          weapons :=
            #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          readyWeapon := 2, cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTSHOTGUN" } },
  ticks := 99, collected := #[4], message := "Hit - enemy health 20", messageTicks := 42 }

def arena_state_100 : Simulation := {
  map :=
    { name := "ARENA03",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 181, y := -6 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := 250, y := -19 }, angle := 180, kind := 3001, flags := 7 },
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 30 },
      { thing := 2, kind := 3001, health := 20,
        imp :=
          Option.some
            { id := 3, frame := 444, tics := 1, angle := { raw := 2147483648 }, target := Option.some 0, movedir := 4,
              movecount := 10, reaction := 0, threshold := 91, justHit := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.chase, age := 104 },
      { thing := 3, kind := 3001, health := 45,
        imp :=
          Option.some
            { id := 4, frame := 444, tics := 2, angle := { raw := 2147483648 }, target := Option.some 0, movedir := 3,
              movecount := 3, reaction := 0, threshold := 97 },
        damageTarget := Option.some 0, mode := Doom.ActorMode.chase, age := 101 }],
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
        frame := 100, exploding := Bool.true }],
  soundTargets := #[Option.some 0], deathStats := #v[{ kills := 1 }, { }, { }, { }],
  rng := { play := 144, misc := 100 },
  weapon :=
    { weapon := { frame := 27, tics := 2, y := { raw := 2097152 } },
      flash := { frame := 0, tics := 0, y := { raw := 2097152 } }, refire := 1 },
  weaponAge := 32, refire := Bool.true, shotSlope := { raw := -2124 },
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
    { index := 1, count := 4, lastAttack := 42, oldHealth := 100,
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
                  solid := Bool.false, height := { raw := 917504 }, ceiling := { raw := 8388608 },
                  moveFlags := { dropoff := Bool.true }, health := -10 },
                { kind := 3001, x := { raw := 11910336 }, y := { raw := -376000 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, health := 60, shootable := Bool.true },
                { kind := 3001, x := { raw := 16390656 }, y := { raw := -1207424 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, health := 60, shootable := Bool.true },
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
                          { position := { x := 181, y := -6 }, angle := 180, kind := 3001, flags := 7 },
                          { position := { x := 250, y := -19 }, angle := 180, kind := 3001, flags := 7 },
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
                  rng := { play := 144, misc := 99 } } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 181, y := -6 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := 250, y := -19 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := -176, y := 0 }, angle := 0, kind := 2001, flags := 0 }],
      levelTime := 100 },
  inventory :=
    { shells := 6, weapons := #[0, 1, 2],
      pickupState :=
        { ammo := #v[50, 6, 0, 0],
          weapons :=
            #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          readyWeapon := 2, cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTSHOTGUN" } },
  ticks := 100, collected := #[4], message := "Hit - enemy health 20", messageTicks := 41 }

def arena_state_101 : Simulation := {
  map :=
    { name := "ARENA03",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 173, y := -6 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := 250, y := -19 }, angle := 180, kind := 3001, flags := 7 },
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 31 },
      { thing := 2, kind := 3001, health := 20,
        imp :=
          Option.some
            { id := 3, frame := 445, tics := 3, angle := { raw := 2147483648 }, target := Option.some 0, movedir := 4,
              movecount := 9, reaction := 0, threshold := 90, justHit := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.chase, age := 105 },
      { thing := 3, kind := 3001, health := 45,
        imp :=
          Option.some
            { id := 4, frame := 444, tics := 1, angle := { raw := 2147483648 }, target := Option.some 0, movedir := 3,
              movecount := 3, reaction := 0, threshold := 97 },
        damageTarget := Option.some 0, mode := Doom.ActorMode.chase, age := 102 }],
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
        frame := 100, tics := 3, exploding := Bool.true }],
  soundTargets := #[Option.some 0], deathStats := #v[{ kills := 1 }, { }, { }, { }],
  rng := { play := 145, misc := 101 },
  weapon :=
    { weapon := { frame := 27, y := { raw := 2097152 } }, flash := { frame := 0, tics := 0, y := { raw := 2097152 } },
      refire := 1 },
  weaponAge := 33, refire := Bool.true, shotSlope := { raw := -2124 },
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
    { index := 1, count := 3, lastAttack := 41, oldHealth := 100,
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
                  solid := Bool.false, height := { raw := 917504 }, ceiling := { raw := 8388608 },
                  moveFlags := { dropoff := Bool.true }, health := -10 },
                { kind := 3001, x := { raw := 11386048 }, y := { raw := -376000 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, health := 60, shootable := Bool.true },
                { kind := 3001, x := { raw := 16390656 }, y := { raw := -1207424 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, health := 60, shootable := Bool.true },
                { kind := 2001, x := { raw := -11534336 }, y := { raw := 0 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  pickup := Option.some { sprite := 34 }, removed := Bool.true }],
            links :=
              #[#[], #[], #[], #[], #[], #[], #[], #[], #[3, 4], #[], #[0], #[], #[2], #[], #[], #[], #[], #[], #[],
                #[]],
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
                          { position := { x := 181, y := -6 }, angle := 180, kind := 3001, flags := 7 },
                          { position := { x := 250, y := -19 }, angle := 180, kind := 3001, flags := 7 },
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
                  rng := { play := 144, misc := 100 } } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 173, y := -6 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := 250, y := -19 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := -176, y := 0 }, angle := 0, kind := 2001, flags := 0 }],
      levelTime := 101 },
  inventory :=
    { shells := 6, weapons := #[0, 1, 2],
      pickupState :=
        { ammo := #v[50, 6, 0, 0],
          weapons :=
            #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          readyWeapon := 2, cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTSHOTGUN" } },
  ticks := 101, collected := #[4], message := "Hit - enemy health 20", messageTicks := 40 }

def arena_state_102 : Simulation := {
  map :=
    { name := "ARENA03",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 173, y := -6 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := 244, y := -13 }, angle := 135, kind := 3001, flags := 7 },
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 32 },
      { thing := 2, kind := 3001, health := 20,
        imp :=
          Option.some
            { id := 3, frame := 445, tics := 2, angle := { raw := 2147483648 }, target := Option.some 0, movedir := 4,
              movecount := 9, reaction := 0, threshold := 90, justHit := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.chase, age := 106 },
      { thing := 3, kind := 3001, health := 45,
        imp :=
          Option.some
            { id := 4, frame := 445, tics := 3, angle := { raw := 1610612736 }, target := Option.some 0, movedir := 3,
              movecount := 2, reaction := 0, threshold := 96 },
        damageTarget := Option.some 0, mode := Doom.ActorMode.chase, age := 103 }],
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
        frame := 100, tics := 2, exploding := Bool.true }],
  soundTargets := #[Option.some 0], deathStats := #v[{ kills := 1 }, { }, { }, { }],
  rng := { play := 146, misc := 102 },
  weapon :=
    { weapon := { frame := 28, tics := 3, y := { raw := 2097152 } },
      flash := { frame := 0, tics := 0, y := { raw := 2097152 } }, refire := 1 },
  weaponAge := 34, refire := Bool.true, shotSlope := { raw := -2124 },
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
    { index := 1, count := 2, lastAttack := 40, oldHealth := 100,
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
                  solid := Bool.false, height := { raw := 917504 }, ceiling := { raw := 8388608 },
                  moveFlags := { dropoff := Bool.true }, health := -10 },
                { kind := 3001, x := { raw := 11386048 }, y := { raw := -376000 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, health := 60, shootable := Bool.true },
                { kind := 3001, x := { raw := 16014656 }, y := { raw := -831424 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, health := 60, shootable := Bool.true },
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
                          { position := { x := 173, y := -6 }, angle := 180, kind := 3001, flags := 7 },
                          { position := { x := 250, y := -19 }, angle := 180, kind := 3001, flags := 7 },
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
                  rng := { play := 145, misc := 101 } } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 173, y := -6 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := 244, y := -13 }, angle := 135, kind := 3001, flags := 7 },
          { position := { x := -176, y := 0 }, angle := 0, kind := 2001, flags := 0 }],
      levelTime := 102 },
  inventory :=
    { shells := 6, weapons := #[0, 1, 2],
      pickupState :=
        { ammo := #v[50, 6, 0, 0],
          weapons :=
            #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          readyWeapon := 2, cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTSHOTGUN" } },
  ticks := 102, collected := #[4], message := "Hit - enemy health 20", messageTicks := 39 }

def arena_state_103 : Simulation := {
  map :=
    { name := "ARENA03",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 173, y := -6 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := 244, y := -13 }, angle := 135, kind := 3001, flags := 7 },
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 33 },
      { thing := 2, kind := 3001, health := 20,
        imp :=
          Option.some
            { id := 3, frame := 445, tics := 1, angle := { raw := 2147483648 }, target := Option.some 0, movedir := 4,
              movecount := 9, reaction := 0, threshold := 90, justHit := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.chase, age := 107 },
      { thing := 3, kind := 3001, health := 45,
        imp :=
          Option.some
            { id := 4, frame := 445, tics := 2, angle := { raw := 1610612736 }, target := Option.some 0, movedir := 3,
              movecount := 2, reaction := 0, threshold := 96 },
        damageTarget := Option.some 0, mode := Doom.ActorMode.chase, age := 104 }],
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
        frame := 100, tics := 1, exploding := Bool.true }],
  soundTargets := #[Option.some 0], deathStats := #v[{ kills := 1 }, { }, { }, { }],
  rng := { play := 146, misc := 103 },
  weapon :=
    { weapon := { frame := 28, tics := 2, y := { raw := 2097152 } },
      flash := { frame := 0, tics := 0, y := { raw := 2097152 } }, refire := 1 },
  weaponAge := 35, refire := Bool.true, shotSlope := { raw := -2124 },
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
    { index := 1, count := 1, lastAttack := 39, oldHealth := 100,
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
                  solid := Bool.false, height := { raw := 917504 }, ceiling := { raw := 8388608 },
                  moveFlags := { dropoff := Bool.true }, health := -10 },
                { kind := 3001, x := { raw := 11386048 }, y := { raw := -376000 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, health := 60, shootable := Bool.true },
                { kind := 3001, x := { raw := 16014656 }, y := { raw := -831424 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, health := 60, shootable := Bool.true },
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
                          { position := { x := 173, y := -6 }, angle := 180, kind := 3001, flags := 7 },
                          { position := { x := 244, y := -13 }, angle := 135, kind := 3001, flags := 7 },
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
                  rng := { play := 146, misc := 102 } } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 173, y := -6 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := 244, y := -13 }, angle := 135, kind := 3001, flags := 7 },
          { position := { x := -176, y := 0 }, angle := 0, kind := 2001, flags := 0 }],
      levelTime := 103 },
  inventory :=
    { shells := 6, weapons := #[0, 1, 2],
      pickupState :=
        { ammo := #v[50, 6, 0, 0],
          weapons :=
            #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          readyWeapon := 2, cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTSHOTGUN" } },
  ticks := 103, collected := #[4], message := "Hit - enemy health 20", messageTicks := 38 }

def arena_state_104 : Simulation := {
  map :=
    { name := "ARENA03",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 165, y := -6 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := 244, y := -13 }, angle := 135, kind := 3001, flags := 7 },
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 34 },
      { thing := 2, kind := 3001, health := 20,
        imp :=
          Option.some
            { id := 3, frame := 446, tics := 3, angle := { raw := 2147483648 }, target := Option.some 0, movedir := 4,
              movecount := 8, reaction := 0, threshold := 89, justHit := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.chase, age := 108 },
      { thing := 3, kind := 3001, health := 45,
        imp :=
          Option.some
            { id := 4, frame := 445, tics := 1, angle := { raw := 1610612736 }, target := Option.some 0, movedir := 3,
              movecount := 2, reaction := 0, threshold := 96 },
        damageTarget := Option.some 0, mode := Doom.ActorMode.chase, age := 105 }],
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
        frame := 101, tics := 6, exploding := Bool.true }],
  soundTargets := #[Option.some 0], deathStats := #v[{ kills := 1 }, { }, { }, { }],
  rng := { play := 147, misc := 104 },
  weapon :=
    { weapon := { frame := 28, y := { raw := 2097152 } }, flash := { frame := 0, tics := 0, y := { raw := 2097152 } },
      refire := 1 },
  weaponAge := 36, refire := Bool.true, shotSlope := { raw := -2124 },
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
    { index := 1, lastAttack := 38, oldHealth := 100,
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
                  solid := Bool.false, height := { raw := 917504 }, ceiling := { raw := 8388608 },
                  moveFlags := { dropoff := Bool.true }, health := -10 },
                { kind := 3001, x := { raw := 10861760 }, y := { raw := -376000 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, health := 60, shootable := Bool.true },
                { kind := 3001, x := { raw := 16014656 }, y := { raw := -831424 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, health := 60, shootable := Bool.true },
                { kind := 2001, x := { raw := -11534336 }, y := { raw := 0 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  pickup := Option.some { sprite := 34 }, removed := Bool.true }],
            links :=
              #[#[], #[], #[], #[], #[], #[], #[], #[], #[3, 4], #[], #[0], #[], #[2], #[], #[], #[], #[], #[], #[],
                #[]],
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
                          { position := { x := 173, y := -6 }, angle := 180, kind := 3001, flags := 7 },
                          { position := { x := 244, y := -13 }, angle := 135, kind := 3001, flags := 7 },
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
                  rng := { play := 146, misc := 103 } } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 165, y := -6 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := 244, y := -13 }, angle := 135, kind := 3001, flags := 7 },
          { position := { x := -176, y := 0 }, angle := 0, kind := 2001, flags := 0 }],
      levelTime := 104 },
  inventory :=
    { shells := 6, weapons := #[0, 1, 2],
      pickupState :=
        { ammo := #v[50, 6, 0, 0],
          weapons :=
            #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          readyWeapon := 2, cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTSHOTGUN" } },
  ticks := 104, collected := #[4], message := "Hit - enemy health 20", messageTicks := 37 }

def arena_state_105 : Simulation := {
  map :=
    { name := "ARENA03",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 165, y := -6 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := 238, y := -7 }, angle := 135, kind := 3001, flags := 7 },
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 35 },
      { thing := 2, kind := 3001, health := 20,
        imp :=
          Option.some
            { id := 3, frame := 446, tics := 2, angle := { raw := 2147483648 }, target := Option.some 0, movedir := 4,
              movecount := 8, reaction := 0, threshold := 89, justHit := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.chase, age := 109 },
      { thing := 3, kind := 3001, health := 45,
        imp :=
          Option.some
            { id := 4, frame := 446, tics := 3, angle := { raw := 1610612736 }, target := Option.some 0, movedir := 3,
              movecount := 1, reaction := 0, threshold := 95 },
        damageTarget := Option.some 0, mode := Doom.ActorMode.chase, age := 106 }],
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
        frame := 101, tics := 5, exploding := Bool.true }],
  soundTargets := #[Option.some 0], deathStats := #v[{ kills := 1 }, { }, { }, { }],
  rng := { play := 148, misc := 105 },
  weapon :=
    { weapon := { frame := 21, tics := 3, y := { raw := 2097152 } },
      flash := { frame := 0, tics := 0, y := { raw := 2097152 } }, refire := 2 },
  weaponAge := 0, refire := Bool.true, shotSlope := { raw := -2124 },
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
    { index := 1, count := 16, lastAttack := 37, oldHealth := 100,
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
                  solid := Bool.false, height := { raw := 917504 }, ceiling := { raw := 8388608 },
                  moveFlags := { dropoff := Bool.true }, health := -10 },
                { kind := 3001, x := { raw := 10861760 }, y := { raw := -376000 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, health := 60, shootable := Bool.true },
                { kind := 3001, x := { raw := 15638656 }, y := { raw := -455424 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, health := 60, shootable := Bool.true },
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
                          { position := { x := 165, y := -6 }, angle := 180, kind := 3001, flags := 7 },
                          { position := { x := 244, y := -13 }, angle := 135, kind := 3001, flags := 7 },
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
                  rng := { play := 147, misc := 104 } } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 165, y := -6 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := 238, y := -7 }, angle := 135, kind := 3001, flags := 7 },
          { position := { x := -176, y := 0 }, angle := 0, kind := 2001, flags := 0 }],
      levelTime := 105 },
  inventory :=
    { shells := 6, weapons := #[0, 1, 2],
      pickupState :=
        { ammo := #v[50, 6, 0, 0],
          weapons :=
            #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          readyWeapon := 2, cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTSHOTGUN" } },
  ticks := 105, collected := #[4], message := "Hit - enemy health 20", messageTicks := 36 }

def arena_state_106 : Simulation := {
  map :=
    { name := "ARENA03",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 165, y := -6 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := 238, y := -7 }, angle := 135, kind := 3001, flags := 7 },
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 36 },
      { thing := 2, kind := 3001, health := 20,
        imp :=
          Option.some
            { id := 3, frame := 446, tics := 1, angle := { raw := 2147483648 }, target := Option.some 0, movedir := 4,
              movecount := 8, reaction := 0, threshold := 89, justHit := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.chase, age := 110 },
      { thing := 3, kind := 3001, health := 45,
        imp :=
          Option.some
            { id := 4, frame := 446, tics := 2, angle := { raw := 1610612736 }, target := Option.some 0, movedir := 3,
              movecount := 1, reaction := 0, threshold := 95 },
        damageTarget := Option.some 0, mode := Doom.ActorMode.chase, age := 107 }],
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
        frame := 101, exploding := Bool.true }],
  soundTargets := #[Option.some 0], deathStats := #v[{ kills := 1 }, { }, { }, { }],
  rng := { play := 148, misc := 106 },
  weapon :=
    { weapon := { frame := 21, tics := 2, y := { raw := 2097152 } },
      flash := { frame := 0, tics := 0, y := { raw := 2097152 } }, refire := 2 },
  weaponAge := 1, refire := Bool.true, shotSlope := { raw := -2124 },
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
    { index := 1, count := 15, lastAttack := 36, oldHealth := 100,
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
                  solid := Bool.false, height := { raw := 917504 }, ceiling := { raw := 8388608 },
                  moveFlags := { dropoff := Bool.true }, health := -10 },
                { kind := 3001, x := { raw := 10861760 }, y := { raw := -376000 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, health := 60, shootable := Bool.true },
                { kind := 3001, x := { raw := 15638656 }, y := { raw := -455424 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, health := 60, shootable := Bool.true },
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
                          { position := { x := 165, y := -6 }, angle := 180, kind := 3001, flags := 7 },
                          { position := { x := 238, y := -7 }, angle := 135, kind := 3001, flags := 7 },
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
                  rng := { play := 148, misc := 105 } } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 165, y := -6 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := 238, y := -7 }, angle := 135, kind := 3001, flags := 7 },
          { position := { x := -176, y := 0 }, angle := 0, kind := 2001, flags := 0 }],
      levelTime := 106 },
  inventory :=
    { shells := 6, weapons := #[0, 1, 2],
      pickupState :=
        { ammo := #v[50, 6, 0, 0],
          weapons :=
            #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          readyWeapon := 2, cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTSHOTGUN" } },
  ticks := 106, collected := #[4], message := "Hit - enemy health 20", messageTicks := 35 }

def arena_state_107 : Simulation := {
  map :=
    { name := "ARENA03",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 157, y := -6 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := 238, y := -7 }, angle := 135, kind := 3001, flags := 7 },
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 37 },
      { thing := 2, kind := 3001, health := 20,
        imp :=
          Option.some
            { id := 3, frame := 447, tics := 3, angle := { raw := 2147483648 }, target := Option.some 0, movedir := 4,
              movecount := 7, reaction := 0, threshold := 88, justHit := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.chase, age := 111 },
      { thing := 3, kind := 3001, health := 45,
        imp :=
          Option.some
            { id := 4, frame := 446, tics := 1, angle := { raw := 1610612736 }, target := Option.some 0, movedir := 3,
              movecount := 1, reaction := 0, threshold := 95 },
        damageTarget := Option.some 0, mode := Doom.ActorMode.chase, age := 108 }],
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
        frame := 101, tics := 3, exploding := Bool.true }],
  soundTargets := #[Option.some 0], deathStats := #v[{ kills := 1 }, { }, { }, { }],
  rng := { play := 149, misc := 107 },
  weapon :=
    { weapon := { frame := 21, y := { raw := 2097152 } }, flash := { frame := 0, tics := 0, y := { raw := 2097152 } },
      refire := 2 },
  weaponAge := 2, refire := Bool.true, shotSlope := { raw := -2124 },
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
    { index := 1, count := 14, lastAttack := 35, oldHealth := 100,
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
                  solid := Bool.false, height := { raw := 917504 }, ceiling := { raw := 8388608 },
                  moveFlags := { dropoff := Bool.true }, health := -10 },
                { kind := 3001, x := { raw := 10337472 }, y := { raw := -376000 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, health := 60, shootable := Bool.true },
                { kind := 3001, x := { raw := 15638656 }, y := { raw := -455424 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, health := 60, shootable := Bool.true },
                { kind := 2001, x := { raw := -11534336 }, y := { raw := 0 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  pickup := Option.some { sprite := 34 }, removed := Bool.true }],
            links :=
              #[#[], #[], #[], #[], #[], #[], #[], #[], #[3, 4], #[], #[0], #[], #[2], #[], #[], #[], #[], #[], #[],
                #[]],
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
                          { position := { x := 165, y := -6 }, angle := 180, kind := 3001, flags := 7 },
                          { position := { x := 238, y := -7 }, angle := 135, kind := 3001, flags := 7 },
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
                  rng := { play := 148, misc := 106 } } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 157, y := -6 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := 238, y := -7 }, angle := 135, kind := 3001, flags := 7 },
          { position := { x := -176, y := 0 }, angle := 0, kind := 2001, flags := 0 }],
      levelTime := 107 },
  inventory :=
    { shells := 6, weapons := #[0, 1, 2],
      pickupState :=
        { ammo := #v[50, 6, 0, 0],
          weapons :=
            #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          readyWeapon := 2, cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTSHOTGUN" } },
  ticks := 107, collected := #[4], message := "Hit - enemy health 20", messageTicks := 34 }

def arena_state_108 : Simulation := {
  map :=
    { name := "ARENA03",
      things :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 157, y := -6 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := 238, y := -7 }, angle := 135, kind := 3001, flags := 7 },
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
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 38 },
      { thing := 2, kind := 3001, health := 0,
        death :=
          Option.some
            { kind := 3001, health := -10, flags := 5243906, height := { raw := 917504 },
              info := { spawnHealth := 60, normal := 457, extreme := 462, sound := "bgdth1", flags := 4194310 },
              state := 457, tics := 4 },
        imp :=
          Option.some
            { id := 3, frame := 455, tics := 2, angle := { raw := 2147483648 }, target := Option.some 0, movedir := 4,
              movecount := 7, reaction := 0, threshold := 88, justHit := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.dying, age := 1 },
      { thing := 3, kind := 3001, health := 30,
        imp :=
          Option.some
            { id := 4, frame := 455, tics := 1, angle := { raw := 1610612736 }, target := Option.some 0, movedir := 3,
              movecount := 1, reaction := 0, threshold := 95, justHit := Bool.true },
        damageTarget := Option.some 0, mode := Doom.ActorMode.pain, age := 110 }],
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
        frame := 101, tics := 2, exploding := Bool.true }],
  soundTargets := #[Option.some 0], deathStats := #v[{ kills := 2 }, { }, { }, { }],
  deathEvents := #[(3, Doom.Death.Event.state 457)], rng := { play := 173, misc := 108 },
  weapon :=
    { weapon := { frame := 22, tics := 7, y := { raw := 2097152 } },
      flash := { frame := 30, tics := 3, y := { raw := 2097152 } }, refire := 2, extraLight := 1 },
  weaponAge := 3, refire := Bool.true,
  shotEvents :=
    #[(0, Doom.Collision.ShotEvent.special 2),
      (0, Doom.Collision.ShotEvent.puff { raw := 20708372 } { raw := 786864 } { raw := 2359296 }),
      (0, Doom.Collision.ShotEvent.blood { raw := 8802852 } { raw := -1212138 } { raw := 2359296 } 15),
      (0, Doom.Collision.ShotEvent.damage 3 15), (0, Doom.Collision.ShotEvent.special 2),
      (0, Doom.Collision.ShotEvent.puff { raw := 20707473 } { raw := 223550 } { raw := 2359296 }),
      (0, Doom.Collision.ShotEvent.special 2),
      (0, Doom.Collision.ShotEvent.puff { raw := 20708458 } { raw := 1727322 } { raw := 2359296 }),
      (0, Doom.Collision.ShotEvent.blood { raw := 9647080 } { raw := -395995 } { raw := 2359296 } 15),
      (0, Doom.Collision.ShotEvent.damage 3 15), (0, Doom.Collision.ShotEvent.special 2),
      (0, Doom.Collision.ShotEvent.puff { raw := 20709083 } { raw := -2338526 } { raw := 2359296 }),
      (0, Doom.Collision.ShotEvent.blood { raw := 14692788 } { raw := -724883 } { raw := 2359296 } 15),
      (0, Doom.Collision.ShotEvent.damage 4 15)],
  lastFire :=
    Option.some
      { gun := Doom.Fire.Gun.shotgun, tic := 108, ammoBefore := 6, ammoAfter := 5, pelletsExpected := 7,
        pelletsTraced := 7, aim := Option.some { },
        pelletAngles := #[17301504, 4250402816, 4718592, 38535168, 4280811520, 4242800640, 4274520064] },
  shots := 3, lastShot := 108, kills := 2,
  statusFace :=
    { index := 1, count := 13, lastAttack := 34, oldHealth := 100,
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
                  solid := Bool.false, height := { raw := 917504 }, ceiling := { raw := 8388608 },
                  moveFlags := { dropoff := Bool.true }, health := -10 },
                { kind := 3001, x := { raw := 10337472 }, y := { raw := -376000 }, radius := { raw := 1310720 },
                  height := { raw := 917504 }, ceiling := { raw := 8388608 }, moveFlags := { dropoff := Bool.true },
                  health := -10 },
                { kind := 3001, x := { raw := 15638656 }, y := { raw := -455424 }, radius := { raw := 1310720 },
                  height := { raw := 3670016 }, ceiling := { raw := 8388608 }, health := 60, shootable := Bool.true },
                { kind := 2001, x := { raw := -11534336 }, y := { raw := 0 }, radius := { raw := 1310720 },
                  solid := Bool.false, height := { raw := 1048576 }, ceiling := { raw := 8388608 },
                  pickup := Option.some { sprite := 34 }, removed := Bool.true }],
            links :=
              #[#[], #[], #[], #[], #[], #[], #[], #[], #[3, 4], #[], #[0], #[], #[2], #[], #[], #[], #[], #[], #[],
                #[]],
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
                          { position := { x := 157, y := -6 }, angle := 180, kind := 3001, flags := 7 },
                          { position := { x := 238, y := -7 }, angle := 135, kind := 3001, flags := 7 },
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
                  rng := { play := 149, misc := 107 } } },
      mapActors :=
        #[{ position := { x := -192, y := 0 }, angle := 0, kind := 1, flags := 7 },
          { position := { x := 96, y := 0 }, angle := 179, kind := 3001, flags := 7 },
          { position := { x := 157, y := -6 }, angle := 180, kind := 3001, flags := 7 },
          { position := { x := 238, y := -7 }, angle := 135, kind := 3001, flags := 7 },
          { position := { x := -176, y := 0 }, angle := 0, kind := 2001, flags := 0 }],
      levelTime := 108 },
  inventory :=
    { shells := 5, weapons := #[0, 1, 2],
      pickupState :=
        { ammo := #v[50, 5, 0, 0],
          weapons :=
            #v[Bool.true, Bool.true, Bool.true, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          readyWeapon := 2, cards := #v[Bool.false, Bool.false, Bool.false, Bool.false, Bool.false, Bool.false],
          powers := #v[0, 0, 0, 0, 0, 0], message := "GOTSHOTGUN" } },
  ticks := 108, collected := #[4], message := "Hit - enemy health 30", messageTicks := 70 }

def arena_inputs_012 : List UInt32 := [8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192, 8192]

end LeanDoomProofs
