import { drawSamples } from "./draw.mjs";
const $ = (id) => document.getElementById(id);
const url = new URL("../../evidence/experiments/rng.json", location.href);
const hex = (n) => n.toString(16).toUpperCase().padStart(2, "0");
const result = (r) =>
  r.won
    ? "Exit"
    : r.errorTick != null
      ? "Physics error"
      : r.firstDeathTick != null
        ? "Died"
        : "No exit";
const palette = (r) =>
  r.won
    ? "won"
    : r.errorTick != null
      ? "error"
      : r.firstDeathTick != null
        ? "dead"
        : "";
function el(tag, text) {
  const node = document.createElement(tag);
  if (text != null) node.textContent = text;
  return node;
}
function link(root, label, path) {
  if (!path) return;
  const l = el("a", label);
  l.href = new URL(path, url);
  root.append(l);
}
export async function setupRng() {
  const cameraURL = new URL("camera/rng.json", location.href);
  const cameraRequest = fetch(cameraURL)
    .then(async (r) => (r.ok ? (await r.json()).levels : {}))
    .catch(() => ({}));
  const res = await fetch(url);
  if (!res.ok) throw new Error(res.statusText);
  const report = await res.json();
  const levels = report.levels ?? [],
    byId = new Map(levels.map((l) => [l.level, l]));
  if (!levels.length)
    throw new Error("No measured levels have been published.");
  const s = {
    level: null,
    rows: new Map(),
    selected: null,
    samples: [],
    download: null,
    baselineSamples: [],
    frames: [],
    baseFrames: new Map(),
    sample: 0,
    event: 0,
  };
  const cameras = await cameraRequest;
  const player = $("rng-video"),
    media = $("rng-media");
  let callback = 0,
    desiredTick = null,
    lastMediaTick = -1,
    lastClip = null;
  function selectFilm(l, i) {
    const clip = cameras?.[l.level]?.[i] ?? null;
    if (lastClip === clip) return;
    const wasOpen = media.open;
    lastClip = clip;
    lastMediaTick = -1;
    desiredTick = null;
    player.pause();
    player.removeAttribute("src");
    player.load();
    media.hidden = !clip;
    if (!clip) {
      media.open = false;
      return;
    }
    player.setAttribute(
      "aria-label",
      l.level + " gameplay RNG index " + i + ", native recorded camera",
    );
    if (wasOpen) startFilm();
  }
  function startFilm() {
    if (!lastClip || !media.open) return;
    if (!player.hasAttribute("src"))
      player.src = new URL(lastClip.file, cameraURL).href;
    if (s.frames.length) {
      const i = s.preferredTick == null ? 0 : s.sample;
      setSample(i, "manual");
    }
  }
  function setFilmTick(t) {
    if (!lastClip || !media.open) return;
    desiredTick = Math.max(lastClip.firstTick, Math.min(lastClip.lastTick, t));
    if (player.readyState >= 1) {
      const seconds = (desiredTick - lastClip.firstTick + 0.15) / 35;
      if (Math.abs(player.currentTime - seconds) > 0.002)
        player.currentTime = seconds;
    }
  }
  function showFilmTick(seconds) {
    if (!lastClip || !media.open || media.hidden || !s.frames.length) return;
    const t = Math.min(
      lastClip.lastTick,
      lastClip.firstTick + Math.floor(seconds * 35 + 0.0001),
    );
    if (t === lastMediaTick) return;
    lastMediaTick = t;
    const i = frameAt(t);
    setSample(i, "video");
    $("rng-video-tick").value =
      "Camera tick " + t + " · measured sample " + s.frames[i].tick;
  }
  function frameAt(t) {
    let lo = 0,
      hi = s.frames.length - 1;
    while (lo < hi) {
      const mid = Math.ceil((lo + hi) / 2);
      if (s.frames[mid].tick <= t) lo = mid;
      else hi = mid - 1;
    }
    return lo;
  }
  function watchFrame(now, metadata) {
    callback = 0;
    showFilmTick(metadata.mediaTime);
    if (!player.paused) callback = player.requestVideoFrameCallback(watchFrame);
  }
  player.onplay = () => {
    if (player.requestVideoFrameCallback && !callback)
      callback = player.requestVideoFrameCallback(watchFrame);
  };
  player.onpause = () => {
    if (callback && player.cancelVideoFrameCallback)
      player.cancelVideoFrameCallback(callback);
    callback = 0;
  };
  player.onseeked = () => showFilmTick(player.currentTime);
  player.ontimeupdate = () => {
    if (!player.requestVideoFrameCallback) showFilmTick(player.currentTime);
  };
  player.onloadedmetadata = () => {
    if (desiredTick != null) setFilmTick(desiredTick);
  };
  media.ontoggle = () => {
    if (media.open) startFilm();
    else player.pause();
  };
  document.addEventListener("visibilitychange", () => {
    if (document.hidden) player.pause();
  });
  const detailed = new Map();
  function trackFor(file, index) {
    const id = file.phaseTrackIds[index],
      rows = file.tracks[id] || [],
      col = Object.fromEntries(file.columns.map((c, n) => [c, n]));
    return rows.map((r) => ({
      tick: r[col.tick],
      x: r[col.xRaw] / 65536,
      y: r[col.yRaw] / 65536,
      angle: (r[col.angleRaw] * 360) / 2 ** 32,
      health: r[col.health],
      shots: r[col.shots],
      kills: r[col.kills],
      launches: r[col.launches],
      exit: r[col.exit],
      error: r[col.error],
    }));
  }
  function getDetailed(l) {
    if (!l.trackFile) return;
    if (!detailed.has(l.level))
      detailed.set(
        l.level,
        fetch(new URL(l.trackFile, url)).then(async (res) => {
          if (!res.ok) throw Error(res.statusText);
          const file = await res.json();
          if (
            file.level !== l.level ||
            file.schema !== "doom-rng-phase-tracks-v1"
          )
            throw Error("Unexpected phase track file.");
          return file;
        }),
      );
    return detailed.get(l.level);
  }
  $("rng-level").replaceChildren(
    ...levels.map(
      (l) =>
        new Option(
          l.level +
            (l.level === "E1M1"
              ? " · Hangar"
              : l.level === "E1M2"
                ? " · Nuclear Plant"
                : ""),
          l.level,
        ),
    ),
  );
  function board() {
    const l = (s.level = byId.get($("rng-level").value)),
      rows = (s.rows = new Map(l.outcomes.map((r) => [r.index, r]))),
      grid = $("rng-grid");
    grid.replaceChildren();
    for (let i = 0; i < 256; i++) {
      const r = rows.get(i),
        b = el("button", hex(i));
      b.dataset.index = i;
      b.tabIndex = -1;
      if (r) {
        b.className = palette(r);
        b.title = "Index " + i + " · " + result(r) + " · " + r.health + " HP";
        b.setAttribute("aria-label", b.title);
        b.onclick = () => select(i);
        b.onkeydown = (e) => {
          const move = {
            ArrowLeft: -1,
            ArrowRight: 1,
            ArrowUp: -16,
            ArrowDown: 16,
          }[e.key];
          if (!move && e.key !== "Home" && e.key !== "End") return;
          e.preventDefault();
          let next =
            e.key === "Home"
              ? Math.min(...rows.keys())
              : e.key === "End"
                ? Math.max(...rows.keys())
                : i + move;
          while (next >= 0 && next < 256 && !rows.has(next)) next += move || 1;
          if (rows.has(next)) {
            select(next);
            grid.children[next].focus();
          }
        };
      } else {
        b.disabled = true;
        b.title = "Index " + i + " · awaiting replay";
        b.setAttribute("aria-label", b.title);
      }
      grid.append(b);
    }
    colorBoard();
    const ordinary = rows.get(l.baselineIndex);
    const differs = (r) =>
      ordinary &&
      (r.won !== ordinary.won ||
        r.firstExitTick !== ordinary.firstExitTick ||
        r.health !== ordinary.health ||
        r.shots !== ordinary.shots);
    const found = new Set(),
      examples = [];
    for (const [label, test] of [
      ["First death", (r) => r.firstDeathTick != null],
      [
        "Alive without exit",
        (r) => !r.won && r.firstDeathTick == null && r.errorTick == null,
      ],
      ["Changed endpoint", differs],
      ["First alternate", () => true],
    ]) {
      const row = l.outcomes.find(
        (r) => r.index !== l.baselineIndex && !found.has(r.index) && test(r),
      );
      if (row) {
        found.add(row.index);
        examples.push(new Option(label + " · " + row.index, row.index));
      }
    }
    $("rng-alternate").replaceChildren(
      new Option("Choose a phase", ""),
      ...examples,
    );
    $("rng-examples").hidden = !examples.length;
    $("rng-index").disabled = !rows.size;
    $("rng-baseline").disabled = !rows.has(l.baselineIndex);
    select(
      rows.has(l.baselineIndex) ? l.baselineIndex : rows.keys().next().value,
    );
  }
  function colorBoard() {
    const l = s.level,
      mode = $("rng-color").value,
      buttons = $("rng-grid").children;
    const wins = l.outcomes.filter((r) => r.won).length,
      dead = l.outcomes.filter((r) => r.firstDeathTick != null).length,
      errors = l.outcomes.filter((r) => r.errorTick != null).length,
      missed = l.outcomes.filter(
        (r) => !r.won && r.firstDeathTick == null && r.errorTick == null,
      ).length;
    const hp = l.outcomes.map((r) => r.health),
      minHP = Math.min(...hp),
      maxHP = Math.max(...hp);
    for (const r of l.outcomes) {
      const b = buttons[r.index];
      b.style.background = "";
      b.style.borderColor = "";
      const t =
        mode === "health"
          ? (r.health - minHP) / Math.max(1, maxHP - minHP)
          : r.divergenceTick == null
            ? null
            : r.divergenceTick / l.commands;
      if (mode !== "outcome") {
        b.style.background =
          t == null
            ? "#35413f"
            : "hsl(" +
              Math.round(mode === "health" ? 9 + 94 * t : 208 - 168 * t) +
              " 37% 27%)";
        b.style.borderColor =
          t == null
            ? "#5e7069"
            : "hsl(" +
              Math.round(mode === "health" ? 9 + 94 * t : 208 - 168 * t) +
              " 35% 52%)";
      }
    }
    const meaning =
      mode === "health"
        ? "Final health ranges from " +
          minHP +
          " to " +
          maxHP +
          " HP. Red indicates the low end and green the high end."
        : mode === "divergence"
          ? "Blue marks early divergence and amber marks late divergence. Gray-green means no divergence was observed."
          : "Green cells reached a live exit.";
    const counts = [
      l.outcomes.length + " / 256 measured",
      wins + " " + (wins === 1 ? "exit" : "exits"),
      dead + " " + (dead === 1 ? "death" : "deaths"),
      missed + " alive without exit",
      errors + " physics " + (errors === 1 ? "error" : "errors"),
    ];
    $("rng-legend").textContent =
      counts.join(" · ") +
      ". " +
      (l.outcomes.length ? meaning : "") +
      (l.outcomes.length < 256 ? " Dimmed cells await replay." : "");
  }
  $("rng-color").onchange = colorBoard;
  $("rng-alternate").onchange = () => {
    if ($("rng-alternate").value !== "")
      select(Number($("rng-alternate").value));
  };
  function select(i) {
    const l = s.level,
      r = s.rows.get(i);
    $("rng-fields").replaceChildren();
    $("rng-evidence").replaceChildren();
    $("rng-trace-caption").textContent = "";
    if (s.download) {
      URL.revokeObjectURL(s.download);
      s.download = null;
    }
    for (const button of $("rng-grid").children) {
      button.setAttribute(
        "aria-pressed",
        String(Number(button.dataset.index) === i),
      );
      button.tabIndex = Number(button.dataset.index) === i && r ? 0 : -1;
    }
    s.selected = i;
    $("rng-alternate").value = Array.from($("rng-alternate").options).some(
      (option) => option.value === String(i),
    )
      ? String(i)
      : "";
    s.samples = [];
    s.frames = [];
    s.preferredTick = null;
    selectFilm(l, i);
    if (i != null) $("rng-index").value = i;
    const evidence = $("rng-evidence");
    link(evidence, "Source", l.source || report.source);
    link(evidence, "Run receipt", l.receipt || report.receipt);
    link(evidence, "All sampled trajectories", l.trackFile);
    if (!r) {
      $("rng-playback").hidden = true;
      $("rng-heading").textContent =
        i != null
          ? "Index " + i + " · awaiting replay"
          : "Awaiting measured replays";
      $("rng-explain").textContent =
        "No outcome has been recorded for this index. Choose a measured cell to inspect its actual trajectory.";
      $("rng-trace").hidden = true;
      return;
    }
    $("rng-heading").textContent = "Index " + r.index + " · " + result(r);
    const fields = [
      ["Tape", l.commands + " inputs"],
      ["First live exit", r.firstExitTick ?? "None observed"],
      ["First death", r.firstDeathTick ?? "None observed"],
      ["First physics error", r.errorTick ?? "None observed"],
      ["Final health", r.health + " HP"],
      ["Shots", r.shots],
    ];
    if (r.divergenceTick != null)
      fields.push(["First divergence", r.divergenceTick]);
    if (Number.isFinite(r.x) && Number.isFinite(r.y))
      fields.push(["Final x, y", r.x.toFixed(1) + ", " + r.y.toFixed(1)]);
    for (const [name, value] of fields)
      $("rng-fields").append(el("dt", name), el("dd", String(value)));
    const trace = l.traces?.find((t) => t.index === i);
    const samples = trace?.frames?.length ? trace.frames : r.samples || [];
    const baseline =
      l.traces?.find((t) => t.index === l.baselineIndex)?.frames ||
      s.rows.get(l.baselineIndex)?.samples ||
      [];
    showSamples(samples, baseline, r);
    const detailedRequest = getDetailed(l);
    if (detailedRequest)
      detailedRequest
        .then((file) => {
          if (s.level !== l || s.selected !== i) return;
          showSamples(trackFor(file, i), trackFor(file, l.baselineIndex), r);
        })
        .catch(() => {
          if (s.level === l && s.selected === i)
            $("rng-trace-caption").textContent +=
              " Detailed phase track unavailable. Showing embedded samples.";
        });
    const qualification =
      typeof report.trust === "string"
        ? report.trust
        : (report.trust?.label ?? "");
    $("rng-explain").textContent =
      (i === l.baselineIndex
        ? "Ordinary post-spawn index. "
        : "Replaced post-spawn gameplay index. ") + qualification;
    const record = {
      schema: report.schema,
      level: l.level,
      scope: report.scope,
      trust: report.trust,
      commands: l.commands,
      commandSha256: l.commandSha256,
      iwadSha256: l.iwadSha256,
      baselineIndex: l.baselineIndex,
      outcome: r,
      trace: trace ?? null,
      trackFile: l.trackFile ? new URL(l.trackFile, url).href : null,
      trackIndex: i,
    };
    s.download = URL.createObjectURL(
      new Blob([JSON.stringify(record, null, 2) + "\n"], {
        type: "application/json",
      }),
    );
    const dl = el("a", "Save this case");
    dl.href = s.download;
    dl.download = l.level + "-rng-" + i + ".json";
    evidence.append(dl);
    $("rng-trace").setAttribute(
      "aria-label",
      l.level +
        " index " +
        i +
        ", " +
        s.samples.length +
        " measured positions, " +
        result(r) +
        ", " +
        r.health +
        " health",
    );
    redraw();
  }
  function showSamples(samples, baseline, r) {
    const valid = (f) => Number.isFinite(f?.x) && Number.isFinite(f?.y);
    s.frames = samples.filter(valid);
    if (!s.frames.length && valid(r))
      s.frames = [{ ...r, tick: s.level.commands }];
    s.samples = s.frames.map((f) => [f.x, f.y]);
    s.baseFrames = new Map(baseline.map((f) => [f.tick, f]));
    s.baselineSamples =
      r.index === s.level.baselineIndex
        ? []
        : baseline.filter(valid).map((f) => [f.x, f.y]);
    $("rng-trace").hidden = !s.samples.length;
    $("rng-playback").hidden = !s.frames.length;
    $("rng-trace-caption").textContent =
      s.samples.length > 1
        ? s.samples.length +
          " measured positions. Orange marks spawn. Green marks the selected sample." +
          (s.baselineSamples.length
            ? " The dashed path follows the ordinary run."
            : "")
        : "Recorded endpoint in map units.";
    $("rng-time").max = Math.max(0, s.frames.length - 1);
    s.event = s.frames.findIndex((f) => f.tick === r.divergenceTick);
    if (s.event < 0)
      s.event = s.frames.findIndex(
        (f, j) => j > 0 && f.health < s.frames[j - 1].health,
      );
    $("rng-event").disabled = s.event < 0;
    $("rng-event").textContent =
      r.divergenceTick != null
        ? "First divergence"
        : "First sampled health loss";
    const initial =
      s.preferredTick != null
        ? frameAt(s.preferredTick)
        : media.open
          ? 0
          : s.frames.length - 1;
    setSample(initial, "initial");
  }
  function setSample(n, origin = "manual") {
    s.sample = Math.max(0, Math.min(n, s.frames.length - 1));
    $("rng-time").value = s.sample;
    const f = s.frames[s.sample];
    if (!f) return;
    if (origin === "manual") {
      s.preferredTick = f.tick;
      player.pause();
      setFilmTick(f.tick);
    }
    if (origin === "initial" && media.open) setFilmTick(f.tick);
    const b = s.baseFrames.get(f.tick);
    const xy = [f.x, f.y].map((n) => n.toFixed(1)).join(", ");
    $("rng-frame").textContent =
      "Tick " +
      f.tick +
      " · " +
      f.health +
      " HP · (" +
      xy +
      ")" +
      (f.shots != null ? " · " + f.shots + " shots" : "") +
      (f.exit ? " · exit" : "") +
      (s.selected !== s.level.baselineIndex && b
        ? " | Ordinary run at this tick: " +
          b.health +
          " HP · (" +
          b.x.toFixed(1) +
          ", " +
          b.y.toFixed(1) +
          ")"
        : "");
    $("rng-time").setAttribute(
      "aria-valuetext",
      "Recorded sample at tick " + f.tick,
    );
    $("rng-prev").disabled = s.sample === 0;
    $("rng-next").disabled = s.sample === s.frames.length - 1;
    redraw();
  }
  function redraw() {
    if (s.samples.length && !$("rng-panel").hidden)
      drawSamples($("rng-trace"), s.samples, s.baselineSamples, s.sample);
  }
  $("rng-prev").onclick = () => setSample(s.sample - 1);
  $("rng-next").onclick = () => setSample(s.sample + 1);
  $("rng-event").onclick = () => setSample(s.event);
  $("rng-time").oninput = () => setSample(Number($("rng-time").value));
  $("rng-level").onchange = board;
  $("rng-index").onchange = () => {
    const n = Number($("rng-index").value);
    if (Number.isInteger(n) && n >= 0 && n < 256) select(n);
    else $("rng-index").value = s.selected ?? "";
  };
  $("rng-baseline").onclick = () => select(s.level.baselineIndex);
  board();
  return { redraw, pause: () => player.pause() };
}
