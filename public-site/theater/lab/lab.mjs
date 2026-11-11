import { declaration, linkDeclaration } from "./source.mjs";
import { bounds, drawTrack, drawCamera, openWorld } from "./draw.mjs";
import { setupRng } from "./rng.mjs";
const $ = (id) => document.getElementById(id);
const url = new URL("../../evidence/experiments/forks.json", location.href);
const cameraIndex = new URL("camera/cameras.json", location.href);
const colors = ["#d1e885", "#ffa074"];
const masks = [
  [2, "forward"],
  [4, "backward"],
  [8, "strafe left"],
  [16, "strafe right"],
  [32, "turn left"],
  [64, "turn right"],
  [512, "run"],
  [4096, "use"],
  [8192, "attack"],
];
const maskText = (n) =>
  n == null
    ? "spawn"
    : !n
      ? "wait"
      : masks
          .filter(([bit]) => n & bit)
          .map((x) => x[1])
          .join(" + ") || String(n);
const txt = (id, text) => {
  $(id).textContent = text;
};
function el(tag, text) {
  const node = document.createElement(tag);
  if (text != null) node.textContent = text;
  return node;
}
function options(id, rows, value) {
  const s = $(id);
  s.replaceChildren(...rows.map(([v, t]) => new Option(t, v)));
  if (rows.some(([x]) => String(x) === String(value))) s.value = value;
}
function link(container, label, href, theorem) {
  const l = el("a", label);
  if (href.pathname.endsWith(".lean")) linkDeclaration(l, href, theorem);
  else l.href = href;
  container.append(l);
}
async function load(url) {
  const res = await fetch(url);
  if (!res.ok) throw new Error(res.status + " " + res.statusText);
  return res.json();
}
const state = {
  tab: "compare",
  tick: 0,
  end: 0,
  routes: new Map(),
  selected: [],
  running: false,
  speed: 0.5,
  world: null,
  camera: false,
  film: false,
  rate: 35,
  clips: {},
  failedClips: new Set(),
};
const screens = [0, 1].map(() => {
  const card = el("article"),
    head = el("header"),
    title = el("h3"),
    mode = el("p"),
    canvas = el("canvas"),
    video = el("video"),
    foot = el("footer"),
    stats = el("p"),
    cmd = el("p");
  card.className = "scope";
  canvas.setAttribute("role", "img");
  head.append(title, mode);
  foot.append(stats, cmd);
  video.muted = true;
  video.playsInline = true;
  video.hidden = true;
  video.setAttribute("aria-label", "Original Hangar replay camera");
  video.preload = "metadata";
  video.onloadedmetadata = draw;
  video.onerror = () => {
    if (video.dataset.source) state.failedClips.add(video.dataset.source);
    draw();
  };
  card.append(head, canvas, video, foot);
  $("route-screens").append(card);
  return { title, mode, canvas, video, stats, cmd };
});

