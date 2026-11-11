"""Verify the deposited native census and build the browser lookup table."""
import argparse
import gzip
import hashlib
import itertools
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[3]
HERE = ROOT / 'public-site/evidence/experiments/turns'
RAW_HASH = '1a478053b3c2c9e8bee89a85965433451eeefcf50cfdd7f86aa57f8f5c08f8f4'


def encode():
    raw = (HERE / 'grid.jsonl.gz').read_bytes()
    receipt = json.loads((HERE / 'result.json').read_text())
    if hashlib.sha256(raw).hexdigest() != RAW_HASH or receipt['file_sha256']['grid.jsonl.gz'] != RAW_HASH:
        raise ValueError('The WMI 309178 deposit has changed')
    rows = [json.loads(line) for line in gzip.decompress(raw).splitlines()]
    edits = list(itertools.product(range(25), range(11), range(10)))
    if [tuple(r['edit']) for r in rows] != edits:
        raise ValueError('Expected each edit exactly once in tuple order')
    values = []
    for (cut, blend, approach), row in zip(edits, rows):
        obs = row['observation']
        length = 992 - cut - approach
        exited = obs['first_exit']
        safe = obs['minimum_health'] > 0 and obs['error'] is None and obs['shots'] == 0
        if not safe or obs['calls'] != 993 or row['win'] != (exited is not None and exited <= length):
            raise ValueError(f'Unexpected observation at {row["edit"]}')
        if exited is not None and exited != length:
            raise ValueError(f'Exit differs from the final Use at {row["edit"]}')
        values.append(exited)
    wins = [n for n in values if n is not None]
    if (len(wins), min(wins), wins.count(min(wins))) != (651, 977, 8):
        raise ValueError('Unexpected winning set')
    forks = json.loads((HERE.parent/'forks.json').read_text())
    original = next(r for r in forks['routes'] if r['id']==forks['baseline'])
    tail = original['tracks'][942:]
    if [r[0] for r in tail] != list(range(942,994)):
        raise ValueError('Missing original exit trajectory')
    data = {'schema':'hangar-turn-census-v1', 'job':receipt['job'], 'gridSha256':RAW_HASH,
            'shape':[25, 11, 10], 'winning':len(wins), 'firstExits':values,
            'baselineFrom':942, 'baselineXY':[r[1:3] for r in tail]}
    return (json.dumps(data, separators=(',', ':'))+'\n').encode()


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--check', action='store_true')
    args = parser.parse_args()
    expected = encode()
    path = HERE / 'turns.json'
    if args.check:
        if expected != path.read_bytes():
            raise SystemExit('Derived grid differs from the native observations')
    else:
        path.write_bytes(expected)
