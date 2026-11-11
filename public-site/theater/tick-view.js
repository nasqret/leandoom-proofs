// The reference lines are the executable passage checker for every recording.
// The two stock-kernel whole-passage theorems have their own segment proofs.
const sourceFile = new URL("source/OriginalReplay.lean", import.meta.url);
const branches = {
  spawn: [32, "  | .ok start => scan start commands", "Spawn"],
  step: [27, "    ordinary k && scan (s.tickCombatV2 k true) ks", "Recursive step"],
  exit: [25, "  | [] => s.inventory.health > 0 && s.physicsError.isNone && s.exitRequested", "End of tape"],
};
const controls = [
  [2, "Forward"], [4, "Back"], [8, "Strafe left"], [16, "Strafe right"],
  [32, "Turn left"], [64, "Turn right"], [512, "Run"], [4096, "Use"],
  [8192, "Attack"], [16384, "Select fist"], [32768, "Select pistol"], [65536, "Select shotgun"],
];

function describeInput(mask) {
  if (mask === null) return "Map spawn";
  if (mask === 0) return "No keys held";
  return controls.filter(([bit]) => (mask & bit) !== 0).map(([, label]) => label).join(" + ");
}

function node(tag, cls, text) {
  const el = document.createElement(tag);
  if (cls) el.className = cls;
  if (text !== undefined) el.textContent = text;
  return el;
}

function write(el, value) {
  const s = String(value);
  if (el.textContent !== s) el.textContent = s;
}

function field(key) {
  const el = node("span");
  el.dataset.tickField = key;
  return el;
}

function callRow(active) {
  const el = node("div", "tick-call");
  if (active) el.dataset.current = "";
  const time = node("span", "tick-call-time");
  const expression = node("code", "tick-call-code");
  const state = node("span", "tick-call-state");
  const stateTick = node("sub");
  state.append("s", stateTick);
  state.title = "Incoming simulation state, indexed by tick";
  const operation = node("span");
  const input = active ? field("input") : node("span");
  input.className = "tick-literal";
  const argument = node("span", "tick-boolean");
  expression.append(state, operation, input, argument);
  const hp = node("span", "tick-call-hp");
  el.append(time, expression, hp);
  return { el, time, state, stateTick, operation, input, argument, hp };
}

function colorSource(code) {
  return code.trim().split(/(\b(?:true|scan|ordinary|tickCombatV2|ok|start)\b|=>|&&|\[\])/).map(word => {
    if (!word) return "";
    if (["true", "ok", "[]"].includes(word)) return node("span", "tick-literal", word);
    if (["scan", "ordinary", "tickCombatV2"].includes(word)) return node("span", "tick-function", word);
    return word;
  });
}

function stateChanges(rows, col) {
  const latest = new Uint32Array(rows.length);
  const descriptions = new Map([[0, "Player spawned"]]);
  for (let tick = 1; tick < rows.length; tick++) {
    const before = rows[tick - 1];
    const after = rows[tick];
    const changes = [];
    if (after[col.exit] && !before[col.exit]) changes.push("Exit requested");
    if (!after[col.errorFree] && before[col.errorFree]) changes.push("Physics error");
    for (const key of ["blue", "yellow", "red"]) {
      if (after[col[key]] && !before[col[key]]) changes.push(key[0].toUpperCase() + key.slice(1) + " key");
    }
    for (const [label, index] of [["Health", col.health], ["Armor", col.armor]]) {
      if (after[index] !== before[index]) changes.push(label + " " + before[index] + " → " + after[index]);
    }
    if (changes.length) descriptions.set(tick, changes.join(" · "));
    latest[tick] = changes.length ? tick : latest[tick - 1];
  }
  return { latest, descriptions };
}

