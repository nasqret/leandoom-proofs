// The Playwright runner and a browser console can run the same assertions.
globalThis.checkReplayLab = async function checkReplayLab(mode = "desktop") {
  const $ = (id) => document.getElementById(id);
  const qa = (selector) => [...document.querySelectorAll(selector)];
  const sleep = (ms) => new Promise((resolve) => setTimeout(resolve, ms));
  function check(ok, message) {
    if (!ok) throw new Error(message);
  }
  async function until(observe, message) {
    const deadline = performance.now() + 15000;
    while (!observe()) {
      if (performance.now() > deadline) throw new Error(message);
      await sleep(30);
    }
  }
  async function json(path) {
    const response = await fetch(path);
    check(response.ok, "HTTP " + response.status + " at " + path);
    return response.json();
  }
  async function tab(name) {
    const button = document.querySelector('[data-tab="' + name + '"]');
    button.click();
    await until(
      () =>
        location.hash === "#" + name &&
        button.getAttribute("aria-pressed") === "true",
      "Tab " + name,
    );
  }
  function control(id, value, event = "change") {
    $(id).value = String(value);
    $(id).dispatchEvent(new Event(event, { bubbles: true }));
  }
  function hasPicture(element) {
    const probe = document.createElement("canvas");
    probe.width = 32;
    probe.height = 24;
    const ctx = probe.getContext("2d");
    ctx.drawImage(element, 0, 0, 32, 24);
    return (
      new Set(new Uint32Array(ctx.getImageData(0, 0, 32, 24).data.buffer))
        .size > 1
    );
  }
  async function decoded(video, clip, tick) {
    const expected = tick - clip.firstTick;
    await until(
      () =>
        !video.hidden &&
        !video.seeking &&
        video.readyState >= 2 &&
        video.videoWidth > 0 &&
        video.currentSrc.endsWith("/" + clip.file) &&
        Math.floor(video.currentTime * 35 + 0.001) === expected,
      "Camera failed to display " + clip.file + " frame " + expected,
    );
    check(
      hasPicture(video),
      "Blank decoded pixels in " + clip.file + " at tick " + tick,
    );
  }
  async function turns() {
    await tab("compare");
    $("turn-workbench").open = true;
    const fastest = () =>
      qa("#turn-explorer button").find(
        (b) => b.textContent === "Fastest in this grid",
      );
    await until(fastest, "Fastest turn preset absent");
    fastest().click();
    await until(
      () => $("turn-time")?.max === "977" && !$("turn-time").disabled,
      "Missing measured 977-tick finish",
    );
    const block = await json(
      "../../evidence/experiments/turns/study/paths-6.json",
    );
    const poses = block.paths[5 * 10 + 9],
      readout = document.querySelector("#turn-explorer output");
    for (const tick of [942, 977]) {
      control("turn-time", tick, "input");
      const [x, y, angle] = poses[tick - block.startTick];
      const expected =
        "Tick " +
        tick +
        " · heading " +
        ((angle * 360) / 2 ** 32).toFixed(1) +
        "° · position (" +
        (x / 65536).toFixed(1) +
        ", " +
        (y / 65536).toFixed(1) +
        ")";
      check(
        readout.textContent === expected,
        "Wrong measured turn pose: " + readout.textContent,
      );
      check(
        hasPicture(document.querySelector("#turn-explorer canvas")),
        "Missing turn path at " + tick,
      );
    }
  }
  async function routes() {
    await tab("compare");
    control("left-route", "original-993");
    control("right-route", "learned-978");
    const { clips } = await json("camera/cameras.json");
    const [left, right] = qa("#route-screens video");
    $("recorded-view").click();
    $("jump-input").click();
    check($("route-time").value === "967", "First changed input");
    $("jump-end").click();
    await decoded(right, clips["learned-978"], 978);
    check(
      /Held.*978.*exit/.test(qa(".scope footer")[1].textContent),
      "Held learned route",
    );
    control("right-route", "early-use-992");
    $("jump-end").click();
    await decoded(right, clips["early-use-992"], 992);
    await tab("fork");
    control("fork-tick", 910);
    control("fork-action", "right");
    control("route-time", 923, "input");
    await decoded(left, { file: "e1m1.mp4", firstTick: 0 }, 923);
    await decoded(right, clips["strafe-910-right"], 923);
    check(
      qa(".scope footer")[0].textContent.includes("48 HP") &&
        qa(".scope footer")[1].textContent.includes("72 HP"),
      "Contact at 923",
    );
    $("jump-impact").click();
    await decoded(right, clips["strafe-910-right"], 940);
    check(
      qa(".scope footer")[1].textContent.includes("63 HP"),
      "Contact at 940",
    );
    $("route-prev").click();
    check($("route-time").value === "939", "Previous tick");
    $("route-next").click();
    control("route-speed", 2);
    $("route-play").click();
    await until(() => +$("route-time").value > 940, "Play clock");
    $("route-play").click();
    check($("route-play").textContent === "Play", "Pause");
    const run = await json($("fork-export").href);
    const base = (await json("../../game/native-routes.json")).find(
      (r) => r.commands.length === 993,
    );
    check(
      run.commands.length === 993 &&
        run.commands.every(
          (m, i) =>
            m === (i === 909 ? base.commands[i] | 16 : base.commands[i]),
        ),
      "Edited tape",
    );
  }
  async function rng() {
    await tab("rng");
    const data = await json("../../evidence/experiments/rng.json"),
      cameras = await json("camera/rng.json");
    for (const [level, index, death, wins] of [
      ["E1M1", 40, 918, 254],
      ["E1M2", 0, 907, 8],
    ]) {
      control("rng-level", level);
      const group = data.levels.find((g) => g.level === level);
      check(
        qa("#rng-grid button:enabled").length === 256 &&
          group.outcomes.filter((r) => r.won).length === wins,
        "RNG table " + level,
      );
      $("rng-grid").children[index].click();
      const row = await json(
        qa("#rng-evidence a").find((a) => a.download).href,
      );
      check(
        row.outcome.firstDeathTick === death &&
          row.commandSha256 === group.commandSha256,
        "Exported " + level + " outcome",
      );
      const dense = await json("../../evidence/experiments/" + group.trackFile),
        track = dense.tracks[dense.phaseTrackIds[index]];
      const sample = track.findIndex(
        (r) => r[dense.columns.indexOf("tick")] === death,
      );
      check(sample >= 0, "Missing exact death sample");
      await until(
        () => +$("rng-time").max === track.length - 1,
        "Dense " + level + " track",
      );
      $("rng-media").open = true;
      await until(
        () => $("rng-video").hasAttribute("src"),
        "Missing " + level + " native film",
      );
      control("rng-time", sample, "input");
      await decoded($("rng-video"), cameras.levels[level][index], death);
      await until(
        () =>
          $("rng-video-tick").value ===
          "Camera tick " + death + " · measured sample " + death,
        "RNG clock " + level,
      );
      $("rng-media").open = false;
    }
  }
  await until(
    () => $("left-route")?.options.length && $("rng-level")?.options.length,
    "Route evidence did not load",
  );
  if (
    mode === "entry" ||
    (mode === "desktop" && location.hash === "#turn-workbench")
  ) {
    await until(
      () =>
        location.hash === "#turn-workbench" &&
        $("turn-workbench").open &&
        !$("route-panel").hidden &&
        document
          .querySelector('[data-tab="compare"]')
          .getAttribute("aria-pressed") === "true",
      "The teaching chapter fragment did not open the turn workbench",
    );
    if (mode === "entry")
      return "Direct chapter fragment opens the compare tab and workbench";
  }
  if (mode === "routes") {
    await routes();
    return "Decoded Hangar cameras and edited tape";
  }
  if (mode === "rng") {
    await rng();
    return "Two RNG death frames and their measured samples";
  }
  if (mode === "turns") {
    await turns();
    return "Measured fastest approach at ticks 942 and 977";
  }
  if (mode === "mobile") {
    for (const name of ["compare", "fork", "rng"]) {
      await tab(name);
      check(
        document.documentElement.scrollWidth === innerWidth,
        "Mobile overflow on " + name,
      );
    }
    control("rng-level", "E1M1");
    $("rng-grid").children[40].click();
    check(
      $("rng-heading").textContent.includes("Died"),
      "Mobile phase selection",
    );
    $("rng-baseline").click();
    check($("rng-index").value === "5", "Mobile ordinary phase");
    return "Mobile layout and phase controls";
  }
  await routes();
  await rng();
  await turns();
  return "Decoded Hangar route and fork frames, exported tape, two RNG death frames and measured fastest turn";
};
