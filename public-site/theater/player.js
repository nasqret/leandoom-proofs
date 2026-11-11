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
function theater(root, films) {
  root.className = "theater";
  root.innerHTML =
    '<div class="film-tabs" aria-label="Film selection"></div><div class="screens"><section class="codepanel"><div class="panel-title"><span><i></i>Lean source</span><span class="proof-tier"></span></div><div class="editor"></div><div class="chapter-note"><strong></strong><span></span></div></section><section><div class="panel-title"><span><i></i>Player camera</span><span class="counter"></span></div><div class="video"><video playsinline muted preload="auto" aria-label="Recorded gameplay"></video></div></section></div><div class="toolbar"><button data-act="play">▶ Play</button><button data-act="prev" aria-label="Previous event">◀◀</button><button data-act="next" aria-label="Next event">▶▶</button><input type="range" aria-label="Film frame" step="1" min="0" value="0"><label>Speed <select class="rate"><option>0.25</option><option>0.5</option><option selected>1</option><option>1.5</option><option>2</option></select>×</label></div><div class="chapterbar"><label>Event <select class="chapters"></select></label><a class="edition-evidence">Level evidence ↗</a><a class="download" download>Download silent film ↓</a></div>';
  const find = (selector) => root.querySelector(selector);
  const video = find("video"),
    tabs = find(".film-tabs"),
    timeline = find("input"),
    picker = find(".chapters");
  let film,
    last = -1,
    frameRequest,
    pendingFrame;
  function render(time) {
    const frame = Math.max(
      0,
      Math.min(film.frames - 1, Math.floor(time * film.fps + 0.001)),
    );
    timeline.value = frame;
    find(".counter").textContent =
      "TICK " +
      String(Math.min(frame, film.tick)).padStart(4, "0") +
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
    if (chapter.sourceFile) {
      const link = make("a", chapter.module + ".lean ↗");
      link.href = asset(chapter.sourceFile);
      link.target = "_blank";
      filename.append(link);
    } else filename.textContent = chapter.module + ".lean";
    find(".editor").replaceChildren(
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
      render(meta.mediaTime);
      follow();
    });
  }
  function stopFrames() {
    if (frameRequest !== undefined)
      video.cancelVideoFrameCallback?.(frameRequest);
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
  function choose(i) {
    stopFrames();
    video.pause();
    film = films[i];
    edition.textContent = film.engine + " · " + film.fps + " ticks/s";
    find(".edition-evidence").href = asset("../evidence/#" + film.id);
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
    video.src = asset(film.video);
    video.load();
    find(".download").href = asset(film.video);
    render(0);
  }
  films.forEach((f, i) => {
    const button = make("button", f.id + " / " + f.title);
    button.onclick = () => {
      if (film === f) return;
      choose(i);
      const url = new URL(location.href);
      url.searchParams.set("level", f.id);
      history.replaceState(history.state, "", url);
    };
    tabs.append(button);
  });
  tabs.append(edition);
  const play = find("[data-act=play]");
  play.onclick = () =>
    video.paused
      ? video.play().catch(() => {
          play.textContent = "Retry play";
        })
      : video.pause();
  video.onplay = () => {
    play.textContent = "Ⅱ Pause";
    stopFrames();
    follow();
  };
  video.onpause = () => {
    play.textContent = "▶ Play";
    stopFrames();
    render(video.currentTime);
  };
  video.onseeked = () => render(video.currentTime);
  video.ontimeupdate = () => {
    if (!video.requestVideoFrameCallback || video.paused)
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
  picker.onchange = (e) => seek(film.chapters[Number(e.target.value)].frame);
  for (const [action, delta] of [
    ["prev", -1],
    ["next", 1],
  ])
    find("[data-act=" + action + "]").onclick = () =>
      seek(
        film.chapters[
          Math.min(film.chapters.length - 1, Math.max(0, last + delta))
        ].frame,
      );
  const requested = new URLSearchParams(location.search).get("level");
  choose(Math.max(0, films.findIndex((item) => item.id === requested)));
}
const target = document.querySelector("[data-theater]");
try {
  const response = await fetch(asset("films.json"));
  if (!response.ok) throw Error("Film index unavailable");
  theater(target, await response.json());
} catch {
  target.textContent =
    "The film index could not be loaded. Reload to try again.";
}
