"""Compile a generated passage and independently audit the saved roots before acceptance."""

import argparse
import hashlib
import json
import os
from pathlib import Path
import re
import subprocess
import tempfile
import time

from assemble import ident, render


HERE = Path(__file__).resolve().parent
AXIOMS = {"propext", "Classical.choice", "Quot.sound"}
RESULTS = ("length", "checked", "passage", "terminal", "safeFirstExit", "winnable")
PLUGIN_SHA256 = "e8b21275be108224f839b359af132094411ce81e26a2c9848b8eee621d7a6955"
# Stock Linux Lean 4.33.0 from the two independent Nuclear Plant source replays.
COMPILER_SHA256 = "e8baaa71855a616dc351028f3ad2200051b0671f423a1696a100e809302d5550"
CORE_OBJECTS = {
    "CheckedReplay": "639ef771a4a547924210c7c776979ab4936774a1c5892519581531087d76f01c",
    "FullScanRules": "f02a4e67ff871b08f18a7f0926482f98d6a380f68ed484c43bc06ac6b51bdea1",
    "LeanDoomProofs.CombatV2": "5142e0b92159d77f598014bc9b8d6b41b1fb93c45ccb805d0cc72a6b83b13c40",
}


def sha(path):
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(block)
    return digest.hexdigest()


def checked_axioms(output, names):
    # This stream comes from a separate process importing the produced object into
    # a fresh environment. Any missing, duplicate or unexpected report is fatal.
    reports = {}
    for line in output.splitlines():
        match = re.fullmatch(r"'([^']+)' (?:depends on axioms: \[([^\]]+)\]|does not depend on any axioms)", line)
        if match is None:
            if line.strip():
                raise ValueError("unexpected axiom audit output: " + line)
            continue
        name, raw = match.groups()
        if name not in names or name in reports:
            raise ValueError("unexpected or duplicate audited root: " + name)
        axioms = set(raw.split(", ")) if raw else set()
        unapproved = axioms - AXIOMS
        if unapproved:
            raise ValueError(f"{name} uses unapproved axioms: {sorted(unapproved)}")
        reports[name] = sorted(axioms)
    if set(reports) != set(names):
        raise ValueError("missing axiom reports: " + str(sorted(set(names) - set(reports))))
    return reports


def tape_literal(keys):
    """Independently elaborate the controller list without importing proof providers."""
    lines = ["import Init", "set_option maxRecDepth 65536", "namespace LeanDoomProofs.RecordedTapeLiteral"]
    blocks = []
    for i in range(0, len(keys), 64):
        name = f"block{i // 64}"
        lines.append(f"private def {name} : List UInt32 := [{', '.join(map(str, keys[i:i + 64]))}]")
        blocks.append(name)
    while len(blocks) > 1:
        blocks = [f"({blocks[i]} ++ {blocks[i+1]})" if i + 1 < len(blocks) else blocks[i]
                  for i in range(0, len(blocks), 2)]
    lines.extend([f"def inputs : List UInt32 := {blocks[0] if blocks else '[]'}",
                  "end LeanDoomProofs.RecordedTapeLiteral", ""])
    return "\n".join(lines)


def run_checked(command, build, env, log):
    start = time.monotonic()
    with log.open("w") as stream:
        subprocess.run(command, cwd=build, env=env, check=True, stdout=stream, stderr=subprocess.STDOUT)
    return round(time.monotonic() - start, 3)


def lock_providers(bindings, lock, layers):
    required = set(bindings["imports"]) | CORE_OBJECTS.keys()
    missing = required - lock.keys()
    if missing:
        raise ValueError("missing direct provider digests: " + str(sorted(missing)))
    if any(lock[name] != digest for name, digest in CORE_OBJECTS.items()):
        raise ValueError("core providers differ from the certified CombatV2 revision")
    for name, wanted in lock.items():
        rel = Path(*ident(name).split(".")).with_suffix(".olean")
        if not isinstance(wanted, str) or not re.fullmatch("[0-9a-f]{64}", wanted):
            raise ValueError(f"invalid digest for {name}")
        found = next((layer / rel for layer in layers if (layer / rel).is_file()), None)
        if not found or sha(found) != wanted:
            raise ValueError(f"provider missing or differs: {name}")


