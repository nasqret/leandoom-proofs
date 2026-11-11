"""Restore and authenticate redistributable classic assets using immutable upstream releases."""
import gzip, hashlib, io, json
from pathlib import Path
from urllib.request import Request,urlopen
from zipfile import ZipFile
target=Path(__file__).resolve().parents[2]/'public-site/classic'
manifest=json.loads((target/'provenance.json').read_bytes())
def fetch(url,expected):
    req=Request(url,headers={'User-Agent':'Lean-Doom-Lab asset builder'})
    with urlopen(req,timeout=90) as response: data=response.read()
    if hashlib.sha256(data).hexdigest()!=expected: raise ValueError('Upstream SHA-256 mismatch at '+url)
    return data
for name in ('websockets-doom.js','websockets-doom.wasm'):
    data=fetch('https://raw.githubusercontent.com/Saketh-Chandra/doom-wasm-pwa/'+manifest['build']+'/src/'+name,manifest['sha256'][name])
    (target/name).write_bytes(data)
source=fetch('https://codeload.github.com/Saketh-Chandra/doom-wasm-pwa/zip/'+manifest['source'],manifest['sourceArchiveSha256'])
(target/'engine-source.zip').write_bytes(source)
tag=manifest['freedoom']
download=fetch('https://github.com/freedoom/freedoom/releases/download/v'+tag+'/freedoom-'+tag+'.zip',manifest['upstreamArchiveSha256'])
with ZipFile(io.BytesIO(download)) as archive:
    wad=archive.read('freedoom-'+tag+'/freedoom1.wad')
    if hashlib.sha256(wad).hexdigest()!=manifest['sha256']['freedoom1.wad']: raise ValueError('Wrong Freedoom phase')
    (target/'freedoom1.wad.gz').write_bytes(gzip.compress(wad,compresslevel=6,mtime=0))
