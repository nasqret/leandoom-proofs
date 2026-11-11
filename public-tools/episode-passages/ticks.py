"""Build or check the Proof Theater's per-tick projections using the archived Lean observations."""
import argparse
import gzip
import hashlib
import json
import struct
from pathlib import Path

# The first three films predate the unified passage and camera receipts.
LEGACY_RECORDINGS = {
    'E1M1': 'prooflab-e1m1-993.json',
    'E1M2': 'prooflab-e1m2.json',
    'E1M7': 'prooflab-e1m7.json',
}
STATE_FIELDS = ('x', 'y', 'angle', 'health', 'armor', 'bullets', 'shells', 'shots', 'kills',
                'exit', 'errorFree', 'blue', 'yellow', 'red')
OPTIONAL_FIELDS = {'z': 'z', 'sector': 'sector', 'rngPlay': 'rng_play', 'rngMisc': 'rng_misc',
                   'projectiles': 'projectiles'}
BOOL_FIELDS = {'exit', 'errorFree', 'blue', 'yellow', 'red'}
# OriginalReplay.ordinary, shared by the named engine editions.
ORDINARY_BITS = 2 | 4 | 8 | 16 | 32 | 64 | 512 | 4096 | 8192 | 16384 | 32768 | 65536


def read(path):
    return json.loads(path.read_bytes())


def sha(data):
    return hashlib.sha256(data).hexdigest()


def require(condition, detail):
    if not condition:
        raise ValueError(detail)


def film_evidence(root, film):
    """Resolve the same source tape and observation digest used for this film."""
    site = root / 'public-site'
    level = film['id']
    if level in LEGACY_RECORDINGS and not film.get('route'):
        folder = site / 'theater/ticks/sources' / level.lower()
        observed = read(folder / 'receipt.json')
        verified = read(site / 'downloads/combat-runs.json')[f"{level.lower()}-{film['tick']}"]
        commands_file = root / 'public-tools/verifier/examples' / LEGACY_RECORDINGS[level]
        require(observed['map'] == level and observed['engine'] == film['engine'], 'historical engine')
        require(observed['iwad_sha256'] == verified['worldSha256'], 'historical map')
        require(observed['matched_states'] == film['tick'] + 1 and
                observed['input_count'] == film['tick'] and observed['result'] == 'native_first_exit',
                'historical observer receipt')
        require(observed['inputs_u32le_sha256'] == film['commandsU32LESha256'], 'historical controller')
        trace_sha = observed['trace_sha256']
    else:
        if film.get('route'):
            folder = site / 'theater' / film['evidence']
        else:
            folder = site / 'evidence' / film['editionEvidence']
        observed = read(folder / 'camera.json')
        verified = read(folder / 'receipt.json')
        commands_file = folder / 'recording.json'
        require(observed['level'] == level and observed['engine'] == verified['engine'] == film['engine'],
                'camera engine')
        require(observed['rulesSha256'] == verified['rulesSha256'] == film['rulesSha256'] and
                observed['iwadSha256'] == verified['worldSha256'], 'camera rules or map')
        require(observed['recordingSha256'] == verified['recordingSha256'] == film['recordingSha256']
                and observed['commandsU32LESha256'] == film['commandsU32LESha256'], 'camera controller')
        require(observed['mp4Sha256'] == film['sha256'] and observed['firstExit'] == film['tick']
                and observed['decodedFrames'] == film['tick'] + 1, 'camera frames')
        trace_sha = observed['traceSha256']

    require(verified['level'] == level and verified['commands'] == film['tick'] and verified['passage'] is True,
            'passage certificate')
    recording = commands_file.read_bytes()
    require(sha(recording) == verified['recordingSha256'], 'recording file digest')
    tape = json.loads(recording)
    require(tape['level'] == level and tape['engine'] == film['engine'], 'recording map or rules')
    controls = tape['commands']
    require(len(controls) == film['tick'] and all(type(k) is int and k >= 0 and k & ~ORDINARY_BITS == 0
                                                 for k in controls), 'ordinary keyboard tape')
    require(sha(b''.join(struct.pack('<I', k) for k in controls)) ==
            verified['commandsU32LESha256'] == film['commandsU32LESha256'], 'keyboard tape digest')
    source = folder / 'observations.jsonl.gz'
    raw = gzip.decompress(source.read_bytes())
    require(sha(raw) == trace_sha, 'observer digest')
    return source, trace_sha, raw, controls, verified


