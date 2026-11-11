"""Validate public study links, portable editions, outputs and evidence without running Lean."""
import argparse
import base64
import hashlib
import json
from pathlib import Path
import re
import tempfile
from urllib.parse import parse_qs,unquote,urlsplit
import zipfile

from bs4 import BeautifulSoup
import nbformat
from render import SITE

def check(condition,explanation):
    if not condition:
        raise ValueError(explanation)

def digest(data):
    return hashlib.sha256(data).hexdigest()

def check_source_link(url, location, download=False):
    if not unquote(url.path).lower().endswith('.lean'):
        return
    check(url.scheme=='https' and url.hostname=='github.com' and '/blob/' in url.path
          and not download and 'raw' not in parse_qs(url.query,keep_blank_values=True),
          f'{location} must open Lean source in the GitHub viewer: {url.geturl()}')

def local_links(site, docs):
    count=0
    external=set()
    seen={}
    def page(p):
        if p not in seen:
            seen[p]=BeautifulSoup(p.read_text(),'html.parser')
        return seen[p]
    missing=set()
    for path in docs:
        document=page(path)
        ids=[n['id'] for n in document.select('[id]')]
        check(len(ids)==len(set(ids)),f'Duplicate id in {path.name}')
        for node in document.select('a[href], img[src], script[src], link[href]'):
            href=node.get('href',node.get('src'))
            value=urlsplit(href)
            if node.name=='a':
                check_source_link(value, path.name, node.has_attr('download'))
            if value.scheme in {'http','https'}:
                if node.name=='a':external.add(href)
                continue
            if value.scheme or not href:
                continue
            relative=unquote(value.path)
            target=((site/relative.lstrip('/')) if relative.startswith('/') else (path.parent/relative if relative else path)).resolve()
            if target.is_dir():target=target/'index.html'
            if not target.is_file():
                missing.add(f'{path.name} → {href}');continue
            if value.fragment and target.suffix=='.html':
                key=unquote(value.fragment)
                if page(target).find(id=key) is None and page(target).find(attrs={'name':key}) is None:
                    missing.add(f'{path.name} → {href}')
            count+=1
    return count,external,missing

