import {choosePairFolder, sendPairedRun} from '../downloads/pair.js';

const el = name => document.getElementById('native-' + name);
const owner = crypto.randomUUID();
const levels = Array.from({length:9}, (_,i) => 'E1M'+(i+1));
const keyMasks = {KeyW:2,ArrowUp:2,KeyS:4,ArrowDown:4,KeyA:8,KeyD:16,ArrowLeft:32,ArrowRight:64,
  ShiftLeft:512,ShiftRight:512,Space:4096,KeyE:4096,ControlLeft:8192,ControlRight:8192,
  Digit1:16384,Digit2:32768,Digit3:65536};
const canvas=el('view'), ctx=canvas.getContext('2d'), image=ctx.createImageData(320,200);
const held=new Map();
let lean=[],routes=[],session,state,tape=[],playing=false,task=Promise.resolve(),latched=0,timer;
let folder,controller,lastSent=null,route=null,deadline=0,resetId=0,loaded=null;
const allowed=Object.values(keyMasks).reduce((a,b)=>a|b,0);
const terminal=()=>state&&(state.exit || state.health<=0 || state.error!==null);
const status=message=>{el('status').textContent=message;};
const active=()=>tape.length < 100000 && !terminal() && (!route || tape.length<route.commands.length);
function source(title,marker){
  const line=lean.findIndex(s=>s.includes(marker)),first=Math.max(0,line-2);
  el('line').textContent='MAPWORKER / LINE '+(line+1);
  el('event').textContent=title;el('code').replaceChildren();
  lean.slice(first,first+6).forEach((text,i)=>{
    const div=document.createElement('div'),em=document.createElement('em'),code=document.createElement('code');
    div.className='code-line'+(first+i===line?' active':'');em.textContent=first+i+1;
    for(const token of text.split(/(\b(?:let|unless|if|do|then|for|in|true|none|throw|return|Simulation|Assets|Float|Map|IO|Nat|UInt32)\b)/)){
      if(/^(let|unless|if|do|then|for|in|true|none|throw|return|Simulation|Assets|Float|Map|IO|Nat|UInt32)$/.test(token)){
        const span=document.createElement('span');span.className=/^[A-Z]/.test(token)?'typ':'kw';span.textContent=token;code.append(span);
      }else code.append(token);
    }
    div.append(em,code);el('code').append(div);
  });
}
function controls(){
  el('toggle').textContent=playing?'Ⅱ Pause':active()?'▶ Play':'↺ Replay';
  el('step').disabled=!active();el('seeker').hidden=!route;
  el('seek').max=route?.commands.length||1;el('seek').value=tape.length;
}
function paint(pixels){
  for(let i=0,j=0;i<pixels.length;i+=3,j+=4){
    image.data[j]=pixels[i];image.data[j+1]=pixels[i+1];image.data[j+2]=pixels[i+2];image.data[j+3]=255;
  }
  ctx.putImageData(image,0,0);canvas.hidden=false;el('still').hidden=true;
  el('camera').textContent=state.map+' / COMBATV2';el('hp').textContent=state.health;
  el('ammo').textContent=state.bullets;el('tick').textContent=state.tick;el('exit').textContent=String(state.exit).toUpperCase();
  el('state').textContent='⟨'+state.x+', '+state.y+'⟩ raw · '+state.shots+' shots · exit '+state.exit;
  if(state.exit)source('Exit requested','("exit", toJson');
  else if(state.error)source('Physics exception','if s.physicsError.isSome');
  else if(state.tick===0)source('Ordinary spawn','let start ← checked');
  else if(state.health<=0)source('Health exhausted','("health", toJson');
  else source('Advance one game tick','s := s.tickCombatV2');
  el('theorem').hidden=false;
  const values=['tick','x','y','health','armor','bullets','shells','shots','kills','exit'].map(k=>state[k]).concat(state.error===null);
  el('draft').textContent='theorem finalObservation :\n  OriginalReplay.observation group mapName tape =\n    some ⟨'+values.join(', ')+'⟩ := by\n  decide +kernel';
  controls();
}
function recording(){
  const final={};
  for(const k of ['tick','x','y','health','armor','bullets','shells','shots','kills','exit','error'])final[k]=state[k];
  if(final.error!==null){delete final.error;final.errorFree=false;}
  return {schema:'combatv2-run-v1',engine:'CombatV2',iwadSha256:session.iwadSha256,level:state.map,commands:[...tape],final};
}
function stop(){
  playing=false;clearTimeout(timer);latched=0;held.clear();if(state)controls();
}
function fail(error){
  stop();status(error.message||String(error));
}
function enqueue(operation){
  task=task.then(operation).catch(fail);return task;
}
async function verify(){
  if(!folder||!state)return;
  const run=recording(),key=run.level+'/'+run.commands.length+'/'+run.commands.join(',');
  if(lastSent===key)return;
  controller?.abort();const local=new AbortController();controller=local;lastSent=key;
  const tell=msg=>{if(!local.signal.aborted)status(msg);};
  try {const receipt=await sendPairedRun(folder,run,tell,{signal:local.signal});tell('Local Lean · '+receipt.status);}
  catch(e){if(!local.signal.aborted){lastSent=null;tell(e.message);}}
}
async function exchange(data){
  const response=await fetch('session',{method:'POST',headers:{'Content-Type':'application/json'},body:JSON.stringify({owner,...data})});
  if(!response.ok)throw Error(await response.text());
  const next=JSON.parse(atob(response.headers.get('X-Game-State')));
  const pixels=new Uint8Array(await response.arrayBuffer());
  if(pixels.length!==320*200*3)throw Error('Incomplete native frame.');
  if(data.op==='step'){
    const used=next.recorded-tape.length;
    if(used<0||used>data.commands.length)throw Error('Recording position mismatch.');
    tape.push(...data.commands.slice(0,used));
    if(!used&&data.commands.length)stop();
  }else tape=[];
  state=next;paint(pixels);
}
function menu(){
  const select=el('route');select.replaceChildren(new Option('Keyboard / touch','manual'));
  const candidates=session.verifiedIwad?routes.filter(r=>r.level===el('level').value):[];
  for(const r of candidates)select.add(new Option(r.name,String(routes.indexOf(r))));
  if(loaded && loaded.level===el('level').value)select.add(new Option('Imported tape','imported'));
  select.value=candidates.length?String(routes.indexOf(candidates[0])):'manual';
}
async function reset(){
  controller?.abort();lastSent=null;
  const selection=el('route').value;
  route=selection==='manual'?null:selection==='imported'?loaded:routes[Number(selection)];
  await exchange({op:'start',level:el('level').value});
  status(route?route.name+' · '+route.scope+' · '+route.commands.length+' recorded inputs.':'Keyboard control · press Play to begin recording.');
}
function fresh(changeLevel=false){
  stop();resetId++;if(changeLevel)menu();return enqueue(reset);
}
function finish(){
  stop();
  if(state.exit){status('Exit requested at input '+tape.length+'.');if(folder)verify();}
  else if(state.error){status('Engine error at input '+tape.length+' · '+JSON.stringify(state.error));}
  else if(state.health<=0){status('Health exhausted at input '+tape.length+'.');}
  else status('Recording stopped at input '+tape.length+'.');
}
async function advance(count){
  if(!active()){finish();return;}
  const mask=[...held.values()].reduce((a,b)=>a|b,0),remaining=100000-tape.length;
  const batch=route?route.commands.slice(tape.length,tape.length+Math.min(count,remaining)):
    Array.from({length:Math.min(count,remaining)},(_,i)=>mask|(i===0?latched:0));
  latched=0;
  await exchange({op:'step',at:tape.length,commands:batch});
  if(!active())finish();
}
function schedule(){
  if(!playing)return;
  const dt=1000/(35*Number(el('speed').value));
  timer=setTimeout(()=>enqueue(async()=>{
    if(!playing)return;
    const count=Math.min(12,1+Math.max(0,Math.floor((performance.now()-deadline)/dt)));
    deadline+=dt*count;await advance(count);if(playing)schedule();
  }),Math.max(0,deadline-performance.now()));
}
function toggle(){
  if(playing){stop();return;}
  enqueue(async()=>{
    if(!active())await reset();
    playing=true;deadline=performance.now();controls();canvas.focus();schedule();
  });
}
async function seek(index,id){
  if(!route||id!==resetId)return;
  await reset();
  while(tape.length<index && active() && id===resetId){
    const before=tape.length;
    await advance(Math.min(35,index-before));if(tape.length===before)break;
  }
}
function save(){
  const run=recording(),blob=new Blob([JSON.stringify(run)+'\n'],{type:'application/json'}),u=URL.createObjectURL(blob);
  const a=document.createElement('a');a.href=u;a.download='prooflab-'+run.level+'-'+run.commands.length+'.json';a.click();
  setTimeout(()=>URL.revokeObjectURL(u),5000);if(folder)verify();
}
async function loadTape(file){
  if(!file)return;
  if(file.size>1500000)throw Error('Tape exceeds the recording limit.');
  const run=JSON.parse(await file.text());
  if(run.schema!=='combatv2-run-v1'||run.engine!=='CombatV2'||!levels.includes(run.level)
    ||(run.iwadSha256||'1d7d43be501e67d927e415e0b8f3e29c3bf33075e859721816f652a526cac771')!==session.iwadSha256
    ||!Array.isArray(run.commands)||run.commands.length>100000
    ||run.commands.some(c=>!Number.isInteger(c)||c<0||c>allowed||(c&~allowed)!==0)){
    throw Error('Expected a valid CombatV2 tape for this local IWAD.');
  }
  loaded={...run,name:'Imported recording',scope:'Local replay'};el('level').value=run.level;menu();el('route').value='imported';await reset();
}
for(const level of levels)el('level').add(new Option(level,level));
try{
  const src=await fetch('MapWorker.lean');if(!src.ok)throw Error('Native worker source is unavailable.');
  lean=(await src.text()).split('\n');source('Ordinary spawn','let start ← checked');
  if(location.hostname==='127.0.0.1'&&/^\/[\w-]{25,}\/game\/native\.html$/.test(location.pathname)){
    const sr=await fetch('session'),rr=await fetch('native-routes.json');if(!sr.ok||!rr.ok)throw Error('Local game could not start.');
    session=await sr.json();routes=await rr.json();
    document.querySelectorAll('[data-online]').forEach(a=>a.hidden=true);
    document.getElementById('instructions').hidden=true;el('playbar').hidden=false;el('help').hidden=false;
    el('level').disabled=false;el('route').disabled=false;menu();await reset();
    el('level').onchange=()=>fresh(true);el('route').onchange=()=>fresh();
    el('toggle').onclick=toggle;el('reset').onclick=()=>fresh();
    el('step').onclick=()=>{stop();enqueue(()=>advance(1));};
    el('seek').onchange=()=>{const index=Number(el('seek').value),id=++resetId;stop();enqueue(()=>seek(index,id));};
    el('export').onclick=()=>{stop();enqueue(save);};
    el('import').onchange=e=>{stop();const file=e.target.files[0];e.target.value='';enqueue(()=>loadTape(file));};
    el('pair').onclick=async()=>{
      try{folder=await choosePairFolder();status('Folder paired. The local watcher verifies each completed passage or saved tape.');if(state.exit)verify();}
      catch(e){if(e.name!=='AbortError')status(e.message);}
    };
    window.addEventListener('keydown',e=>{
      if(e.code==='Escape'){stop();return;}
      if(!playing||route||e.metaKey||e.altKey||e.target.matches('input,select'))return;
      const mask=keyMasks[e.code];if(mask){e.preventDefault();held.set(e.code,mask);latched|=mask;}
    });
    window.addEventListener('keyup',e=>held.delete(e.code));
    for(const b of document.querySelectorAll('[data-mask]')){
      b.onpointerdown=e=>{if(route||!playing)return;e.preventDefault();b.setPointerCapture(e.pointerId);
        const m=Number(b.dataset.mask);held.set(e.pointerId,m);latched|=m;};
      b.onpointerup=b.onlostpointercapture=e=>held.delete(e.pointerId);
    }
    window.addEventListener('blur',stop);
    document.addEventListener('visibilitychange',()=>{if(document.hidden)stop();});
  }
}catch(e){fail(e);}