def tick_view(root, film):
    source, trace_sha, raw, controls, verified = film_evidence(root, film)
    states = [json.loads(line) for line in raw.splitlines()]
    tick = film['tick']
    require(len(states) == tick + 1 and film['fps'] == 35 and film['frames'] >= tick + 1,
            'state/frame count')
    if film['id'] in LEGACY_RECORDINGS and not film.get('route'):
        camera = read(source.parent.parent / 'camera-bindings.json')[film['id']]
        require(camera['originalMovieSha256'] == film['originalMovieSha256'] and
                camera['commandsU32LESha256'] == film['commandsU32LESha256'] and
                camera['traceSha256'] == trace_sha and camera['matchedStates'] == len(states),
                'historical movie and observer must identify the same passage')
        fields = camera['fields']
        require({'t', 'x', 'y', 'angle', 'health', 'armor', 'exit', 'error'} <= set(fields),
                'historical camera observations')
        values = [[state[k] for k in fields] for state in states]
        require(sha(json.dumps(values, separators=(',', ':')).encode()) == camera['matchedValuesSha256'],
                'historical tick-for-tick camera agreement')
    optional = {dst: src for dst, src in OPTIONAL_FIELDS.items() if src in states[0]}
    columns = ['input', *STATE_FIELDS, *optional]
    rows = []
    for i, state in enumerate(states):
        require(state['t'] == i and type(state['t']) is int and state['health'] > 0 and
                state['error'] is None and state['exit'] is (i == tick), f'first safe exit at tick {i}')
        values = {key: state[key] for key in STATE_FIELDS if key != 'errorFree'}
        values['errorFree'] = state['error'] is None
        for dst, src in OPTIONAL_FIELDS.items():
            require((src in state) == (dst in optional), f'inconsistent field {src} at tick {i}')
            if dst in optional:
                values[dst] = state[src]
        require(all(type(value) is (bool if key in BOOL_FIELDS else int) for key, value in values.items()),
                f'non-integral observation at tick {i}')
        rows.append([None if i == 0 else controls[i - 1], *[values[k] for k in columns[1:]]])

    final = states[-1]
    aliases = {'tick': 't', 'game_rng': 'rng_play', 'misc_rng': 'rng_misc'}
    for endpoint in (film['final'], verified['final']):
        for key, value in endpoint.items():
            observed = final['error'] is None if key == 'errorFree' else final[aliases.get(key, key)]
            require(observed == value, f'certificate endpoint {key}')
    return {
        'schema': 'doom-theater-ticks-v1', 'level': film['id'], 'route': film.get('route', 'primary'),
        'engine': film['engine'], 'tick': tick, 'filmSha256': film['sha256'],
        'commandsU32LESha256': film['commandsU32LESha256'], 'recordingSha256': verified['recordingSha256'],
        'traceSha256': trace_sha, 'observationsFile': source.relative_to(root / 'public-site').as_posix(),
        'columns': columns, 'rows': rows,
    }


def generate(root, check):
    theater = root / 'public-site/theater'
    films = read(theater / 'films.json')
    for group in read(theater / 'alternates.json')['routes'].values():
        films.extend(group)
    directory = theater / 'ticks'
    expected = set()
    observations = 0
    for film in films:
        slug = film['id'].lower() + ('-' + film['route'] if film.get('route') else '')
        path = directory / (slug + '.json')
        require(path not in expected, f'duplicate route {slug}')
        expected.add(path)
        view = tick_view(root, film)
        data = (json.dumps(view, separators=(',', ':'), allow_nan=False) + '\n').encode()
        if check:
            require(path.read_bytes() == data, f'{path.name} differs from the archived replay; regenerate')
        elif not path.exists() or path.read_bytes() != data:
            path.write_bytes(data)
        observations += len(view['rows'])
    require(set(directory.glob('*.json')) == expected, 'unreferenced tick trace')
    print(f'{len(films)} Theater routes, {observations:,} spawn-to-exit states and '
          f'{observations - len(films):,} controller inputs matched.')


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('root', nargs='?', type=Path, default=Path(__file__).resolve().parents[2])
    parser.add_argument('--check', action='store_true', help='Require byte-for-byte reproduction of every published trace')
    args = parser.parse_args()
    generate(args.root.resolve(), args.check)
