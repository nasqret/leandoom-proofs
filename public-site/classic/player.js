'use strict';
const byId = id => document.getElementById(id);
const viewport = byId('runtime');
const status = value => { byId('status').textContent=value; };
const send = data => viewport.contentWindow.postMessage({classic:true,...data},location.origin);
const mapLumps=['THINGS','LINEDEFS','SIDEDEFS','VERTEXES','SEGS','SSECTORS','NODES','SECTORS','REJECT','BLOCKMAP'];
const maxWorld=128*1024*1024;
let active=false,paused=false,generation=0,indexGeneration=0,selectedData,freeData;

function readSlots(bytes) {
  if(bytes.byteLength<12 || bytes.byteLength>maxWorld)throw Error('Select an IWAD of at most 128 MiB.');
  const view=new DataView(bytes),contents=new Uint8Array(bytes),text=new TextDecoder('ascii');
  if(text.decode(contents.subarray(0,4))!=='IWAD')throw Error('Expected a Doom IWAD header.');
  const count=view.getUint32(4,true),dir=view.getUint32(8,true);
  if(count>1000000 || dir+16*count>bytes.byteLength)throw Error('Invalid IWAD directory.');
  const names=[];
  for(let i=0;i<count;i++){
    const record=dir+16*i,pos=view.getUint32(record,true),length=view.getUint32(record+4,true);
    if(length && pos+length>bytes.byteLength)throw Error('Invalid IWAD lump range.');
    names.push(text.decode(contents.subarray(record+8,record+16)).split('\0')[0].toUpperCase());
  }
  const slots=new Set();
  names.forEach((name,i)=>{
    if(/^E[1-4]M[1-9]$/.test(name) && mapLumps.every((l,j)=>names[i+j+1]===l))slots.add(name);
  });
  if(!slots.size)throw Error('This IWAD contains no complete E1–E4 Doom-format map groups.');
  return [...slots].sort();
}

async function readWorld(){
  if(byId('wad').value==='free'){
    if(!freeData)freeData=(async()=>{
      const response=await fetch('freedoom1.wad.gz');
      if(!response.ok)throw Error('Freedoom download failed.');
      const bytes=await new Response(response.body.pipeThrough(new DecompressionStream('gzip'))).arrayBuffer();
      return {bytes,slots:readSlots(bytes),filename:'freedoom1.wad'};
    })().catch(e=>{freeData=null;throw e;});
    return freeData;
  }
  const file=byId('file').files[0];
  if(!file)throw Error('Choose your local IWAD to list its maps.');
  if(file.size>maxWorld)throw Error('This player accepts IWADs up to 128 MiB.');
  const bytes=await file.arrayBuffer(),slots=readSlots(bytes);
  // The source port derives its edition from the game data. Give E1-only files
  // the conventional shareware name; map labels always come from the directory.
  return {bytes,slots,filename:slots.some(s=>s[1]!=='1')?'doom.wad':'doom1.wad'};
}

async function indexWorld(){
  const ticket=++indexGeneration,selection=byId('level'),old=selection.value;
  generation++;selectedData=null;byId('launch').disabled=true;selection.disabled=true;selection.replaceChildren();
  byId('fileArea').hidden=byId('wad').value!=='own';status('Reading the IWAD map directory…');
  try{
    const world=await readWorld();if(ticket!==indexGeneration)return;
    selectedData=world;
    for(let ep=1;ep<=4;ep++){
      const available=world.slots.filter(slot=>Number(slot[1])===ep);
      if(!available.length)continue;
      const group=document.createElement('optgroup');group.label='Episode '+ep;
      group.append(...available.map(s=>new Option(s,s)));selection.append(group);
    }
    selection.value=world.slots.includes(old)?old:world.slots.includes('E1M1')?'E1M1':world.slots[0];
    selection.disabled=false;byId('launch').disabled=false;
    status(world.slots.length+' maps available. Choose a starting map and launch.');
  }catch(e){if(ticket===indexGeneration)status(e.message);}
}

async function start(){
  const world=selectedData,slot=byId('level').value;
  if(!world||!world.slots.includes(slot))return;
  const ticket=++generation,episode=Number(slot[1]),level=Number(slot[3]),skill=Number(byId('skill').value);
  active=false;paused=false;byId('pause').disabled=true;byId('pause').textContent='Pause';byId('launch').disabled=true;
  byId('engineState').textContent='Loading';status('Starting '+slot+'…');
  try{
    const response=await fetch('default.cfg');if(!response.ok)throw Error('Configuration unavailable.');
    const config=await response.text();if(ticket!==generation)return;
    viewport.onload=()=>{
      viewport.onload=null;if(ticket!==generation)return;
      // The file stays available in the parent for another map launch.
      const bytes=world.bytes.slice(0);
      viewport.contentWindow.postMessage({classic:true,action:'start',bytes,filename:world.filename,episode,level,skill,config},location.origin,[bytes]);
    };
    viewport.src='runtime.html?run='+ticket;
  }catch(e){if(ticket===generation){status(e.message);byId('engineState').textContent='Ready';byId('launch').disabled=false;}}
}
byId('wad').onchange=indexWorld;byId('file').onchange=indexWorld;byId('launch').onclick=start;
addEventListener('message',e=>{
  if(e.source!==viewport.contentWindow||e.origin!==location.origin||!e.data?.classic)return;
  const {state,detail}=e.data;
  if(state==='running'){
    active=true;byId('engineState').textContent='Playing';byId('launch').textContent='Restart game';
    byId('launch').disabled=!selectedData;byId('pause').disabled=false;status('Click the game to focus the keyboard.');
  }
  if(state==='paused'||state==='resumed'){
    paused=state==='paused';byId('pause').disabled=false;byId('pause').textContent=paused?'Resume':'Pause';
    byId('engineState').textContent=paused?'Paused':'Playing';
  }
  if(state==='error'){active=false;byId('pause').disabled=true;byId('launch').disabled=!selectedData;byId('engineState').textContent='Error';status(detail);}
});
byId('pause').onclick=()=>{if(!active)return;byId('pause').disabled=true;send({action:'playback',paused:!paused});};
for(const b of document.querySelectorAll('[data-key]')){
  const key=b.dataset.key;
  b.onpointerdown=e=>{e.preventDefault();b.setPointerCapture(e.pointerId);if(active)send({action:'key',key,pressed:true});};
  b.onlostpointercapture=()=>{if(active)send({action:'key',key,pressed:false});};
}
indexWorld();
