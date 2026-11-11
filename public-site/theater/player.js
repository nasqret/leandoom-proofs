import { createTickView } from "./tick-view.js";
import { githubLeanSource } from "../assets/lean-source.mjs";

const asset = (name) => new URL(name, import.meta.url);
const make = (tag, text, cls) => {
  const element = document.createElement(tag);
  if (cls) element.className = cls;
  if (text !== undefined) element.textContent = text;
  return element;
};
function displayLine(number, code, active) {
  const row = make("div", undefined, "codeline");
  if (active) row.dataset.current = "";
  const line = make("code");
  for (const word of code.split(
    /(\b(?:theorem|by|rw|decide|kernel|exact|rfl|Nat|true|false|have|simp)\b|\b\d+\b)/,
  )) {
    line.append(
      word.match(/^\d+$/)
        ? make("span", word, "number")
        : word.match(/^\w+$/)
          ? make("span", word, "token")
          : document.createTextNode(word),
    );
  }
  row.append(make("span", String(number), "lineno"), line);
  return row;
}
function theater(root, films, routes) {
  root.className = "theater";
  root.tabIndex = 0;
  root.setAttribute("role", "region");
  root.setAttribute("aria-label", "Proof Theater. Use the left and right arrows to step through game ticks.");
  root.innerHTML = `
    <div class="film-tabs" aria-label="Film selection"></div>
    <div class="screens">
      <section class="codepanel" aria-label="Lean replay and proofs">
        <div class="panel-title"><span><i></i>Lean replay</span><span class="proof-tier"></span></div>
        <div class="view-switch" role="group" aria-label="Code view">
          <button data-view="ticks" aria-pressed="true">Follow ticks</button>
          <button data-view="chapter" aria-pressed="false">Chapter proof</button>
        </div>
        <div data-tick-panel></div>
        <div class="editor" hidden></div>
        <div class="chapter-note"><strong></strong><span></span></div>
      </section>
      <section aria-label="Gameplay">
        <div class="panel-title"><span><i></i>Player camera</span><span class="counter"></span></div>
        <div class="video"><video playsinline muted preload="auto" aria-label="Recorded gameplay"></video></div>
      </section>
    </div>
    <div class="toolbar">
      <button data-act="play">▶ Play</button>
      <div class="tick-step" role="group" aria-label="Step one game tick">
        <button data-act="tick-prev" aria-label="Previous tick" title="Previous tick (left arrow)">−1 tick</button>
        <button data-act="tick-next" aria-label="Next tick" title="Next tick (right arrow)">+1 tick</button>
      </div>
      <input type="range" aria-label="Film frame" step="1" min="0" value="0">
      <label>Speed <select class="rate"><option>0.25</option><option>0.5</option><option selected>1</option><option>1.5</option><option>2</option></select>×</label>
    </div>
    <div class="chapterbar">
      <label class="route-control" hidden>Route <select class="routes"></select></label>
      <div class="chapter-navigation">
        <label>Event <select class="chapters"></select></label>
        <button data-act="prev" aria-label="Previous event" title="Previous event">◀</button>
        <button data-act="next" aria-label="Next event" title="Next event">▶</button>
      </div>
      <a class="edition-evidence">Level evidence ↗</a><a class="route-inputs" hidden>Recorded inputs ↗</a><a class="download" download>Download silent film ↓</a>
    </div>`;
  const find = (selector) => root.querySelector(selector);
  const video = find("video"), tabs = find(".film-tabs"), timeline = find("input"),
    picker = find(".chapters"), routePicker = find(".routes"),
    counter = find(".counter"), editor = find(".editor"), tickPanel = find("[data-tick-panel]"),
    previousTick = find("[data-act=tick-prev]"), nextTick = find("[data-act=tick-next]");
  const tickView = createTickView(tickPanel);
  let film, levelIndex, frameRequest, pendingFrame, traceRequest;
  let last = -1, displayedFrame = 0;
  async function loadTrace(selected) {
    traceRequest?.abort();
    const request = new AbortController();
    traceRequest = request;
    tickView.setFilm(selected);
    try {
      const suffix = selected.route ? "-" + selected.route : "";
      const response = await fetch(asset("ticks/" + selected.id.toLowerCase() + suffix + ".json"),
        { signal: request.signal });
      if (!response.ok) throw Error("Tick trace unavailable");
      const trace = await response.json();
      if (request.signal.aborted) return;
      if (trace.schema !== "doom-theater-ticks-v1" ||
          trace.level !== selected.id || trace.route !== (selected.route || "primary") ||
          trace.tick !== selected.tick || trace.rows.length !== selected.tick + 1 ||
          trace.engine !== selected.engine || trace.filmSha256 !== selected.sha256 ||
          trace.commandsU32LESha256 !== selected.commandsU32LESha256 ||
          (selected.recordingSha256 && trace.recordingSha256 !== selected.recordingSha256)) {
        throw Error("Tick trace and film differ");
      }
      tickView.setTrace(trace);
      tickView.render(displayedFrame);
    } catch {
      if (!request.signal.aborted) tickView.unavailable();
    }
  }
  function showView(mode) {
    tickPanel.hidden = mode !== "ticks";
    editor.hidden = mode !== "chapter";
    for (const button of root.querySelectorAll("[data-view]")) {
      button.setAttribute("aria-pressed", String(button.dataset.view === mode));
    }
    if (mode === "ticks") tickView.render(displayedFrame);
  }
  for (const button of root.querySelectorAll("[data-view]")) {
    button.onclick = () => showView(button.dataset.view);
  }
  function render(time) {
    const frame = Math.max(
      0,
      Math.min(film.frames - 1, Math.floor(time * film.fps + 0.001)),
    );
    displayedFrame = frame;
    const tick = Math.min(frame, film.tick);
    if (!tickPanel.hidden) tickView.render(frame);
    previousTick.disabled = tick === 0;
    nextTick.disabled = tick === film.tick;
    timeline.value = frame;
    counter.textContent =
      "TICK " +
      String(tick).padStart(4, "0") +
      " / " +
      film.tick;
    const idx = film.chapters.findLastIndex(
      (chapter) => chapter.frame <= frame,
    );
    if (idx === last || idx < 0) return;
    last = idx;
    const chapter = film.chapters[idx];
    picker.value = idx;
    const filename = make("div", "", "filename");
    const link = make("a", chapter.module + ".lean ↗");
    const source = chapter.sourceFile || `source/${chapter.module}.lean`;
    link.href = githubLeanSource(asset(source), chapter.line);
    link.title = `Open ${chapter.module}.lean on GitHub at line ${chapter.line}`;
    link.target = "_blank";
    link.rel = "noopener";
    filename.append(link);
    editor.replaceChildren(
      filename,
      ...chapter.excerpt.map(([n, code]) =>
        displayLine(n, code, n === chapter.line),
      ),
    );
    find(".chapter-note strong").textContent = chapter.name;
    find(".chapter-note span").textContent = chapter.description;
  }
  function follow() {
    if (!video.requestVideoFrameCallback || video.paused) return;
    frameRequest = video.requestVideoFrameCallback((_, meta) => {
      if (!video.paused && !video.seeking) render(meta.mediaTime);
      follow();
    });
  }
  function stopFrames() {
    if (frameRequest !== undefined)
      video.cancelVideoFrameCallback?.(frameRequest);
    frameRequest = undefined;
  }
  function seek(frame) {
    const selected = Math.min(film.frames - 1, Math.max(0, frame));
    if (video.readyState >= HTMLMediaElement.HAVE_METADATA) {
      video.currentTime = (selected + 0.15) / film.fps;
      pendingFrame = undefined;
    } else {
      pendingFrame = selected;
    }
    render(selected / film.fps);
  }
  const edition = make("span", "", "film-story");
  function choose(i, requestedRoute, startTick = 0) {
    stopFrames();
    video.pause();
    const primary = films[i];
    const alternates = routes[primary.id] || [];
    levelIndex = i;
    film = alternates.find((cut) => cut.route === requestedRoute) || primary;
    const routeControl = find(".route-control");
    routeControl.hidden = alternates.length === 0;
    routePicker.replaceChildren(
      new Option("Main passage · " + primary.final.health + " health at exit", ""),
      ...alternates.map((cut) => new Option(cut.routeLabel, cut.route)),
    );
    routePicker.value = film.route || "";
    edition.textContent = film.engine + " · " + film.fps + " ticks/s";
    const evidence = find(".edition-evidence");
    evidence.href = asset(film.evidence ? film.evidence + "/index.html" : "../evidence/#" + film.id);
    evidence.textContent = film.evidence ? "Route evidence ↗" : "Level evidence ↗";
    const inputs = find(".route-inputs");
    inputs.hidden = !film.evidence;
    if (film.evidence) inputs.href = asset(film.evidence + "/recording.json");
    else inputs.removeAttribute("href");
    pendingFrame = undefined;
    last = -1;
    find(".proof-tier").textContent = film.proofTier === "compiler-assisted"
      ? "Compiler-assisted passage" : "Stock-kernel passage";
    [...tabs.querySelectorAll("button")].forEach((button, n) =>
      button.setAttribute("aria-pressed", n === i),
    );
    timeline.max = film.frames - 1;
    picker.replaceChildren(
      ...film.chapters.map((c, n) => new Option(c.name, n)),
    );
    loadTrace(film);
    video.src = asset(film.video);
    video.load();
    find(".download").href = asset(film.video);
    const openingTick = Math.max(0, Math.min(startTick, film.tick));
    if (openingTick) seek(openingTick);
    else render(0);
  }
  function rememberTick(tick) {
    const url = new URL(location.href);
    url.searchParams.set("level", film.id);
    if (film.route) url.searchParams.set("route", film.route);
    else url.searchParams.delete("route");
    if (tick > 0) url.searchParams.set("tick", String(Math.min(tick, film.tick)));
    else url.searchParams.delete("tick");
    if (root.closest("#theater")) url.hash = "theater";
    if (url.href !== location.href) history.replaceState(history.state, "", url);
  }
  function select(i, route) {
    choose(i, route);
    rememberTick(0);
  }
  function goTo(frame) {
    seek(frame);
    rememberTick(displayedFrame);
  }
  function step(delta) {
    const next = Math.max(0, Math.min(film.tick, Math.min(displayedFrame, film.tick) + delta));
    stopFrames();
    video.pause();
    goTo(next);
  }
  previousTick.onclick = () => step(-1);
  nextTick.onclick = () => step(1);
  root.addEventListener("keydown", (event) => {
    if (event.altKey || event.ctrlKey || event.metaKey || event.shiftKey ||
        event.target.closest("select,input,textarea,[contenteditable=true]")) return;
    if (event.key !== "ArrowLeft" && event.key !== "ArrowRight") return;
    event.preventDefault();
    step(event.key === "ArrowLeft" ? -1 : 1);
  });
  routePicker.onchange = () => select(levelIndex, routePicker.value);
  films.forEach((f, i) => {
    const button = make("button", f.id + " / " + f.title);
    button.onclick = () => {
      if (i !== levelIndex) select(i);
    };
    tabs.append(button);
  });
  tabs.append(edition);
  const play = find("[data-act=play]");
  play.onclick = () => {
    if (video.paused) video.play().catch(() => { play.textContent = "Retry play"; });
    else {
      const presented = displayedFrame;
      stopFrames();
      video.pause();
      goTo(presented);
    }
  };
  video.onplay = () => {
    play.textContent = "Ⅱ Pause";
    stopFrames();
    follow();
  };
  video.onpause = () => {
    play.textContent = "▶ Play";
    stopFrames();
    if (pendingFrame === undefined && !video.seeking && video.readyState >= 2) render(video.currentTime);
  };
  video.onseeked = () => {
    if (pendingFrame === undefined && !video.seeking) render(video.currentTime);
  };
  video.ontimeupdate = () => {
    if (pendingFrame === undefined && !video.seeking && video.readyState >= 2 &&
        (!video.requestVideoFrameCallback || video.paused))
      render(video.currentTime);
  };
  video.onloadedmetadata = () => {
    video.playbackRate = Number(find(".rate").value);
    if (pendingFrame !== undefined) seek(pendingFrame);
  };
  video.onclick = () => play.click();
  find(".rate").onchange = (e) => {
    video.playbackRate = Number(e.target.value);
  };
  timeline.oninput = (e) => seek(Number(e.target.value));
  timeline.onchange = () => rememberTick(displayedFrame);
  picker.onchange = (e) => goTo(film.chapters[Number(e.target.value)].frame);
  for (const [action, delta] of [
    ["prev", -1],
    ["next", 1],
  ])
    find("[data-act=" + action + "]").onclick = () =>
      goTo(
        film.chapters[
          Math.min(film.chapters.length - 1, Math.max(0, last + delta))
        ].frame,
      );
  const query = new URLSearchParams(location.search);
  const requested = films.findIndex((item) => item.id === query.get("level"));
  const rawTick = query.get("tick");
  const start = /^-?\d+$/.test(rawTick ?? "") ? Number(rawTick) : 0;
  const index = Math.max(0, requested);
  const route = requested >= 0 ? query.get("route") : undefined;
  choose(index, route, start);
  if (rawTick !== null || (requested >= 0 && route && !film.route && Object.keys(routes).length)) {
    rememberTick(displayedFrame);
  }
}
const target = document.querySelector("[data-theater]");
try {
  const [response, alternateIndex] = await Promise.all([
    fetch(asset("films.json")),
    fetch(asset("alternates.json")).then((r) => r.ok ? r.json() : null).catch(() => null),
  ]);
  if (!response.ok) throw Error("Film index unavailable");
  theater(target, await response.json(), alternateIndex?.routes || {});
} catch {
  target.textContent =
    "The film index could not be loaded. Reload to try again.";
}
