const make = (tag, txt, cls) => {
  const e = document.createElement(tag);
  e.textContent = txt;
  if (cls) e.className = cls;
  return e;
};
const maps = await (await fetch("maps.json")).json(),
  nav = document.querySelector(".maps"),
  detail = document.querySelector(".detail");
const checks = await (await fetch("../downloads/combat-runs.json")).json();
for (const map of maps) {
  const a = make("a", map.level + " · " + map.name);
  a.href = "#" + map.level;
  a.append(make("small", map.revisedPassage ? "Passage in revised engine" : map.status));
  nav.append(a);
}
function show() {
  const m = maps.find((x) => x.level === location.hash.slice(1)) || maps[0];
  for (const a of nav.children) {
    if (a.hash === "#" + m.level) a.setAttribute("aria-current", "true");
    else a.removeAttribute("aria-current");
  }
  detail.replaceChildren(
    make("p", m.level + " / " + m.edition, "kicker"),
    make("h2", m.name),
    make("p", m.status, "status"),
    make("p", m.description),
  );
  if (m.revisedPassage || m.portablePassage) {
    const r = m.revisedPassage || m.portablePassage, panel = make("section", "", "sheet");
    panel.append(make("h3", "Full passage · " + r.engine),
      make("p", r.tick.toLocaleString("en-US") + " ordinary inputs reach the first safe exit with " +
        r.final.health + " health. Lean checked every prefix using compiler evaluation."));
    const links = make("div", "", "actions");
    for (const [label, href] of [["Watch the passage", "../theater/?level=" + m.level],
      ["Inputs", r.evidence + "/recording.json"], ["Lean receipt", r.evidence + "/receipt.json"],
      ["Axiom audit", r.evidence + "/audit.log"], ["Frame checks", r.evidence + "/camera.json"]]) {
      const a = make("a", label, "btn"); a.href = href; links.append(a);
    }
    panel.append(links); detail.append(panel);
  }
  for (const [id, run] of Object.entries(checks).filter(
    ([id, r]) => r.level === m.level && r.passage && id.startsWith("e1m"),
  )) {
    const d = make("details", "");
    d.append(
      make(
        "summary",
        run.commands.toLocaleString("en-US") +
          " inputs · " +
          run.final.health +
          " health · " +
          run.final.shots +
          " shots · " +
          run.status,
      ),
      make(
        "p",
        "Fresh passage and final-observation audit from WMI " + run.job + ".",
      ),
      make(
        "pre",
        Object.entries(run.axioms)
          .map(([n, a]) => n + "\n" + a.join(", "))
          .join("\n\n"),
      ),
      make("small", "Recording SHA-256 " + run.recordingSha256),
    );
    detail.append(d);
  }
  const extras = {
    E1M9: [
      ["Inspect the unraised-trench theorem", "../theater/source/e1m9/Trench.lean"],
      ["See where the winning controller diverges", "passages/e1m9/provenance.json"],
      ["Read the three-key and platform evidence", "e1m9/result.json"],
      [
        "Inspect the first-three-keys theorem",
        "e1m9/three-key-certificate.json",
      ],
      ["Open the Military Base controller", "e1m9/prooflab-three-keys.json"],
      ["Read the platform proof", "e1m9/MilitaryBoundary.lean"],
    ],
    E1M4: [
      ["Read the new crossing-dispatch theorem", "e1m4/BlueDoor.lean"],
      ["Inspect the map and axiom evidence", "e1m4/result.json"],
    ],
    E1M5: [
      ["Inspect the soulsphere pickup", "../theater/source/e1m5/Soulsphere.lean"],
      ["Compare the same tape under frozen CombatV2", "passages/e1m5/frozen-control/receipt.json"],
    ],
    E1M8: [
      ["Inspect the boss, wall and teleport theorem", "../theater/source/e1m8/BossPassage.lean"],
    ],
    E1M7: [
      ["Read the safety theorem for every prefix", "StationSafe.lean"],
      ["Read the general scan-soundness proof", "ScanSemantics.lean"],
      ["Inspect the fresh first-exit axiom audit", "StationSafe.audit.log"],
    ],
  };
  if (extras[m.level]) {
    const group = make("div", "", "actions");
    for (const [title, url] of extras[m.level]) {
      const a = make("a", title, "btn");
      a.href = url;
      group.append(a);
    }
    detail.append(group);
  }
  for (const [i, p] of m.proofs.entries()) {
    const d = make("details", "");
    d.open = !i;
    d.append(
      make("summary", p.title),
      make("pre", p.code),
      make("p", p.auditText),
      make("small", "Source SHA-256 " + p.sourceSha256 + " · line " + p.line),
    );
    detail.append(d);
  }
}
addEventListener("hashchange", show);
show();
const dataset = await (await fetch("declarations.json")).json();
const decls = Array.isArray(dataset) ? dataset : dataset.records;
const box = document.querySelector("#matches"),
  q = document.querySelector("#q");
let count = 40;
function search() {
  const term = q.value.trim().toLowerCase();
  const hits = decls.filter((d) =>
    (d.name + " " + d.file).toLowerCase().includes(term),
  );
  box.replaceChildren(
    make(
      "p",
      hits.length +
        " matching declarations · showing " +
        Math.min(count, hits.length),
    ),
  );
  for (const d of hits.slice(0, count)) {
    const node = make("details", "");
    node.append(
      make("summary", d.name),
      make("pre", d.file + " · line " + d.line),
    );
    const source = make("a", "Open Lean source ↗");
    source.href =
      "https://github.com/nasqret/leandoom-proofs/blob/main/research-core/" +
      d.file +
      "#L" +
      d.line;
    node.append(source);
    box.append(node);
  }
  if (count < hits.length) {
    const more = make("button", "Show more declarations", "control");
    more.onclick = () => {
      count += 40;
      search();
    };
    box.append(more);
  }
}
q.oninput = () => {
  count = 40;
  search();
};
search();
