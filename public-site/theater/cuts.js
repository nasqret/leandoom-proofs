const rows=await (await fetch('cuts.json')).json();
const select=document.querySelector('#cut'),player=document.querySelector('#cutvideo'),desc=document.querySelector('#cutdesc');
for(const [i,row] of rows.entries())select.add(new Option(row.title+' · '+Math.round(row.seconds)+'s',i));
function load(){const r=rows[Number(select.value)];player.src=r.file;desc.textContent=r.caption;player.load();}
select.onchange=load;load();
