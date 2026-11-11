"""Check distributable source, archives and Pages links."""
import gzip, hashlib, io, json, re, subprocess, sys, zipfile
from html.parser import HTMLParser
from pathlib import Path
from urllib.parse import parse_qs,unquote,urlsplit
root=Path(sys.argv[1]).resolve() if len(sys.argv)>1 else Path(__file__).resolve().parents[2]
site=root/'public-site'
if not (root/'research-core/ProofAudit.lean').is_file():
    raise SystemExit('Pass the clean public checkout to validate the release.')
def load(name): return json.loads((site/name).read_bytes())
def digest(data): return hashlib.sha256(data).hexdigest()
def check(value,message):
    if not value: raise ValueError(str(message))
def check_lean_reading_link(anchor):
    href = anchor.get('href') or ''
    dest = urlsplit(href)
    if not dest.path.lower().endswith('.lean'):
        return
    blob = re.fullmatch(r'/([^/]+)/([^/]+)/blob/([^/]+)/(.+\.lean)', dest.path)
    query = parse_qs(dest.query, keep_blank_values=True)
    check(dest.scheme == 'https' and dest.hostname == 'github.com' and blob and
          'download' not in anchor and 'download' not in query and
          not any(x.lower() in ('true', '1') for x in query.get('raw', [])), ('Lean reading link', href))
    if blob.groups()[:3] == ('nasqret', 'leandoom-proofs', 'main'):
        source = (root / unquote(blob[4])).resolve()
        check(source.is_relative_to(root) and source.is_file(), ('missing GitHub source', href))
        if dest.fragment:
            span = re.fullmatch(r'L(\d+)(?:-L(\d+))?', dest.fragment)
            check(span and 1 <= int(span[1]) <= int(span[2] or span[1]) <= len(source.read_bytes().splitlines()),
                  ('GitHub source line', href))

class Links(HTMLParser):
    def __init__(self):
        super().__init__()
        self.urls=[]
    def handle_starttag(self,tag,attrs):
        if tag == 'a':
            check_lean_reading_link(dict(attrs))
        self.urls.extend(v for k,v in attrs if k in ('href','src') and v)
for page in site.rglob('*.html'):
    doc=Links(); doc.feed(page.read_text())
    for url in doc.urls:
        ref=urlsplit(url)
        if ref.scheme or ref.netloc or not ref.path: continue
        check(not ref.path.startswith('/'),(page,url,'project path'))
        path=(page.parent/unquote(ref.path)).resolve()
        if path.is_dir(): path/='index.html'
        check(path.is_relative_to(site) and path.is_file(),(page,url))
names=[]
def inspect_asset(name,data):
    check(not name.startswith('/') and '..' not in Path(name).parts,name)
    check(not re.search(r'\.(?:wad|lmp|pk3|pk4|olean|ilean|pem|key)$',name,re.I),name)
    check(data[:4] not in (b'IWAD',b'PWAD'),name)
    check(not re.search(rb'(?:-----BEGIN (?:RSA |OPENSSH )?PRIVATE KEY-----|gh[pousr]_[A-Za-z0-9]{35,})',data),name)
    if name.endswith('.zip'):
        with zipfile.ZipFile(io.BytesIO(data)) as z:
            members=z.namelist(); check(len(members)==len(set(members)),name)
            for info in z.infolist():
                if not info.is_dir(): inspect_asset(info.filename,z.read(info))
    elif name.endswith('.wad.gz'):
        check(name.endswith('classic/freedoom1.wad.gz'),name)
        check(digest(gzip.decompress(data))=='7323bcc168c5a45ff10749b339960e98314740a734c30d4b9f3337001f9e703d',name)
    names.append(name)
if (root/'.git').exists():
    listed=subprocess.check_output(['git','-C',str(root),'ls-files','--cached','--others','--exclude-standard','-z'])
    paths=[root/name for name in listed.decode().split('\0') if name]
else:
    paths=root.rglob('*')
for path in paths:
    if not path.is_file() or any(part in ('.git','__pycache__','.lake','.proofs') for part in path.parts) or path.name=='.DS_Store': continue
    check(not path.is_symlink(),path)
    inspect_asset(path.relative_to(root).as_posix(),path.read_bytes())
films=load('theater/films.json')
tiers={'Passage proved':'stock-kernel','Compiler-assisted passage':'compiler-assisted'}
proved_levels={m['level']:tiers[m['status']] for m in load('evidence/maps.json')
               if m['edition']=='CombatV2' and re.fullmatch(r'E\d+M\d+',m['level']) and m['status'] in tiers}
revised={m['level']:m.get('revisedPassage') or m['portablePassage'] for m in load('evidence/maps.json') if 'revisedPassage' in m or 'portablePassage' in m}
rebuilds=load('evidence/passages/chapter-reproduction.json')
check(set(rebuilds)==set(revised),'independent chapter rebuild for every portable passage')
proved_levels.update({k:v['proofTier'] for k,v in revised.items()})
check(len(films)==len(proved_levels) and {f['id']:f['proofTier'] for f in films}==proved_levels,
      'theater coverage and trust tiers must match the original-map passage catalog')