def run():
    data={}
    book=nbformat.read(SITE/'passage-lab.ipynb',as_version=4)
    nbformat.validate(book)
    codes=[c for c in book.cells if c.cell_type=='code']
    check([c.execution_count for c in codes]==list(range(1,8)), 'Notebook execution counters are incomplete')
    output='\n'.join(o.text for c in codes for o in c.outputs if o.output_type=='stream')
    check(all(o.output_type=='stream' for c in codes for o in c.outputs),'Unexpected notebook output')
    check((SITE/'audit.txt').read_text().strip() in output and (SITE/'wrong-order.txt').read_text().strip() in output,'Fresh compiler output disagrees with standalone runs')
    check('Lean (version 4.33.0' in output,'Wrong kernel')
    attachments={n:base64.b64decode(b['image/png']) for c in book.cells for n,b in c.get('attachments',{}).items()}
    check(len(attachments)==6,'Wrong figure count')
    for name,raw in attachments.items():check(raw==(SITE/'media'/name).read_bytes(),name+' differs from screenshot')
    check(digest((SITE/'PassageLab.lean').read_bytes()) in output,'Verified source hash mismatch')
    data['notebook']={'cells':len(book.cells),'executed_cells':len(codes),'embedded_figures':len(attachments),'declared_axiom_reports':7,'negative_control':'Lean rejected the reordered witness'}
    count,extern,missing=local_links(SITE.parent,SITE.glob('*.html'))
    check(not missing,'Missing study links: '+str(sorted(missing)))
    data['study_html']={'local_hrefs':count,'unique_external_targets':len(extern)}
    for page,maths,imgs in [('index.html',30,3),('notebook.html',17,6),('jupyter-book.html',30,3),('jupyter-lab.html',17,6)]:
        html=BeautifulSoup((SITE/page).read_text(),'html.parser')
        check(len(html.select('math'))>=maths and len(html.select('img'))==imgs,'Broken mathematics or images: '+page)
    with tempfile.TemporaryDirectory() as work:
        sub=Path(work)/'book'
        with zipfile.ZipFile(SITE/'jupyter-book.zip') as src:src.extractall(sub)
        count,_,missing=local_links(sub,sub.glob('*.html'))
        check(not missing,'Missing offline HTML links: '+str(sorted(missing)))
        data['offline_book']={'local_hrefs':count,'entry':'index.html'}
    films=json.loads((SITE.parent/'theater/films.json').read_text())
    by_level={film['id']:film for film in films}
    original_levels={f'E1M{n}' for n in range(1,10)}
    check(original_levels==set(by_level), 'Missing original-map passage in teaching gallery')
    check({f['id'] for f in films if f['proofTier']=='stock-kernel'}=={'E1M1','E1M2'},
          'Update the teaching edition to reflect the new kernel coverage')
    check(all(by_level[level]['proofTier']=='compiler-assisted' for level in original_levels-{'E1M1','E1M2'}),
          'Unknown passage checking tier')
    current_pages=['index.html','notebook.html','jupyter-book.html','jupyter-lab.html']
    for name in current_pages:
        html=BeautifulSoup((SITE/name).read_text(),'html.parser')
        check(any('theater' in a['href'] and 'E1M9' in a['href'] for a in html.select('a[href]')),
              'Missing playable Military Base reference: '+name)
    with zipfile.ZipFile(SITE/'book-source.zip') as source:
        check(source.read('downloads/passage-lab.ipynb')==(SITE/'passage-lab.ipynb').read_bytes(),
              'Source book contains a different notebook')
    with zipfile.ZipFile(SITE/'obsidian-vault.zip') as vault:
        notes=[n for n in vault.namelist() if n.endswith('.md')]
        for name in notes:
            text=vault.read(name).decode()
            for link in re.findall(r'\[\[([^\]|]+)',text):
                check(link+'.md' in notes,'Missing vault note '+link)
            for link in re.findall(r'\]\(([^)\s]+)\)',text):
                url=urlsplit(link)
                check_source_link(url, name)
                if not url.scheme and url.path:
                    check(unquote(url.path) in vault.namelist(),name+' missing '+link)
        check(vault.read('Resources/core-source.zip')==(SITE.parent/'evidence/core-source.zip').read_bytes(),'Vault source core is stale')
        check(vault.read('Resources/passage-lab.ipynb')==(SITE/'passage-lab.ipynb').read_bytes(),
              'Vault contains a different notebook')
        for row in json.loads((SITE.parent/'evidence/maps.json').read_text()):
            if row['level'] not in by_level:continue
            film=by_level[row['level']]
            note=vault.read(row['level']+' '+row['name']+'.md').decode()
            check(f"{film['tick']:,}" in note and film['engine'] in note,
                  'Stale original-map entry in vault: '+row['level'])
            route=row.get('revisedPassage') or row.get('portablePassage')
            if route:
                for f in ['receipt.json','audit.log','recording.json','camera.json']:
                    path=route['evidence']+'/'+f
                    check(vault.read('Resources/'+path)==(SITE.parent/'evidence'/path).read_bytes(),path)
        data['vault']={'markdown_notes':len(notes),'archive_files':len(vault.namelist()),'original_map_passages':len(by_level)}
    data['sha256']={name:digest((SITE/name).read_bytes()) for name in ['passage-lab.ipynb','jupyter-book.zip','book-source.zip','obsidian-vault.zip']}
    print(json.dumps(data,indent=2))
    return data

if __name__=='__main__':
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--json',type=Path);a=p.parse_args();d=run()
    if a.json:a.json.write_text(json.dumps(d,indent=2)+'\n')
