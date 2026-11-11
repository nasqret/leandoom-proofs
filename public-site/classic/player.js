'use strict';
const byId=id=>document.getElementById(id);
const label=['Hangar','Nuclear Plant','Toxin Refinery','Command Control','Phobos Lab','Central Processing','Computer Station','Phobos Anomaly','Military Base'];
let active=false,paused=false,generation=0;
const viewport=byId('runtime');
const send=data=>viewport.contentWindow.postMessage({classic:true,...data},location.origin);
function levels(){const selected=byId('level').value||'1';byId('level').replaceChildren(...label.map((name,i)=>new Option('E1M'+(i+1)+(byId('wad').value==='own'?' · '+name:''),String(i+1))));byId('level').value=selected;}
levels();byId('wad').onchange=()=>{byId('fileArea').hidden=byId('wad').value!=='own';levels();};
function inspectWad(buf,level){
  const view=new DataView(buf),text=new TextDecoder('ascii');
  if(buf.byteLength<12||text.decode(buf.slice(0,4))!=='IWAD')throw Error('Select a valid IWAD with its original file header.');
  const n=view.getUint32(4,true),dir=view.getUint32(8,true);
  if(n>100000||dir>buf.byteLength||16*n>buf.byteLength-dir)throw Error('Invalid IWAD directory.');
  let found=false;
  for(let i=0;i<n;i++){const o=dir+i*16;if(view.getUint32(o,true)+view.getUint32(o+4,true)>buf.byteLength)throw Error('Invalid IWAD lump range.');if(text.decode(buf.slice(o+8,o+16)).split('\0')[0]==='E1M'+level)found=true;}
  if(!found)throw Error('This IWAD does not contain E1M'+level+'. Choose an episode IWAD.');
}
const status=txt=>byId('status').textContent=txt;
async function start(){const ticket=++generation;active=false;paused=false;byId('pause').disabled=true;byId('pause').textContent='Pause';byId('launch').disabled=true;byId('engineState').textContent='Loading';status('Preparing game data…');try{
  const level=Number(byId('level').value),skill=Number(byId('skill').value);let bytes,filename;
  if(byId('wad').value==='own'){const f=byId('file').files[0];if(!f)throw Error('Choose a local IWAD first.');if(f.size>128*1024*1024)throw Error('This player accepts IWADs up to 128 MiB.');bytes=await f.arrayBuffer();filename=f.name.toLowerCase()==='doom1.wad'?'doom1.wad':'doom.wad';}
  else{const r=await fetch('freedoom1.wad.gz');if(!r.ok)throw Error('Freedoom download failed.');bytes=await new Response(r.body.pipeThrough(new DecompressionStream('gzip'))).arrayBuffer();filename='freedoom1.wad';}
  inspectWad(bytes,level);const c=await fetch('default.cfg');if(!c.ok)throw Error('Configuration unavailable.');const config=await c.text();if(ticket!==generation)return;
  viewport.onload=()=>{viewport.onload=null;viewport.contentWindow.postMessage({classic:true,action:'start',bytes,filename,level,skill,config},location.origin,[bytes]);};viewport.src='runtime.html?run='+ticket;
}catch(e){status(e.message);byId('engineState').textContent='Ready';byId('launch').disabled=false;}}
byId('launch').onclick=start;
addEventListener('message',e=>{if(e.source!==viewport.contentWindow||e.origin!==location.origin||!e.data?.classic)return;const {state,detail}=e.data;
  if(state==='running'){active=true;byId('engineState').textContent='Playing';byId('launch').textContent='Restart game';byId('launch').disabled=byId('pause').disabled=false;status('Click the game to focus the keyboard.');}
  if(state==='paused'||state==='resumed'){
    paused=state==='paused';byId('pause').disabled=false;byId('pause').textContent=paused?'Resume':'Pause';
    byId('engineState').textContent=paused?'Paused':'Playing';
  }
  if(state==='error'){active=false;byId('pause').disabled=true;byId('launch').disabled=false;byId('engineState').textContent='Error';status(detail);}
});
byId('pause').onclick=()=>{if(!active)return;byId('pause').disabled=true;send({action:'playback',paused:!paused});};
for(const b of document.querySelectorAll('[data-key]')){const key=b.dataset.key;b.onpointerdown=e=>{e.preventDefault();b.setPointerCapture(e.pointerId);if(active)send({action:'key',key,pressed:true});};b.onlostpointercapture=()=>{if(active)send({action:'key',key,pressed:false});};}
