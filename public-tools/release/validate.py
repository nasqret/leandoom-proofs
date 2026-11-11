"""Check distributable source, archives and Pages links."""
import gzip, hashlib, io, json, re, sys, zipfile
from html.parser import HTMLParser
from pathlib import Path
from urllib.parse import unquote,urlsplit
root=Path(sys.argv[1]).resolve() if len(sys.argv)>1 else Path(__file__).resolve().parents[2]
site=root/'public-site'
def load(name): return json.loads((site/name).read_bytes())
def digest(data): return hashlib.sha256(data).hexdigest()
def check(value,message):
    if not value: raise ValueError(str(message))
class Links(HTMLParser):
    def __init__(self):
        super().__init__()
        self.urls=[]
    def handle_starttag(self,tag,attrs):
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
for path in root.rglob('*'):
    if '.git' in path.parts or '__pycache__' in path.parts or path.name=='.DS_Store' or not path.is_file(): continue
    check(not path.is_symlink(),path)
    inspect_asset(path.relative_to(root).as_posix(),path.read_bytes())
films=load('theater/films.json')
check([(f['id'],f['tick']) for f in films]==[('E1M1',993),('E1M2',1017)],'theater')
for film in films+load('theater/cuts.json'):
    name=film.get('video') or film['file']
    check(digest((site/'theater'/name).read_bytes())==film['sha256'],name)
for film in films:
    for c in film['chapters']:
        if 'sourceFile' in c:
            check(digest((site/'theater'/c['sourceFile']).read_bytes())==c['sourceSha256'],c['module'])
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
check(len(load('downloads/routes.json')['routes'])==27,'routes')
with zipfile.ZipFile(site/'downloads/lean-doom-companion.zip') as z:
    prefix='lean-doom-companion/'
    for entry in z.read(prefix+'SHA256SUMS').decode().splitlines():
        want,name=entry.split('  ',1); check(digest(z.read(prefix+name))==want,name)
    for agent in ('.agents','.claude'):
        check(z.read(prefix+agent+'/skills/verify-doom-run/SKILL.md')==(root/agent/'skills/verify-doom-run/SKILL.md').read_bytes(),agent)
print(f'{len(names)} files and archive members inspected; 13 map records, 277 declarations, 27 routes and two synchronized films passed.')
