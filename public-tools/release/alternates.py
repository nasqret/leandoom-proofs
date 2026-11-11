"""Bind alternate Theater films to their independent passage and chapter builds."""
import gzip
import hashlib
import json
import re
import sys

ROUTES = {'E1M6': ('two-health', 3595, 2), 'E1M8': ('one-health', 3092, 1)}
COMPANIONS = {
    'E1M6': [('Milestones', 'MilestoneAudit', 'milestones', 'Recording.milestones')],
    'E1M8': [('BossPassage', 'BossAudit', 'boss', 'Recording.bossSequence'),
             ('EndingContact', 'EndingAudit', 'ending', 'Recording.endRoomDamageAndExit')],
}


def check(value, message):
    if not value:
        raise ValueError('Theater alternate: ' + message)


def sha(data):
    return hashlib.sha256(data).hexdigest()


def read(path):
    return json.loads(path.read_bytes())


def validate_alternates(site, root, films):
    theater = site / 'theater'
    catalog = read(theater / 'alternates.json')
    editions = read(root / 'public-tools/episode-passages/editions.json')
    sys.path.insert(0, str(root / 'public-tools/verifier'))
    from verify import audit
    check(catalog['schema'] == 'theater-alternate-routes-v1' and set(catalog['routes']) == set(ROUTES), 'route catalog')
    primaries = {film['id']: film for film in films}
    for level, (slug, tick, health) in ROUTES.items():
        film, = catalog['routes'][level]
        primary = primaries[level]
        path = f'routes/{level.lower()}/{slug}'
        src = f'source/{level.lower()}/{slug}'
        out = theater / path
        prefix = level + '/' + slug + ' '
        def require(condition, message):
            check(condition, prefix + message)
        require(film['id'] == level and film['route'] == slug and film['routeLabel'].strip() and
                film['evidence'] == path and film['video'] == path + '/passage.mp4', 'paths')
        require(film['proofTier'] == primary['proofTier'] == 'compiler-assisted' and film['engine'] == primary['engine']
                and film['title'] == primary['title'] and film['root'] == 'Recording.passage', 'identity')
        receipt, cold, record, camera = [read(out / name) for name in ('receipt.json', 'clean-build.json', 'recording.json', 'camera.json')]
        require(receipt['status'] == 'compiler-passage' and receipt['trust'] == 'compiler' and receipt['passage'] is True
                and cold['attempt'] != receipt['attempt'], 'independent passage')
        for key in ('engine', 'level', 'commands', 'status', 'trust', 'passage', 'final', 'rulesSha256', 'worldSha256',
                    'recordingSha256', 'commandsU32LESha256', 'sources', 'objects', 'axioms'):
            require(receipt[key] == cold[key], 'clean ' + key)
        edition = editions[film['engine']]
        require(record['schema'] == edition['schema'] and record['level'] == camera['level'] == receipt['level'] == level
                and record['engine'] == camera['engine'] == receipt['engine'] == film['engine'], 'edition')
        require(edition['rulesSha256'] == film['rulesSha256'] == primary['rulesSha256'] == camera['rulesSha256'] ==
                receipt['rulesSha256'] == record['rulesSha256'], 'rules')
        require(receipt['worldSha256'] == camera['iwadSha256'] == record['iwadSha256'], 'map')
        binding = sha((out / 'recording.json').read_bytes())
        packed = sha(b''.join(command.to_bytes(4, 'little') for command in record['commands']))
        require(binding == film['recordingSha256'] == camera['recordingSha256'] == receipt['recordingSha256'] and
                packed == film['commandsU32LESha256'] == camera['commandsU32LESha256'] == receipt['commandsU32LESha256']
                and packed != primary['commandsU32LESha256'], 'distinct controls')
        final = film['final']
        require(film['captureJob'] == camera['slurmJob'] and film['proofJob'] == receipt['job'] and
                camera['frames'] == camera['decodedFrames'] == film['frames'] == tick + 1 and
                tick == film['tick'] == receipt['commands'] == len(record['commands']) == camera['firstExit'] == final['tick']
                and film['fps'] == camera['fps'] == 35, 'timing')
        require(final == receipt['final'] == camera['final'] and final['exit'] is True and final['errorFree'] is True
                and final['health'] == health, 'endpoint')
        require(film['sha256'] == camera['mp4Sha256'] == sha((theater / film['video']).read_bytes())
                and film['sha256'] != primary['sha256'], 'film')
        fields = 'tick x y angle health armor bullets shells shots kills error exit'.split()
        require(set(camera['matchedFields']) == set(fields) and all(re.fullmatch(r'[0-9a-f]{64}', camera[k]) for k in
                ('rawRgbStreamSha256','rgbFrameHashesSha256','decodedFrameLogSha256','cameraSourceSha256')), 'camera')
        raw = gzip.decompress((out / 'observations.jsonl.gz').read_bytes())
        require(sha(raw) == camera['traceSha256'], 'trace digest')
        states = [json.loads(line) for line in raw.splitlines()]
        require(len(states) == tick+1 and all(s['t'] == i and s['health'] > 0 and s['error'] is None and
                s['exit'] is (i == tick) for i, s in enumerate(states)), 'every prefix')
        require(all(states[-1][key] == final[key] for key in ('health','armor','x','y','exit','bullets','shells','shots','kills')),
                'endpoint in trace')
        first = lambda pred: next((s['t'] for s in states if pred(s)), None)
        keys = {color: first(lambda s: s[color]) for color in ('blue', 'red', 'yellow')}
        require(keys == camera['firstKeys'] and min(s['health'] for s in states) == camera['minimumHealth'] and
                first(lambda s: s['shots'] > 0) == camera['firstShot'], 'route observations')
        fresh = read(out / 'chapter-recheck.json')
        require(fresh['recordingSha256'] == binding and fresh['rulesSha256'] == film['rulesSha256'] and
                fresh['inputsSourceSha256'] == receipt['sources']['Inputs.lean'] and
                fresh['attempt'] == cold['attempt'] and fresh['job'] == cold['job'] != receipt['job'], 'fresh source bindings')
        source_hash = {'Certificate': receipt['sources']['Certificate.lean']}
        object_hash = {'Certificate': receipt['objects']['Certificate.olean']}
        decls = {'Certificate': {'Recording.passage', 'Recording.finalObservation'}}
        require((out / 'Audit.lean').read_text() == 'import Certificate\n#print axioms Recording.passage\n#print axioms Recording.finalObservation\n'
                and sha((out / 'Audit.lean').read_bytes()) == receipt['sources']['Audit.lean'] and
                audit((out / 'audit.log').read_text(), decls['Certificate'], 'compiler') == receipt['axioms'], 'passage audit')
        for module, importer, stem, declaration in COMPANIONS[level]:
            proof = read(out / (stem + '.json'))
            log = (out / (stem + '.log')).read_bytes()
            require(proof['inputsSourceSha256'] == fresh['inputsSourceSha256'] and proof['recordingSha256'] == binding and
                    proof['rulesSha256'] == film['rulesSha256'] and proof['auditSha256'] == sha(log), stem)
            independent = fresh['declarations'][declaration]
            require(proof['axioms'] == audit(log.decode(), [declaration], 'compiler') and
                    (out / (importer + '.lean')).read_text() == f'import {module}\n#print axioms {declaration}\n' and
                    independent['axioms'] == proof['axioms'][declaration] and independent['sourceSha256'] == proof['sourceSha256']
                    and independent['objectSha256'] == proof['objectSha256'], 'fresh imported ' + module)
            source_hash[module], object_hash[module] = proof['sourceSha256'], proof['objectSha256']
            decls[module] = {declaration}
        require(set(fresh['declarations']) == {d for module, vals in decls.items() if module != 'Certificate' for d in vals},
                'fresh declarations')
        for module, digest in source_hash.items():
            require(sha((theater / src / (module + '.lean')).read_bytes()) == digest, 'module ' + module)
        chapters = film['chapters']
        marks = [c['frame'] for c in chapters]
        require(marks == sorted(set(marks)) and marks[0] == 0 and marks[-1] == tick and
                chapters[0]['declaration'] == 'Recording.passage', 'chapter coverage')
        for c in chapters:
            module, declaration = c['module'], c['declaration']
            require(module in decls and declaration in decls[module] and c['sourceFile'] == f'{src}/{module}.lean' and
                    c['sourceSha256'] == source_hash[module] and c['objectSha256'] == object_hash[module], 'chapter binding')
            lines = (theater / c['sourceFile']).read_text().splitlines()
            require(all(0 < n <= len(lines) and lines[n-1] == code for n, code in c['excerpt']) and
                    c['line'] in [n for n, _ in c['excerpt']] and any(
                        text.startswith('theorem ' + declaration.rsplit('.',1)[-1] + ' :') for _,text in c['excerpt']),
                    'displayed source')
        by_frame = {c['frame']: c for c in chapters}
        if level == 'E1M6':
            events = [*keys.values(), camera['firstShot'], first(lambda s: s['health'] == camera['minimumHealth'])]
            require(set(marks) == {0, tick, *events} and all(by_frame[n]['declaration'] == 'Recording.milestones' for n in events)
                    and by_frame[tick]['declaration'] == 'Recording.finalObservation', 'inventory ticks')
        else:
            boss = read(out / 'boss.json')['events']
            live = lambda s: sum(b[0] > 0 for b in s['barons'])
            require([b[0] for b in states[0]['barons']] == [1000,1000] and boss == {
                'firstBaron': first(lambda s: live(s) < 2), 'bothBarons': first(lambda s: live(s) == 0),
                'wallStarts': first(lambda s: 30 in s['movers']), 'stairs': first(lambda s: 53 in s['movers']),
                'arrival': first(lambda s: s['sector'] == 66), 'arrivalHealth': 44, 'complete': tick}, 'arena events')
            arena = [boss[k] for k in ('firstBaron', 'bothBarons', 'wallStarts', 'stairs')]
            ending = [(3071,44,44,44,63,False), (3073,44,30,30,57,False),
                      (3091,30,30,1,44,False), (3092,1,1,1,44,True)]
            require(set(marks) == {0, *arena, *(row[0] for row in ending)} and all(
                by_frame[n]['declaration'] == 'Recording.bossSequence' for n in arena), 'arena ticks')
            for t, before, interaction, after, armor, exited in ending:
                state, chapter = states[t], by_frame[t]
                literal = f'⟨{t},some 66,{before},{interaction},{after},{armor},{str(exited).lower()}⟩'
                require((states[t-1]['health'],state['sector'],state['health'],state['armor'],state['exit']) ==
                        (before,66,after,armor,exited) and chapter['declaration'] == 'Recording.endRoomDamageAndExit' and
                        any(n == chapter['line'] and literal in text for n,text in chapter['excerpt']), 'final room ' + str(t))
    return sum(len(cuts) for cuts in catalog['routes'].values())
