"""Render the reviewed chapter, source workbench and executed notebook. Run from any cwd."""
from pathlib import Path
import base64
from html import escape
import hashlib
import json
import re
import subprocess
import sys

HERE = Path(__file__).resolve().parent
SITE = HERE.parents[1] / 'public-site' / 'learn'
if not SITE.is_dir():  # standalone public release keeps tools/ next to the site root
    SITE = HERE.parents[1] / 'learn'
records = SITE / 'research-evidence.json'

def shell(title, contents, kind=''):
    return f'''<!doctype html><html lang="en"><head><meta charset="utf-8"><meta name="viewport" content="width=device-width, initial-scale=1"><meta name="color-scheme" content="dark light"><title>{escape(title)} · Lean Doom</title><link rel="stylesheet" href="reader.css"></head><body><header><div class="top"><a class="brand" href="../index.html">LEAN / DOOM</a><nav aria-label="Student materials"><a href="index.html">Chapter</a><a href="notebook.html">Notebook</a><a href="../index.html">Home</a><a href="../evidence/">Gallery</a><a href="../classic/">Play Doom</a></nav></div></header><main class="{kind}">{contents}</main><footer>Lean Doom · Student edition</footer></body></html>'''

def markdown(md, prefix=''):
    html = subprocess.run(['pandoc', '-f', 'markdown+tex_math_dollars+raw_html', '-t', 'html5', '--mathml', '--wrap=none', '--id-prefix='+prefix], input=md, text=True, capture_output=True, check=True).stdout
    return html.replace('<table>', '<div class="table-wrap"><table>').replace('</table>', '</table></div>')

def build_chapter():
    md = (HERE/'chapter.md').read_text()
    body = markdown(md)
    where = body.find('<h2')
    body = body[:where] + '<nav class="contents" aria-label="Chapter sections">' + ''.join(
        f'<a href="#{key}">{title}</a>' for key,title in [('engines','Engines'),('contract','Passage contract'),('obstacles','Hard cases'),('segments','Proof structure'),('outcomes','Results'),('reading','Reading')]) + '</nav><p class="formats"><a href="jupyter-book.html">Read the Jupyter Book</a> · <a href="book-source.zip" download>Download the Jupyter Book sources</a> · <a href="../evidence/core-source.zip" download>Download the 277-declaration proof core</a></p><p class="formats"><a href="jupyter-book.zip" download>Offline HTML book</a> · <a href="obsidian-vault.zip" download>Obsidian knowledge vault</a></p>' + body[where:]
    (SITE/'index.html').write_text(shell('What does it mean to prove a game level?',body))
    data = json.loads(records.read_text())
    parts = ['<h1>Read a research claim</h1><p>These records identify historical CombatV2 declarations by their original module and audit digests. Each local note gives the mathematical scope of the claim. The compact teaching download contains these observations and the independent airlock exercise. Checking a historical root from scratch also requires its full imports and matching map foundation.</p>']
    for level, obj in data['levels'].items():
        parts.append(f'<h2 id="{level.lower()}">{escape(level)} · {escape(obj["title"])}</h2><p>{escape(obj["description"])}</p>')
        for row in obj['declarations']:
            parts.append('<article class="evidence"><h3>'+escape(row['title'])+'</h3><p><code>'+escape(row['declaration'])+'</code></p><details><summary>Imported axiom report and source identity</summary><pre class="output">'+escape(row['auditText'])+'</pre><p>Source SHA-256 <code>'+escape(row['sourceSha256'])+'</code></p><p>Audit SHA-256 <code>'+escape(row['auditSha256'])+'</code></p></details></article>')
        if 'currentResearch' in obj:
            parts.append('<p><a href="'+escape(obj['currentResearch'])+'">Read the map-bound certificate and latest route evidence</a></p>')
        if 'additionalCompilerAssisted' in obj:
            proof=obj['additionalCompilerAssisted']
            parts.append('<article class="evidence"><h3>Compiler-assisted full passage</h3><p>'+str(proof['commands'])+' inputs reach the first exit. This proof relies on the following compiler evaluation axioms.</p><pre class="output">'+escape(json.dumps(proof['axioms'],indent=2))+'</pre><p><a href="../downloads/combat-runs.json">Full receipts, input digests and endpoints</a></p></article>')
    parts.append('<p><a href="research-evidence.json" download>Download the compact research records</a></p>')
    (SITE/'records.html').write_text(shell('Read a research claim',''.join(parts)))

