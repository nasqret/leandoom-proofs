"""Present strict Jupyter Book's article trees as two portable, offline HTML pages."""
import argparse
from pathlib import Path
import re
import posixpath
from urllib.parse import urlsplit,urljoin
from zipfile import ZipFile,ZipInfo,ZIP_DEFLATED
from bs4 import BeautifulSoup
from render import SITE, shell, markdown

BASE='https://nasqret.github.io/leandoom-proofs/'
READ=BASE+'learn/'
def archive(path,files):
    with ZipFile(path,'w') as bundle:
        for name,data in sorted(files.items()):
            info=ZipInfo(name,(2026,11,11,0,0,0));info.external_attr=0o100644<<16
            bundle.writestr(info,data,compress_type=ZIP_DEFLATED,compresslevel=6)

def offline_article(path,destination):
    document=BeautifulSoup(path.read_text(),'html.parser')
    article=document.select_one('article.bd-article')
    if not article:
        raise ValueError(f'Jupyter Book article missing in {path}')
    for mark in article.select('a.headerlink, script'):
        mark.decompose()
    for formula in article.select('.math'):
        expr=formula.get_text().strip()
        display=expr.startswith('\\[')
        if not(display or expr.startswith('\\(')):
            raise ValueError('Unknown TeX delimiter in '+expr)
        sep='$$' if display else '$'
        result=BeautifulSoup(markdown(sep+expr[2:-2].strip()+sep),'html.parser').find('math')
        if not result:
            raise ValueError('MathML conversion failed for '+expr)
        formula.replace_with(result)
    for img in article.select('img[src]'):
        name=Path(img['src']).name
        if not (SITE/'media'/name).is_file():
            raise ValueError('Missing image '+name)
        img['src']='media/'+name
        if img.parent.name=='p':
            figure=document.new_tag('figure');cap=document.new_tag('figcaption')
            cap.string=img.get('alt','');img.parent.replace_with(figure);figure.extend([img,cap])
    for table in article.select('table'):
        wrap=document.new_tag('div')
        wrap['class']=['table-wrap']
        table.wrap(wrap)
    for a in article.select('a[href]'):
        target=a['href']
        if target.startswith(BASE):
            a['href']=posixpath.relpath(target[len(BASE):],start='learn')
        elif target=='lab.html':
            a['href']='jupyter-lab.html'
        elif target=='index.html':
            a['href']='jupyter-book.html'
    title=article.h1.get_text(strip=True)
    tools='<nav class="tools" aria-label="Jupyter Book navigation"><a href="jupyter-book.html">1 · Engine and proof</a><a href="jupyter-lab.html">2 · Executable lab</a><a href="jupyter-book.zip" download>Offline book ↓</a><a href="book-source.zip" download>Book sources ↓</a></nav>'
    destination.write_text(shell(title+' · Jupyter Book',tools+str(article)))

def build(dirpath):
    for original,pub in [('index.html','jupyter-book.html'),('lab.html','jupyter-lab.html')]:
        offline_article(dirpath/original,SITE/pub)
    allowed={p.relative_to(SITE).as_posix() for p in (SITE/'media').glob('*.png')}
    allowed.update(['reader.css','index.html','notebook.html','jupyter-book.html','jupyter-lab.html','records.html','kernel.html','passage-lab.ipynb','PassageLab.lean','Audit.lean','audit.txt','wrong-order.txt','research-evidence.json','teaching-receipt.json','freedoom-COPYING.txt'])
    files={}
    for name in allowed:
        data=(SITE/name).read_bytes()
        if name.endswith('.html'):
            if name=='index.html':
                data=(SITE/'jupyter-book.html').read_bytes()
            doc=BeautifulSoup(data,'html.parser')
            for el in doc.select('a[href]'):
                url=el['href']
                if url.startswith(('https:','http:','#','mailto:')):
                    continue
                if name=='jupyter-lab.html' and url.startswith('index.html#'):
                    el['href']=url.replace('index.html','jupyter-book.html',1)
                    continue
                path=urlsplit(url).path
                if path=='jupyter-book.zip':
                    el.decompose()
                elif path not in allowed or path in ['obsidian-vault.zip','book-source.zip']:
                    el['href']=urljoin(READ,url)
            data=str(doc).encode()
        files[name]=data
    files['README.txt']=b'Open index.html in a browser. Both chapters, mathematical typesetting, pictures, code, and the executed notebook are local. External references and the games require an internet connection. The source Jupyter Book is linked from the chapter navigation.\n'
    archive(SITE/'jupyter-book.zip',files)

if __name__=='__main__':
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('built_html',type=Path,help='Directory containing WMI-built index.html and lab.html')
    build(p.parse_args().built_html)