check(f'<b data-passage-count>{len(films):02}</b>' in (site/'index.html').read_text(),'home passage count')
receipts=load('downloads/combat-runs.json')
for film in films+load('theater/cuts.json'):
    name=film.get('video') or film['file']
    check(digest((site/'theater'/name).read_bytes())==film['sha256'],name)
scenes=load('theater/scenes.json')['scenes']
for scene in scenes:
    check(scene['defaultEdition']=='tiled' and set(scene['editions'])=={'original','tiled'},scene['slug'])
    for edition in scene['editions'].values():
        check(edition['audioStreams']==0 and digest((site/'theater'/edition['file']).read_bytes())==edition['sha256'],edition['file'])
for film in films:
    tick=film['tick']
    key=f"{film['id'].lower()}-{tick}"
    if film['id'] in revised:
        item=revised[film['id']]
        folder=site/'evidence'/item['evidence']
        read=lambda n: json.loads((folder/n).read_bytes())
        receipt=read('receipt.json')
        full=read('clean-build.json')
        for field in ('recordingSha256','rulesSha256','worldSha256','sources','objects',
                      'proofSharedLibraries','axioms','final'):
            check(full[field]==receipt[field],(key,'independent passage rebuild',field))
        rebuild=rebuilds[film['id']]
        check(all(rebuild[field]==receipt[field] for field in ('engine','rulesSha256','recordingSha256')),
              (key,'independent chapter rebuild belongs to this recording'))
        expected_chapters={c['declaration']:c['sourceSha256'] for c in film['chapters'] if c['module']!='Certificate'}
        checked=rebuild['declarations']
        check({decl:proof['sourceSha256'] for decl,proof in checked.items()}==expected_chapters,
              (key,'chapter sources reproduced on Helios'))
        for decl,proof in checked.items():
            check(re.fullmatch(r'[0-9a-f]{64}',proof['objectSha256'])
                  and any(ax.startswith(decl+'._native.native_decide.') for ax in proof['axioms']),
                  (key,decl,'compiler-assisted declaration and compiled module'))
        camera=read('camera.json'); milestones=read('milestones.json'); record=read('recording.json')
        editions=json.loads((root/'public-tools/episode-passages/editions.json').read_bytes())
        check(film==read('film.json') and item['engine']==film['engine']==record['engine'],key)
        check(receipt['rulesSha256']==film['rulesSha256']==camera['rulesSha256']==milestones['rulesSha256']
              ==editions[film['engine']]['rulesSha256'],key)
        check(receipt['recordingSha256']==camera['recordingSha256']==milestones['recordingSha256']
              ==digest((folder/'recording.json').read_bytes()),key)
        check(digest(b''.join(i.to_bytes(4,'little') for i in record['commands']))==receipt['commandsU32LESha256'],key)
        check(camera['decodedFrames']==camera['frames']==tick+1 and camera['firstExit']==tick and
              camera['mp4Sha256']==film['sha256'] and camera['final']==receipt['final'],key)
        check(digest(gzip.decompress((folder/'observations.jsonl.gz').read_bytes()))==camera['traceSha256'],key)
        check(digest((folder/'milestones.log').read_bytes())==milestones['auditSha256'],key)
        for overlay in editions[film['engine']]['overlays']:
            check(digest((root/'public-tools/episode-passages/editions'/film['engine']/overlay['path']).read_bytes())==overlay['sha256'],overlay['path'])
    else:
        receipt=receipts[key]
        full=json.loads((root/'public-tools/verifier/validation/combat'/key/'receipt.json').read_bytes())
    check(full['engine']==film['engine'] and full['level']==receipt['level']==film['id'] and
          full['commands']==receipt['commands']==tick and full['passage'] and receipt['passage'] and
          full['commandsU32LESha256']==receipt['commandsU32LESha256']==film['commandsU32LESha256'] and
          all(film['final'][k]==full['final'][k]==receipt['final'][k] for k in ('tick','x','y','health','shots','kills','exit')),
          (film['id'],'film and certified controller must have the same first exit and endpoint'))
    marks=[chapter['frame'] for chapter in film['chapters']]
    check(film['fps']==35 and film['frames']>tick and marks==sorted(set(marks)) and marks[0]==0
          and marks[-1]==tick,(film['id'],'chapters must cover spawn through first exit'))
    for c in film['chapters']:
        source=(site/'theater'/c['sourceFile']).read_bytes()
        lines=source.decode().splitlines()
        check(digest(source)==c['sourceSha256'] and all(1<=n<=len(lines) and lines[n-1]==line
              for n,line in c['excerpt']),c['module'])
        check(0<=c['frame']<film['frames'] and c['line'] in [i for i,_ in c['excerpt']],c['declaration'])
