"""Assemble checked CombatV2 chunk proofs for the exact masks in a recorded tape."""

import argparse
import hashlib
import json
from pathlib import Path
import re


IDENT = re.compile(r"[A-Za-z_][A-Za-z0-9_']*(?:\.[A-Za-z_][A-Za-z0-9_']*)*\Z")


def ident(value):
    if not isinstance(value, str) or not IDENT.fullmatch(value):
        raise ValueError(f"expected a Lean declaration or module name, got {value!r}")
    return value


def render(tape_bytes, bindings):
    tape = json.loads(tape_bytes)
    label = tape["map"]
    if label != bindings["map"] or not isinstance(label, str) or not re.fullmatch(r"[A-Z0-9_]{1,8}", label):
        raise ValueError("tape and bindings must agree on the Doom lump name")
    keys = tape["inputs"]
    if not isinstance(keys, list) or any(type(k) is not int or not 0 <= k < 2**32 for k in keys):
        raise ValueError("inputs must be 32-bit unsigned integers")
    ns, group, level, start, parse, spawn, safe, exit_proof = (
        ident(bindings[field]) for field in ("namespace", "group", "level", "start", "parse", "spawn", "safe", "exit"))
    imports = ["RecordedRoute", *(ident(module) for module in bindings["imports"])]
    lines = [*(f"import {module}" for module in dict.fromkeys(imports)),
             "", f"-- Recorded tape SHA-256: {hashlib.sha256(tape_bytes).hexdigest()}",
             f"namespace {ns}", "open Doom LeanDoomProofs",
             "set_option Elab.async false", "set_option maxRecDepth 65536", ""]
    blocks = []
    lower, previous = 0, start
    for index, chunk in enumerate(bindings["chunks"]):
        upper, finish, proof = chunk["through"], ident(chunk["end"]), ident(chunk["proof"])
        if type(upper) is not int or not lower < upper <= len(keys):
            raise ValueError(f"invalid interval ending at {upper!r} after {lower}")
        tape_name, claim = f"keys{index}", f"chunk{index}"
        values = ", ".join(map(str, keys[lower:upper]))
        expression = proof
        if "guard" in chunk:
            if upper != lower + 1:
                raise ValueError("a raw step proof and guard cover exactly one input")
            guard = ident(chunk["guard"])
            expression = f"NuclearFullPassage.singleton {previous} {finish} {keys[lower]} {guard} {proof}"
        lines.extend((f"private def {tape_name} : List UInt32 := [{values}]",
                      f"private theorem {claim} : CheckedReplay.scan {previous} {tape_name} = some {finish} :=",
                      f"  {expression}", ""))
        blocks.append((tape_name, claim, previous, finish))
        lower, previous = upper, finish
    if lower != len(keys):
        raise ValueError(f"providers cover {lower} of {len(keys)} inputs")

    def join(lo, hi):
        if hi == lo + 1:
            return blocks[lo]
        mid = (lo + hi) // 2
        xs, left, left_state, middle = join(lo, mid)
        ys, right, _, right_state = join(mid, hi)
        tape_name, claim = f"keys{lo}to{hi}", f"join{lo}to{hi}"
        lines.extend((f"private def {tape_name} := {xs} ++ {ys}",
                      f"private theorem {claim} : CheckedReplay.scan {left_state} {tape_name} = some {right_state} :=",
                      f"  CheckedReplay.append_checked {left_state} {middle} {right_state} {xs} {ys} {left} {right}", ""))
        return tape_name, claim, left_state, right_state

    tape_name, complete, _, finish = join(0, len(blocks)) if blocks else ("([] : List UInt32)", "rfl", start, start)
    lines.extend((f"def inputs : List UInt32 := {tape_name}",
                  f"theorem length : inputs.length = {len(keys)} := by decide +kernel",
                  f"theorem checked : CheckedReplay.scan {start} inputs = some {finish} := {complete}",
                  f'theorem passage : CheckedReplay.Passage {group} "{label}" inputs :=',
                  f'  CheckedReplay.passage_of_scan {group} "{label}" {level} {start} {finish} inputs',
                  f"    {parse} {spawn} checked {safe} {exit_proof}",
                  f'theorem terminal : RecordedRoute.fromMap {group} "{label}" inputs = .ok {finish} :=',
                  f'  RecordedRoute.endpoint_of_scan {group} "{label}" {level} {start} {finish} inputs {parse} {spawn} checked',
                  "theorem safeFirstExit :",
                  f"    (∀ j, j ≤ inputs.length → combatSafe (run CheckedReplay.step {start} (inputs.take j))) ∧",
                  f"    (∀ j, (run CheckedReplay.step {start} (inputs.take j)).exitRequested = decide (inputs.length ≤ j)) :=",
                  f'  RecordedRoute.prefixes_of_passage {group} "{label}" {level} {start} inputs {parse} {spawn} passage',
                  f'theorem winnable : ∃ ks, CheckedReplay.Passage {group} "{label}" ks := ⟨inputs, passage⟩',
                  "", *(f"#print axioms {name}" for name in ("checked", "passage", "terminal", "safeFirstExit", "winnable")),
                  f"end {ns}", ""))
    return "\n".join(lines)


if __name__ == "__main__":
    cli = argparse.ArgumentParser(description=__doc__)
    for name in ("tape", "bindings", "output"):
        cli.add_argument(name, type=Path)
    args = cli.parse_args()
    args.output.write_text(render(args.tape.read_bytes(), json.loads(args.bindings.read_bytes())), encoding="utf-8")