function prepRoutes(data, tapes) {
  if (!data.routes?.length) throw new Error("No route telemetry is available.");
  const scale = data.coordinateScale,
    baseline = data.routes.find((r) => r.id === data.baseline);
  if (!(scale > 0) || !baseline)
    throw new Error("Missing units or base route.");
  const sorted = [baseline, ...data.routes.filter((r) => r !== baseline)],
    native = tapes.filter((t) => t.level === data.map);
  for (const r of sorted) {
    if (!r.tracks?.length) continue;
    const owned = r.tracks.map(([t, x, y, h, px, py, phase, heading]) => [
      t,
      x / scale,
      y / scale,
      h,
      px == null ? null : px / scale,
      py == null ? null : py / scale,
      phase,
      heading,
    ]);
    const base = state.routes.get(data.baseline);
    const frames =
      owned[0][0] && base
        ? base.frames.slice(0, owned[0][0]).concat(owned)
        : owned;
    if (
      frames[0][0] !== 0 ||
      frames.some((row, i) => row[0] !== i) ||
      frames.at(-1)[0] !== r.result.finalTick
    )
      throw new Error("Incomplete tick sequence in " + r.label + ".");
    const recorded = native.find(
      (t) =>
        t.commands.length === r.result.finalTick &&
        (r.id === "learned-978" || r.id === data.baseline),
    );
    let commands = recorded?.commands;
    if (!commands && base?.commands && r.edit) {
      commands = base.commands.slice(0, r.result.finalTick);
      commands[r.edit.tick - 1] = r.edit.editedMask;
    }
    state.routes.set(r.id, { ...r, frames, commands });
  }
  state.base = state.routes.get(data.baseline);
  state.rate = data.ticksPerSecond;
  const isFork = (r) =>
    (r.edit?.action || "").startsWith("add-strafe") ||
    r.id.startsWith("strafe-");
  const all = [...state.routes.values()],
    comparable = all.filter((r) => !isFork(r)),
    labels = comparable.map((r) => [r.id, r.label]);
  options("left-route", labels, state.base.id);
  options(
    "right-route",
    labels,
    comparable.some((r) => r.id === "learned-978")
      ? "learned-978"
      : comparable.at(-1).id,
  );
  state.forks = all.filter(isFork);
  const ticks = Array.from({ length: 36 }, (_, i) => 887 + i);
  const changed =
    state.forks.find((r) => r.id === "strafe-910-right") ||
    state.forks.find(
      (r) =>
        r.result.thirdMissileHitTick !== state.base.result.thirdMissileHitTick,
    );
  options(
    "fork-tick",
    ticks.map((t) => [t, "Input " + t]),
    changed?.edit.tick ?? 900,
  );
  setForkActions(changed?.edit.action);
}
function forkChoices() {
  const tick = Number($("fork-tick").value),
    base = state.base;
  return [
    ["left", 8],
    ["right", 16],
  ].map(([dir, bit]) => {
    const originalMask = base.commands[tick - 1],
      editedMask = originalMask | bit;
    const measured = state.forks.find(
      (r) => r.edit.tick === tick && r.edit.editedMask === editedMask,
    );
    return {
      dir,
      tick,
      originalMask,
      editedMask,
      measured,
      unchanged: editedMask === originalMask,
    };
  });
}
function setForkActions(action) {
  const previous = action?.toLowerCase().includes("left")
    ? "left"
    : action?.toLowerCase().includes("right")
      ? "right"
      : $("fork-action").value;
  const choices = forkChoices();
  options(
    "fork-action",
    choices.map((x) => [
      x.dir,
      "Add strafe " + x.dir + (x.unchanged ? " · already held" : ""),
    ]),
    previous,
  );
}
let forkBlob;
function forkRoute() {
  const variant = forkChoices().find((x) => x.dir === $("fork-action").value),
    base = state.base;
  const tape = base.commands.slice(
    0,
    variant.measured?.result.firstExit ?? base.commands.length,
  );
  tape[variant.tick - 1] = variant.editedMask;
  const recording = {
    schema: "combatv2-run-v1",
    engine: "CombatV2",
    iwadSha256:
      "1d7d43be501e67d927e415e0b8f3e29c3bf33075e859721816f652a526cac771",
    level: "E1M1",
    commands: tape,
  };
  const file = $("fork-export");
  if (forkBlob) URL.revokeObjectURL(forkBlob);
  forkBlob = URL.createObjectURL(
    new Blob([JSON.stringify(recording) + "\n"], { type: "application/json" }),
  );
  file.href = forkBlob;
  file.download =
    "prooflab-E1M1-input-" + variant.tick + "-" + variant.dir + ".json";
  if (variant.unchanged) return base;
  if (variant.measured) return variant.measured;
  return {
    id: "local-edit",
    label: "Strafe " + variant.dir + " at " + variant.tick,
    unmeasured: true,
    edit: variant,
    commands: tape,
    frames: base.frames.slice(0, variant.tick),
    result: { finalTick: variant.tick - 1, firstExit: null },
    proof: null,
  };
}
function firstDifference(a, b) {
  if (!a.commands || !b.commands) return null;
  for (let i = 0; i < Math.max(a.commands.length, b.commands.length); i++)
    if (a.commands[i] !== b.commands[i]) return i + 1;
  return null;
}
function showRoute() {
  if (!state.base) return;
  const fork = state.tab === "fork";
  $("compare-choices").hidden = fork;
  $("fork-choices").hidden = !fork;
  $("turn-workbench").hidden = fork;
  txt(
    "route-title",
    fork ? "One input, two futures" : "Three ways through Hangar",
  );
  txt(
    "route-summary",
    fork
      ? "Keep the original tape, add one strafe at a chosen input, then restore the original controls. Follow the third imp missile and compare both endpoints."
      : "Put two complete recorded passages on the same game clock. The cursor follows both players through the final turn and the exit switch.",
  );

  const pair = fork
    ? [state.base, forkRoute()]
    : [$("left-route"), $("right-route")].map((s) => state.routes.get(s.value));
  state.selected = pair;
  if (fork && state.forks.length) {
    const delayed = state.forks.filter(
      (r) =>
        r.result.thirdMissileHitTick > state.base.result.thirdMissileHitTick,
    ).length;
    txt(
      "route-summary",
      "Add one strafe to the original inputs. Of " +
        state.forks.length +
        " measured edits, " +
        delayed +
        " delayed the third imp fireball. Choose an edit, then jump between the two recorded impacts.",
    );
  }
  const [a, b] = pair;
  state.diff = firstDifference(a, b);
  state.end = Math.max(a.result.finalTick, b.result.finalTick);
  state.range = bounds(pair.flatMap((r) => r.frames.map((f) => [f[1], f[2]])));
  $("route-time").max = state.end;
  pair.forEach((r, i) => {
    screens[i].title.textContent = r.label;
    r.cameraThrough =
      (firstDifference(state.base, r) ?? r.result.finalTick + 1) - 1;
  });
  txt("jump-input", state.diff ? "Input " + state.diff : "Identical inputs");
  $("jump-input").disabled = state.diff == null;
  state.impact = b.result.thirdMissileHitTick ?? a.result.thirdMissileHitTick;
  $("jump-impact").hidden = state.impact == null;
  txt("jump-impact", "Missile contact · " + state.impact);
  const events = new Map();
  for (const r of new Set(pair))
    for (const e of r.events || []) {
      const key = [e.tick, e.kind, e.detail].join("/");
      if (!events.has(key)) events.set(key, { ...e, owners: [] });
      events.get(key).owners.push(r.label);
    }
  const ordered = [...events.values()].sort((x, y) => x.tick - y.tick);
  options(
    "route-events",
    [
      ["", "Choose an event"],
      ...ordered.map((e) => [
        e.tick,
        e.tick +
          " · " +
          (e.owners.length > 1 ? "Both" : e.owners[0]) +
          " · " +
          e.detail,
      ]),
    ],
    "",
  );
  const proofs = $("route-proofs");
  proofs.replaceChildren();
  if ($("route-lean").open) readStatements();
  for (const r of new Set(pair))
    if (r.proof?.url)
      link(proofs, r.label + " · " + r.proof.label, new URL(r.proof.url, url), r.proof.theorem);
  for (const file of new Set(pair.map((r) => r.proof?.receipt).filter(Boolean)))
    link(
      proofs,
      file.includes("historical")
        ? "Historical proof receipt"
        : "Edited replay receipt",
      new URL(file, url),
    );
  link(
    proofs,
    "Recorded input masks",
    new URL("../../game/native-routes.json", location.href),
  );
  const edit =
    state.diff && a.commands && b.commands
      ? " Input " +
        state.diff +
        " changes " +
        maskText(a.commands[state.diff - 1]) +
        " to " +
        maskText(b.commands[state.diff - 1]) +
        "."
      : "";
  const impactSummary = (r) =>
    r.result.thirdMissileHitTick != null
      ? "tick " +
        r.result.thirdMissileHitTick +
        " (" +
        r.result.thirdMissileHitDamage +
        " raw damage)"
      : "no observed hit";
  const result = (r) =>
    r.unmeasured
      ? "measured shared prefix through " + r.result.finalTick
      : r.result.firstExit == null
        ? "no exit through " + r.result.finalTick
        : "exit " + r.result.firstExit;
  txt(
    "route-note",
    a === b
      ? "Both windows show the same recording."
      : a.label +
          " — " +
          result(a) +
          ". " +
          b.label +
          " — " +
          result(b) +
          "." +
          edit +
          (fork && !b.unmeasured
            ? " Original impact at " +
              impactSummary(a) +
              ". Edited impact at " +
              impactSummary(b) +
              "."
            : "") +
          (b.unmeasured
            ? " The edited outcome awaits measurement. Save the tape and import it in the native companion to play the full branch."
            : ""),
  );
  seek(
    state.diff != null
      ? Math.max(0, state.diff - (fork ? 5 : 12))
      : fork
        ? Math.max(0, (state.impact ?? 900) - 16)
        : 0,
  );
}
async function readStatements() {
  const pair = state.selected,
    box = $("route-statements");
  box.replaceChildren();
  for (const r of new Set(pair)) {
    const target = r.proof?.url;
    if (!target || !target.endsWith(".lean") || !r.proof.theorem) continue;
    const file = new URL(target, url);
    const statement = await declaration(file, r.proof.theorem);
    if (state.selected !== pair) return;
    if (!statement) continue;
    const label = el("p", r.label + " · " + r.proof.label),
      pre = el("pre"),
      code = el("code", statement.excerpt.join("\n"));
    pre.append(code);
    box.append(label, pre);
  }
  if (!box.childElementCount)
    box.append(
      el(
        "p",
        "Use the linked source and receipts for the full propositions checked for these records.",
      ),
    );
}
$("route-lean").ontoggle = () => {
  if ($("route-lean").open) readStatements();
};
const filmBlobs = new Map();
function seekableFilm(video, time) {
  if (video.src.startsWith("blob:") || !time) return true;
  if (
    video.seekable.length &&
    video.seekable.end(video.seekable.length - 1) >= time
  )
    return true;
  const src = video.dataset.source;
  if (!filmBlobs.has(src))
    filmBlobs.set(
      src,
      fetch(src, { cache: "no-store" }).then(async (res) => {
        if (!res.ok) throw Error("Recorded camera could not be loaded.");
        return URL.createObjectURL(await res.blob());
      }),
    );
  if (!video.dataset.fallback) {
    video.dataset.fallback = "loading";
    filmBlobs
      .get(src)
      .then((blob) => {
        if (video.dataset.source === src) video.src = blob;
      })
      .catch(() => {
        state.failedClips.add(src);
        draw();
      });
  }
  return false;
}
function filmAt(r, t) {
  const clip =
    state.clips[r.id] ||
    (r.id === "early-use-992" ? state.clips["early-992"] : null);
  if (clip && t >= clip.firstTick && t <= clip.lastTick)
    return {
      src: new URL(clip.file, cameraIndex).href,
      frame: t - clip.firstTick,
    };
  if (t <= r.cameraThrough)
    return { src: new URL("../e1m1.mp4", location.href).href, frame: t };
  return null;
}
function draw() {
  if (!state.selected.length || state.tab === "rng" || $("route-panel").hidden)
    return;
  const rows = state.selected.map(
    (r) => r.frames[Math.min(state.tick, r.frames.length - 1)],
  );
  const around = rows.flatMap((row) => [
    [row[1], row[2]],
    ...(row[4] != null && ["flying", "exploding"].includes(row[6])
      ? [[row[4], row[5]]]
      : []),
  ]);
  const small = bounds(around);
  small.dx = Math.max(small.dx * 1.14, 124);
  small.dy = Math.max(small.dy * 1.14, 96);
  const range = $("plot-scale").value === "all" ? state.range : small;
  state.selected.forEach((r, i) => {
    const row = rows[i],
      s = screens[i],
      held = row[0] !== state.tick,
      mask = r.commands?.[row[0] - 1];
    const clip = state.film ? filmAt(r, row[0]) : null;
    const cameraFilm = clip && !state.failedClips.has(clip.src);
    s.video.hidden = !cameraFilm;
    s.canvas.hidden = cameraFilm;
    if (cameraFilm) {
      if (s.video.dataset.source !== clip.src) {
        s.video.dataset.source = clip.src;
        delete s.video.dataset.fallback;
        s.video.src = clip.src;
      }
      s.video.setAttribute(
        "aria-label",
        r.label + ", recorded first-person camera at tick " + row[0],
      );
      if (s.video.readyState >= 1) {
        const time = (clip.frame + 0.15) / state.rate,
          delta = Math.abs(s.video.currentTime - time);
        if (
          delta > (state.running ? 0.09 : 0.002) &&
          seekableFilm(s.video, time)
        )
          s.video.currentTime = time;
        s.video.playbackRate = state.speed;
        if (state.running && !held && s.video.paused)
          s.video.play().catch(() => {});
        if ((!state.running || held) && !s.video.paused) s.video.pause();
      }
    } else if (!s.video.paused) s.video.pause();
    if (!cameraFilm && state.camera && state.world)
      drawCamera(s.canvas, state.world, row, colors[i]);
    else if (!cameraFilm)
      drawTrack(s.canvas, r, row, range, colors[i], state.world);
    s.mode.textContent =
      held && r.unmeasured
        ? "SHARED PREFIX"
        : cameraFilm
          ? "RECORDED CAMERA"
          : state.camera
            ? "LOCAL GEOMETRY"
            : "MEASURED PATH";
    const exit = r.result.firstExit != null && row[0] >= r.result.firstExit;
    s.stats.textContent =
      (held && r.unmeasured ? "Last shared · " : held ? "Held · " : "") +
      "t " +
      row[0] +
      " · " +
      row[3] +
      " HP" +
      (exit ? " · exit" : "");
    s.cmd.textContent =
      maskText(mask) +
      (row[6] === "flying" || row[6] === "exploding"
        ? " · missile " + row[6]
        : "");
    s.canvas.setAttribute(
      "aria-label",
      r.label +
        ", tick " +
        row[0] +
        ", x " +
        row[1].toFixed(1) +
        ", y " +
        row[2].toFixed(1) +
        ", " +
        row[3] +
        " health, " +
        (state.camera ? "first-person schematic" : "overhead trajectory"),
    );
  });
  $("route-time").value = state.tick;
  $("route-time").setAttribute(
    "aria-valuetext",
    "Tick " + state.tick + " of " + state.end,
  );
  $("route-clock").value =
    "Tick " +
    state.tick +
    " / " +
    state.end +
    " · " +
    (state.tick / state.rate).toFixed(2) +
    " s";
}
let frame = 0,
  last = 0,
  fraction = 0;