export function createTickView(host) {
  host.classList.add("tick-view");
  const message = node("p", "tick-message");
  message.setAttribute("role", "status");
  const content = node("div", "tick-content");
  const header = node("div", "tick-file");
  const sourceLink = node("a", "", "OriginalReplay.lean ↗");
  sourceLink.href = sourceFile;
  sourceLink.target = "_blank";
  sourceLink.rel = "noopener";
  const phase = node("span");
  header.append(sourceLink, phase);
  const source = node("div", "tick-source-line");
  const line = node("span", "tick-source-number");
  const code = node("code");
  source.append(line, code);

  const heading = node("div", "tick-trace-heading");
  const remaining = field("remaining");
  const pending = node("span");
  pending.append(remaining, " inputs left");
  heading.append(node("span", "", "Replay calls"), pending);
  const history = node("div", "tick-history");
  history.setAttribute("aria-label", "Recorded simulation calls, with health after each call");
  const calls = [callRow(false), callRow(false), callRow(true)];
  history.append(...calls.map(c => c.el));

  const inputKeys = node("div", "tick-keys");
  const inputLabel = node("span", "tick-small-label", "Input");
  const actions = field("controls");
  const rng = node("span", "tick-rng");
  const cursor = field("rngPlay");
  rng.title = "Recorded gameplay random-number cursor before and after the input";
  rng.append("RNG ", cursor);
  inputKeys.append(inputLabel, actions, rng);
  const telemetry = node("dl", "tick-states");
  const x = field("x"), y = field("y"), health = field("health"), exit = field("exit"), physics = field("physics");
  const pos = node("span");
  pos.append(x, ", ", y);
  for (const [label, value] of [["Position", pos], ["Health", health], ["Exit", exit], ["Physics", physics]]) {
    const group = node("div");
    group.append(node("dt", "", label), node("dd"));
    group.lastElementChild.append(value);
    telemetry.append(group);
  }
  const event = node("div", "tick-event");
  event.setAttribute("aria-label", "Most recent health, armor, key, or exit change");
  const eventTick = node("span", "tick-event-time");
  const eventText = node("span");
  event.append(eventTick, eventText);
  content.append(header, source, heading, history, inputKeys, telemetry, event);
  host.replaceChildren(message, content);

  let trace, col, changes, displayed = -1, wanted = 0, shownPhase;
  function status(text) {
    trace = undefined;
    displayed = -1;
    shownPhase = undefined;
    delete host.dataset.tick;
    delete host.dataset.phase;
    content.hidden = true;
    write(message, text);
    message.hidden = false;
  }
  function render(frame) {
    if (!Number.isFinite(frame)) return;
    wanted = Math.max(0, Math.floor(frame));
    if (!trace) return;
    const tick = Math.min(wanted, trace.tick);
    if (tick === displayed) return;
    displayed = tick;
    const state = trace.rows[tick];
    const branch = tick === 0 ? "spawn" : tick === trace.tick ? "exit" : "step";
    host.dataset.tick = String(tick);
    host.dataset.phase = branch;
    if (branch !== shownPhase) {
      shownPhase = branch;
      const [number, text, label] = branches[branch];
      source.dataset.line = String(number);
      write(line, number);
      code.replaceChildren(...colorSource(text));
      write(phase, label);
    }
    write(remaining, trace.tick - tick);
    calls.forEach((call, i) => {
      const t = tick - calls.length + 1 + i;
      call.el.style.visibility = t < 0 ? "hidden" : "";
      if (t < 0) return;
      const row = trace.rows[t], input = row[col.input];
      write(call.time, String(t).padStart(4, "0"));
      call.state.hidden = t === 0;
      if (t) write(call.stateTick, t - 1);
      write(call.operation, t ? ".tickCombatV2 " : "Simulation.spawn m true 1");
      write(call.input, t ? input : "—");
      write(call.argument, t ? " true" : "");
      call.el.classList.toggle("tick-spawn-call", t === 0);
      write(call.hp, row[col.health] + " HP");
    });
    write(actions, describeInput(state[col.input]));
    if (col.rngPlay !== undefined) {
      const current = state[col.rngPlay];
      const previous = tick ? trace.rows[tick - 1][col.rngPlay] : current;
      write(cursor, previous === current ? current : previous + " → " + current);
    }
    for (const [el, raw] of [[x, state[col.x]], [y, state[col.y]]]) {
      el.dataset.raw = String(raw);
      write(el, (raw / 65536).toFixed(2));
    }
    write(health, state[col.health]);
    write(exit, state[col.exit]);
    write(physics, state[col.errorFree] ? "Clear" : "Error");
    const eventAt = changes.latest[tick];
    write(eventTick, "T" + String(eventAt).padStart(4, "0"));
    write(eventText, changes.descriptions.get(eventAt));
  }
  return {
    setFilm(film) {
      wanted = 0;
      header.title = film.proofTier === "stock-kernel"
        ? "Executable replay checker. This route also has a separate stock-kernel passage proof."
        : "Executable replay checker used by the compiler-assisted passage proof.";
      status("Loading tick observations…");
    },
    setTrace(next) {
      col = Object.fromEntries(next.columns.map((k, i) => [k, i]));
      for (const k of ["input", "x", "y", "health", "armor", "exit", "errorFree", "red", "yellow", "blue"]) {
        if (!(k in col)) throw Error("Missing tick field " + k);
      }
      trace = next;
      rng.hidden = col.rngPlay === undefined;
      changes = stateChanges(trace.rows, col);
      displayed = -1;
      message.hidden = true;
      content.hidden = false;
      render(wanted);
    },
    render,
    unavailable() {
      status("Tick observations could not be loaded. The chapter proofs and film are still available.");
    },
  };
}