def build_bench():
    source = (SITE/'PassageLab.lean').read_text()
    audit = (SITE/'audit.txt').read_text()
    negative = (SITE/'wrong-order.txt').read_text().split('WrongOrder.lean:',2)[1]
    start = source.index('def route'); end = source.index('theorem stepBound')
    excerpt = source[start:end].strip()
    def code(txt): return '<pre><code>'+escape(txt)+'</code></pre>'
    def card(idx,title,src,out,badge,explain):
        return f'<section id="{idx}"><div class="columns"><article><p class="kind">PassageLab.lean</p><h2>{title}</h2>{code(src)}</article><article><p class="kind">Stock Lean 4.33.0 · WMI</p><h2>{badge}</h2>{code(out)}<p class="caption">{explain}</p></article></div></section>'
    parts = ['<h1>A controller meets the kernel</h1><p>Compare two command lists for the four-phase airlock. The right panel quotes the retained Lean process output.</p><nav class="tools"><a href="#checked-view">Checked route</a><a href="#reordered-view">Reordered route</a><a href="PassageLab.lean" download>Download source</a></nav>']
    parts += [card('checked-view','Collect, use, walk',excerpt,'\n'.join(audit.splitlines()[:3]),'<span class="pass">Three declarations imported</span>','The declarations were compiled, then imported into a separate Lean process. The full audit covers seven declarations.'),
              card('reordered-view','Use, collect, walk',excerpt.replace('[.collect, .use, .walk]','[.use, .collect, .walk]'),'WrongOrder.lean:'+negative.strip(),'<span class="reject">The passage is rejected</span>','Only the order of the first two commands changed. With the door still closed, the final walking command cannot reach the outside.')]
    parts.append('<p><a href="audit.txt">Full import transcript</a> · <a href="wrong-order.txt">Rejected file output</a> · <a href="teaching-receipt.json">Build receipt</a></p>')
    (SITE/'kernel.html').write_text(shell('A controller meets the kernel',''.join(parts),'bench'))

def render_notebook():
    notebook = json.loads((SITE/'passage-lab.ipynb').read_text())
    md_chunks = []
    media = {hashlib.sha256(p.read_bytes()).hexdigest():p.name for p in (SITE/'media').iterdir() if p.is_file()}
    for cell in notebook['cells']:
        src = ''.join(cell['source'])
        if cell['cell_type'] == 'markdown':
            for name, attachment in cell.get('attachments',{}).items():
                img = base64.b64decode(attachment['image/png'])
                src = src.replace('attachment:'+name, 'media/'+media[hashlib.sha256(img).hexdigest()])
            md_chunks.append(src)
        else:
            idx=cell['execution_count']; assert isinstance(idx,int)
            lines = [f'<div class="cell"><span class="cell-label">Python · cell {idx}</span>',markdown('~~~~python\n'+src+'\n~~~~',f'cell{idx}-')]
            for output in cell['outputs']:
                if output['output_type'] == 'stream': lines.append('<pre class="output">'+escape(''.join(output['text']).strip())+'</pre>')
                elif output['output_type'] == 'error': raise ValueError('Notebook contains an error')
                else: raise ValueError('Unexpected output type: '+output['output_type'])
            lines.append('</div>')
            md_chunks.append('\n'.join(lines))
    (SITE/'notebook.html').write_text(shell('From a recording to a checked passage',markdown('\n\n'.join(md_chunks))))
if __name__ == '__main__':
    build_chapter(); build_bench()
    if '--prepare' not in sys.argv: render_notebook()