function stop() {
  state.running = false;
  screens.forEach((s) => s.video.pause());
  cancelAnimationFrame(frame);
  txt("route-play", "Play");
}
function seek(n) {
  stop();
  state.tick = Math.max(0, Math.min(state.end, Math.round(n)));
  draw();
}
function advance(now) {
  if (!state.running) return;
  fraction += (Math.min(200, now - last) * state.rate * state.speed) / 1000;
  last = now;
  const steps = Math.floor(fraction);
  fraction -= steps;
  if (steps) {
    state.tick = Math.min(state.end, state.tick + steps);
    draw();
  }
  if (state.tick >= state.end) {
    stop();
    return;
  }
  frame = requestAnimationFrame(advance);
}
$("route-play").onclick = () => {
  if (state.running) {
    stop();
    return;
  }
  if (state.tick >= state.end) seek(0);
  state.running = true;
  last = performance.now();
  fraction = 0;
  txt("route-play", "Pause");
  frame = requestAnimationFrame(advance);
};
$("route-speed").onchange = () =>
  (state.speed = Number($("route-speed").value));
$("route-time").oninput = () => seek(Number($("route-time").value));
$("route-prev").onclick = () => seek(state.tick - 1);
$("route-next").onclick = () => seek(state.tick + 1);
$("jump-input").onclick = () => seek(state.diff);
$("jump-impact").onclick = () => seek(state.impact);
$("jump-end").onclick = () => seek(state.end);
$("route-events").onchange = () => {
  if ($("route-events").value !== "") seek(Number($("route-events").value));
};
$("left-route").onchange =
  $("right-route").onchange =
  $("fork-action").onchange =
    showRoute;
