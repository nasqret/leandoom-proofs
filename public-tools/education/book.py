"""Package an independently buildable Jupyter Book using its retained outputs."""
import base64
import io
import json
from pathlib import Path
import re
from urllib.parse import urljoin
import zipfile

here = Path(__file__).resolve().parent
learn = here.parents[1] / 'public-site' / 'learn'
if not learn.is_dir():
    learn = here.parents[1] / 'learn'
base = 'https://nasqret.github.io/leandoom-proofs/learn/'
files = {
    '_toc.yml': 'format: jb-book\nroot: index\nchapters:\n  - file: lab\n',
    '_config.yml': '''title: Proving a passage in Lean Doom
author: Lean Doom proof project
only_build_toc_files: true
execute:
  execute_notebooks: "off"
sphinx:
  config:
    html_last_updated_fmt: null
    html_copy_source: false
''',
    'requirements.txt': 'jupyter-book==1.0.4.post1\n',
    'README.txt': 'Install the packages from requirements.txt, then run jupyter-book build . -W -n --all. Open _build/html/index.html. Stored output in lab.ipynb comes from a WMI Python and Lean run. Read index.md and the notebook directly without building. The original standalone notebook is in downloads/.\n'
}

def links(text):
    def target(match):
        url = match[1]
        if url.startswith(('http:', 'https:', 'media/', 'attachment:', '#')):
            return match[0]
        if url.startswith(('notebook.html','index.html')):
            if '#' in url:
                return ']('+urljoin(base, url)+')'
            return '](lab.ipynb)' if url.startswith('notebook') else '](index.md)'
        return ']('+urljoin(base, url)+')'
    return re.sub(r'\]\(([^)\s]+)\)',target,text)

files['index.md'] = links(re.sub(r'^(#+ [^\n]+?) \{#([^}]+)\}$', lambda m:f'({m[2]})=\n{m[1]}',(here/'chapter.md').read_text(),flags=re.M))
notebook = json.loads((learn/'passage-lab.ipynb').read_text())
for cell in notebook['cells']:
    if cell['cell_type'] == 'markdown':
        text = ''.join(cell['source']).replace('<a id="shortest"></a>', '(shortest)=')
        for name, attachments in cell.pop('attachments',{}).items():
            files['media/'+name] = base64.b64decode(attachments['image/png'])
            text = text.replace('attachment:'+name, 'media/'+name)
        cell['source'] = links(text).splitlines(keepends=True)
files['lab.ipynb'] = json.dumps(notebook, indent=1, ensure_ascii=False)+'\n'
for name in ['passage-lab.ipynb','PassageLab.lean','Audit.lean','audit.txt','wrong-order.txt','research-evidence.json','teaching-receipt.json','freedoom-COPYING.txt']:
    files['downloads/'+name]=(learn/name).read_bytes()
archive=learn/'book-source.zip'
with io.BytesIO() as buffer:
    with zipfile.ZipFile(buffer,'w') as bundle:
        for name,data in sorted(files.items()):
            info=zipfile.ZipInfo(name,date_time=(2026,11,11,0,0,0))
            info.external_attr=0o100644<<16
            bundle.writestr(info,data,compress_type=zipfile.ZIP_DEFLATED,compresslevel=6)
    archive.write_bytes(buffer.getvalue())