def certify(tape, spec, lock_path, lb, target):
    compiler_digest = sha(lb)
    if compiler_digest != COMPILER_SHA256:
        raise ValueError("compiler differs from the pinned WMI Lean 4.33.0 executable")
    spec_bytes = spec.read_bytes()
    lock_bytes = lock_path.read_bytes()
    bindings = json.loads(spec_bytes)
    recording = tape.read_bytes()
    source = render(recording, bindings)
    literal = tape_literal(json.loads(recording)["inputs"])
    identity = "LeanDoomProofs.RecordedTapeAudit.input_identity"
    names = (*[f"{ident(bindings['namespace'])}.{label}" for label in RESULTS], identity)
    lock = json.loads(lock_bytes)
    import_paths = [Path(p).resolve() for p in os.environ["LEAN_PATH"].split(os.pathsep) if p]
    lock_providers(bindings, lock, import_paths)
    options = []
    plugin = os.environ.get("DOOM_COMPOSITION_PLUGIN")
    if plugin:
        if sha(Path(plugin)) != PLUGIN_SHA256:
            raise ValueError("composition plugin differs from the validated WMI build")
        options.append("--plugin=" + str(Path(plugin).resolve()))
    target.mkdir(parents=True, exist_ok=False)
    # Keeping partial logs helps diagnose a rejected candidate. Only accepted.json
    # is the success marker, and it is always written last.
    with tempfile.TemporaryDirectory(dir=target) as staging:
        build = Path(staging)
        env = dict(os.environ, LEAN_PATH=os.pathsep.join(map(str, [build, *import_paths])))
        (build / "RecordedRoute.lean").write_bytes((HERE / "RecordedRoute.lean").read_bytes())
        (build / "RecordedTapeLiteral.lean").write_text(literal)
        (target / "RecordedTapeLiteral.lean").write_text(literal)
        (build / "CampaignWinner.lean").write_text(source)
        (target / "CampaignWinner.lean").write_text(source)
        group, namespace = "_root_." + bindings["group"], "_root_." + bindings["namespace"]
        finish = "_root_." + (bindings["chunks"][-1]["end"] if bindings["chunks"] else bindings["start"])
        arguments = f'{group} "{bindings["map"]}" {namespace}.inputs'
        audit = ("import CampaignWinner\nimport RecordedTapeLiteral\nset_option maxRecDepth 65536\n"
                 f"example : _root_.LeanDoomProofs.CheckedReplay.Passage {arguments} := {namespace}.passage\n"
                 f"example : _root_.LeanDoomProofs.RecordedRoute.fromMap {arguments} = .ok {finish} := {namespace}.terminal\n"
                 f"theorem {identity} : {namespace}.inputs = _root_.LeanDoomProofs.RecordedTapeLiteral.inputs := by rfl\n"
                 + "".join(f"#print axioms {n}\n" for n in names))
        (build / "Audit.lean").write_text(audit)
        (target / "Audit.lean").write_text(audit)
        times = {}
        for module in ("RecordedTapeLiteral", "RecordedRoute", "CampaignWinner"):
            times[module] = run_checked([lb, *options, "-o", module + ".olean", module + ".lean"], build, env, target / (module + ".log"))
        times["audit"] = run_checked([lb, *options, "-o", "Audit.olean", "Audit.lean"], build, env, target / "Audit.log")
        reports = checked_axioms((target / "Audit.log").read_text(), names)
        result = {"schema": 1, "map": bindings["map"], "tape_sha256": hashlib.sha256(recording).hexdigest(),
                  "bindings_sha256": hashlib.sha256(spec_bytes).hexdigest(),
                  "provider_lock_sha256": hashlib.sha256(lock_bytes).hexdigest(), "compiler_sha256": compiler_digest,
                  "compiler_version": subprocess.check_output([lb, "--version"], text=True).strip(),
                  "source_sha256": sha(build / "CampaignWinner.lean"), "producer_objects": lock,
                  "support_source_sha256": sha(build / "RecordedRoute.lean"), "support_object_sha256": sha(build / "RecordedRoute.olean"),
                  "object_sha256": sha(build / "CampaignWinner.olean"), "axioms": reports, "seconds": times,
                  "literal_source_sha256": sha(build / "RecordedTapeLiteral.lean"),
                  "literal_object_sha256": sha(build / "RecordedTapeLiteral.olean"), "audit_object_sha256": sha(build / "Audit.olean"),
                  "composition_plugin_sha256": PLUGIN_SHA256 if plugin else None}
        for module in ("RecordedTapeLiteral", "RecordedRoute", "CampaignWinner", "Audit"):
            (build / (module + ".olean")).replace(target / (module + ".olean"))
        receipt = build / "accepted.json"
        receipt.write_text(json.dumps(result, indent=2, sort_keys=True) + "\n")
        receipt.replace(target / receipt.name)


if __name__ == "__main__":
    cli = argparse.ArgumentParser(description=__doc__)
    for name in ("tape", "bindings", "provider_lock", "lean_executable", "output_directory"):
        cli.add_argument(name, type=Path)
    args = cli.parse_args()
    certify(*(path.resolve() for path in vars(args).values()))