check(digest((site/'evidence/core-source.zip').read_bytes())==load('evidence/core.json')['archive_sha256'],'core')
check(len(load('evidence/declarations.json')['records'])==277,'declarations')
check(len(load('evidence/maps.json'))==13,'maps')
campaign=load('classic/campaign.json')
itinerary=['E1M1','E1M2','E1M3','E1M9','E1M4','E1M5','E1M6','E1M7','E1M8']
check(len(campaign['runs'])>=2,'classic independent tapes')
for run in campaign['runs']:
    r=run['evidence']
    check(r['arrivals']==itinerary and r['stop']=='episode finale' and r['fullEpisodeViaSecret'],run['runner'])
    check(r['wasmSha256']==digest((site/'classic/websockets-doom.wasm').read_bytes()),run['runner'])
check(digest((site/'classic/replay.cjs').read_bytes())==campaign['verifierSha256'],'classic verifier')
routes=load('downloads/routes.json')['routes']
expected={level['id']+'_'+style: commands for level in load('game/episode.json')['levels'] for style,commands in level['routes'].items()}
check(set(routes)==set(expected),'checked route names')
for name,commands in expected.items():
    check(routes[name]['status']=='kernel-passage' and routes[name]['commands']==len(commands),name)
    check(routes[name]['commandsU32LESha256']==digest(b''.join(k.to_bytes(4,'little') for k in commands)),name)
slots=load('classic/slots.json')
levels=load('downloads/native-episode-checks.json')
all_free={f'E{e}M{m}' for e in range(1,5) for m in range(1,10)}
check(slots['total']==45 and slots['groups']['freedoom']['count']==36 and slots['groups']['shareware']['count']==9,'classic browser starts')
check(set(levels['mapReceipts'])==all_free and all(r['status']=='compiler-prefix' and r['final']['tick']==4 for r in levels['mapReceipts'].values()),'native prefix matrix')
sidecar=(site/'downloads/lean-doom-companion.sha256').read_text().split()[0]
check(sidecar==digest((site/'downloads/lean-doom-companion.zip').read_bytes()),'companion SHA-256')
with zipfile.ZipFile(site/'downloads/lean-doom-companion.zip') as z:
    prefix='lean-doom-companion/'
    for entry in z.read(prefix+'SHA256SUMS').decode().splitlines():
        want,name=entry.split('  ',1); check(digest(z.read(prefix+name))==want,name)
    for agent in ('.agents','.claude'):
        check(z.read(prefix+agent+'/skills/verify-doom-run/SKILL.md')==(root/agent/'skills/verify-doom-run/SKILL.md').read_bytes(),agent)
experiments = root/'public-tools/experiments'
evidence = site/'evidence/experiments'
phase = load('evidence/experiments/rng.json')
check(phase['status']=='verified' and [(l['level'],len(l['outcomes']),sum(r['won'] for r in l['outcomes'])) for l in phase['levels']]==[('E1M1',256,254),('E1M2',256,8)], 'two complete RNG classifications')
subprocess.run([sys.executable,experiments/'rng/check_output.py',evidence/'rng.json'],check=True)
subprocess.run([sys.executable,experiments/'turns/export.py','--check'],check=True)
subprocess.run([sys.executable,'-B',experiments/'turns/study/check.py',evidence/'turns/study'],check=True)
subprocess.run([sys.executable,experiments/'camera/check.py','--site',site],check=True)
for name,expected_hash in load('theater/lab/checks.json')['sha256'].items():
    check(digest((site/name).read_bytes())==expected_hash,'stale replay browser check: '+name)
rng_films = load('theater/lab/camera/rng.json')['levels']
check(set(rng_films)=={'E1M1','E1M2'} and sum(map(len,rng_films.values()))==7,'RNG highlight films')
for clips in rng_films.values():
    for clip in clips.values():
        check(digest((site/'theater/lab/camera'/clip['file']).read_bytes())==clip['sha256'],clip['file'])
fork = load('evidence/experiments/fork-receipt.json')
check(fork['census']==[72,0,59,13,0,0,72] and digest((evidence/'fork-rebuild.zip').read_bytes())==fork['rebuildSha256'], 'complete input-fork certificate')
roll = load('evidence/experiments/damage-roll.json')
check(roll['sourceSha256']==digest((experiments/'DamageRoll.lean').read_bytes()) and roll['auditSha256']==digest((evidence/'damage-roll.audit.log').read_bytes()) and roll['rngSourceSha256']==digest((root/'public-tools/verifier/combat/upstream/Doom/Random.lean').read_bytes()), 'stock-kernel damage roll')
check((site/'theater/source/OriginalReplay.lean').read_bytes()==
      (root/'public-tools/verifier/combat/OriginalReplay.lean').read_bytes(),
      'displayed replay source must match the verified definition')
subprocess.run([sys.executable, str(root/'public-tools/episode-passages/ticks.py'), '--check', str(root)], check=True)
from alternates import validate_alternates
alternate_count = validate_alternates(site, root, films)
print(f'{len(names)} files and archive members inspected; 13 map records, 277 declarations, {len(routes)} routes, {alternate_count} alternate Theater passages and complete replay experiments passed.')