$("fork-tick").onchange = () => {
  setForkActions();
  showRoute();
};
$("plot-scale").onchange = draw;
function picture(film, camera) {
  state.film = film;
  state.camera = camera && !!state.world;
  $("telemetry-view").setAttribute(
    "aria-pressed",
    String(!state.film && !state.camera),
  );
  $("recorded-view").setAttribute("aria-pressed", String(state.film));
  txt(
    "view-note",
    state.film
      ? "The cameras share the 35 Hz game clock. Each window uses recorded frames for its own inputs. Where footage ends, the window follows the measured trajectory."
      : state.camera
        ? "First-person schematic reconstructed from the local map and recorded pose."
        : "Arrows show player headings. Orange points track the third imp fireball. The dashed line is the remaining recorded path.",
  );
  $("plot-scale").disabled = state.camera;
  for (const [id, value] of [
    ["track-view", !state.camera && !state.film],
    ["camera-view", state.camera],
  ])
    $(id).setAttribute("aria-pressed", String(value));
  draw();
}
function setCamera(on) {
  picture(false, on);
}
$("telemetry-view").onclick = () => picture(false, false);
$("recorded-view").onclick = () => picture(true, false);
$("track-view").onclick = () => setCamera(false);
$("camera-view").onclick = () => setCamera(true);
$("local-iwad").onchange = async () => {
  const file = $("local-iwad").files[0];
  if (!file) return;
  try {
    const world = await openWorld(file);
    state.world = world;
    $("camera-view").disabled = false;
    txt(
      "world-status",
      "Matched shareware v1.9 by SHA-256. Showing " +
        world.length +
        " local linedefs.",
    );
    setCamera(true);
  } catch (err) {
    state.world = null;
    $("camera-view").disabled = true;
    setCamera(false);
    txt("world-status", err.message);
  }
};
let rng;
function showTab(tab) {
  stop();
  rng?.pause();
  state.tab = ["compare", "fork", "rng"].includes(tab) ? tab : "compare";
  document
    .querySelectorAll("[data-tab]")
    .forEach((b) =>
      b.setAttribute("aria-pressed", String(b.dataset.tab === state.tab)),
    );
  $("route-panel").hidden = !state.base || state.tab === "rng";
  $("rng-panel").hidden = !rng || state.tab !== "rng";
  const problem = state.tab === "rng" ? state.rngError : state.routeError;
  $("load-status").hidden = !problem;
  if (problem) txt("load-status", problem);
  if (state.tab === "rng") {
    rng?.redraw();
  } else {
    showRoute();
    if (tab === "turn-workbench" && state.base) {
      const workbench = $("turn-workbench");
      workbench.open = true;
      requestAnimationFrame(() => workbench.scrollIntoView({ block: "start" }));
    }
  }
}
for (const b of document.querySelectorAll("[data-tab]"))
  b.onclick = () => {
    if (location.hash.slice(1) !== b.dataset.tab) location.hash = b.dataset.tab;
    else showTab(b.dataset.tab);
  };
window.addEventListener("hashchange", () => showTab(location.hash.slice(1)));
document.addEventListener("visibilitychange", () => {
  if (document.hidden) stop();
});
new ResizeObserver(() => {
  draw();
  if (state.tab === "rng") rng?.redraw();
}).observe($("main"));
const [routes, random, cameras] = await Promise.allSettled([
  Promise.all([load(url), load("../../game/native-routes.json")]).then(
    ([data, tapes]) => prepRoutes(data, tapes),
  ),
  setupRng(),
  load(cameraIndex),
]);
if (cameras.status === "fulfilled") state.clips = cameras.value.clips ?? {};
if (routes.status === "rejected")
  state.routeError =
    "The recorded routes could not be opened. " + routes.reason.message;
if (random.status === "fulfilled") rng = random.value;
else
  state.rngError =
    "The RNG evidence could not be opened. " + random.reason.message;
showTab(location.hash.slice(1));

picture(true, false);
