// Run inside Chromium on either theater entry point with ?level=E1M7.
globalThis.checkStationTheater = async function () {
  const root = document.querySelector("[data-theater]");
  const $ = (selector) => root.querySelector(selector);
  function assert(ok, message) {
    if (!ok) throw Error(message);
  }
  async function until(test, message) {
    const end = performance.now() + 15000;
    while (!test()) {
      if (performance.now() > end) throw Error(message);
      await new Promise((resolve) => setTimeout(resolve, 35));
    }
  }
  const module = document.querySelector('script[src$="theater/player.js"], script[src="player.js"]');
  const index = new URL("films.json", module.src);
  const films = await (await fetch(index)).json();
  const station = films.find((f) => f.id === "E1M7");
  assert(station?.tick === 4161 && station.frames === 4162, "Missing Computer Station film");
  await until(() => $("video") && $(".film-tabs button[aria-pressed=true]"), "Theater failed to load");
  const buttons = Array.from(root.querySelectorAll(".film-tabs button"));
  const button = (id) => buttons.find((b) => b.textContent.includes(id));
  assert(button("E1M7")?.getAttribute("aria-pressed") === "true", "Direct link selected the wrong level");
  assert(button("E1M1") && button("E1M2"), "Earlier films are missing");
  const video = $("video");
  const slider = $('input[type="range"]');
  await until(() => video.readyState >= 2 && String(video.currentSrc).endsWith(station.video), "Station camera missing");
  assert(Math.abs(video.duration * station.fps - station.frames) < 0.1, "Wrong film timing");
  assert(/compiler.assisted/i.test($(".proof-tier")?.textContent), "Wrong passage proof tier");
  const play = $('[data-act="play"]');
  play.click();
  await until(() => !video.paused && Number(slider.value) > 0, "Playing film did not advance its clock");
  play.click();
  await until(() => video.paused, "Film did not pause");
  $('[data-view="chapter"]').click();
  const mid = Math.floor(station.chapters.length / 2);
  const chapterPicker = $(".chapters");
  chapterPicker.value = mid;
  chapterPicker.dispatchEvent(new Event("change", { bubbles: true }));
  await until(() => !video.seeking && Number(slider.value) === station.chapters[mid].frame, "Chapter seek lost its tick");
  slider.value = station.tick;
  slider.dispatchEvent(new Event("input", { bubbles: true }));
  await until(() => !video.seeking && video.readyState >= 2 && Math.floor(video.currentTime * station.fps + 0.001) === station.tick, "Failed to decode exit frame");
  const end = station.chapters.at(-1), link = $(".filename a");
  assert(Number(slider.value) === station.tick && $(".counter").textContent.includes("4161 / 4161"), "Exit clock mismatch");
  assert(chapterPicker.selectedIndex === station.chapters.length - 1 && $(".chapter-note strong").textContent === end.name, "Wrong exit chapter");
  const githubSource = "https://github.com/nasqret/leandoom-proofs/blob/main/public-site/theater/" + end.sourceFile;
  assert(end.sourceFile && link?.href === githubSource + "#L" + end.line && !link.hasAttribute("download"),
    "Exit source must open the highlighted Lean line on GitHub");
  const source = await fetch(new URL(end.sourceFile, index));
  assert(source.ok, "Could not open exit source");
  const bytes = await source.arrayBuffer();
  const digest = Array.from(new Uint8Array(await crypto.subtle.digest("SHA-256", bytes)), x => x.toString(16).padStart(2, "0")).join("");
  assert(digest === end.sourceSha256, "Exit source differs from the film index");
  const text = new TextDecoder().decode(bytes);
  assert(text.includes("theorem passage") && text.includes("native_decide"), "Missing full passage theorem");
  assert($(".codeline[data-current] code").textContent === text.split("\n")[end.line - 1], "Highlighted exit line differs from the file");
  const canvas = document.createElement("canvas");
  canvas.width = 32;
  canvas.height = 24;
  const ctx = canvas.getContext("2d");
  ctx.drawImage(video, 0, 0, canvas.width, canvas.height);
  const pixels = ctx.getImageData(0, 0, canvas.width, canvas.height).data;
  const colors = new Set();
  for (let i = 0; i < pixels.length; i += 4) colors.add((pixels[i] << 16) | (pixels[i + 1] << 8) | pixels[i + 2]);
  assert(colors.size > 10, "Decoded exit camera is blank");
  for (const id of ["E1M2", "E1M1", "E1M7"]) {
    button(id).click();
    assert(button(id).getAttribute("aria-pressed") === "true" && Number(slider.value) === 0, "Changing levels failed to reset the film");
    assert(new URL(location.href).searchParams.get("level") === id, "Address did not follow level selection");
    const tier = $(".proof-tier").textContent;
    assert(id === "E1M7" ? /compiler.assisted/i.test(tier) : /stock.kernel/i.test(tier), "Wrong proof tier after switching");
  }
  slider.value = station.chapters[mid].frame;
  slider.dispatchEvent(new Event("input", { bubbles: true }));
  await until(() => !video.seeking && video.readyState >= 2 && Math.floor(video.currentTime * station.fps + 0.001) === station.chapters[mid].frame, "Immediate seek after changing film was lost");
  assert(root.getBoundingClientRect().right <= innerWidth + 1, "Theater overflows the viewport");
  return { entry: location.pathname, viewport: [innerWidth, innerHeight], selected: station.id, seekTick: station.tick, chapter: end.name, line: end.line, colors: colors.size };
};
