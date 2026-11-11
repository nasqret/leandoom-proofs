const make=(tag,txt,cls)=>{const e=document.createElement(tag);e.textContent=txt;if(cls)e.className=cls;return e;};
const maps=await (await fetch('maps.json')).json(),nav=document.querySelector('.maps'),detail=document.querySelector('.detail');
for(const map of maps){const a=make('a',map.level+' · '+map.name);a.href='#'+map.level;a.append(make('small',map.status));nav.append(a);}
function show(){
  const m=maps.find(x=>x.level===location.hash.slice(1))||maps[0];
  for(const a of nav.children){if(a.hash==='#'+m.level)a.setAttribute('aria-current','true');else a.removeAttribute('aria-current');}
  detail.replaceChildren(make('p',m.level+' / '+m.edition,'kicker'),make('h2',m.name),make('p',m.status,'status'),make('p',m.description));
  for(const [i,p] of m.proofs.entries()){const d=make('details','');d.open=!i;d.append(make('summary',p.title),make('pre',p.code),make('p',p.auditText),make('small','Source SHA-256 '+p.sourceSha256+' · line '+p.line));detail.append(d);}
}
addEventListener('hashchange',show);show();
const dataset=await (await fetch('declarations.json')).json();
const decls=Array.isArray(dataset)?dataset:dataset.records;
const box=document.querySelector('#matches'),q=document.querySelector('#q');
function search(){const term=q.value.trim().toLowerCase(),hits=decls.filter(d=>JSON.stringify(d).toLowerCase().includes(term));box.replaceChildren(make('p',hits.length+' matching declarations'));for(const d of hits.slice(0,40)){const node=make('details','');node.append(make('summary',d.name||d.declaration||d.theorem),make('pre',d.file+' · line '+d.line));const source=make('a','Open Lean source ↗');source.href='https://github.com/nasqret/leandoom-proofs/blob/main/research-core/'+d.file+'#L'+d.line;node.append(source);box.append(node);}}
q.oninput=search;search();
