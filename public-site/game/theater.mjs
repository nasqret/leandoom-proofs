import {initial, step, replay, observe, names, recording} from './model.mjs';
import {createRenderer} from './render.mjs';
const $=id=>document.getElementById(id);
const commandKeys={ArrowUp:1,KeyW:1,ArrowDown:7,KeyS:7,ArrowLeft:2,ArrowRight:3,KeyA:4,KeyD:5,KeyE:6,Space:6,Period:0};
const paint=createRenderer($('view'));
let level, commands=[], states=[], idx=0, mode='route', running=false, timer, animation, automap=false;
let episode,source,folder,pairAPI,activeCheck,imported,lastSent='';
const prefs=new URL(location.href).searchParams;
const reduceMotion=matchMedia('(prefers-reduced-motion: reduce)').matches;
import('../downloads/pair.js').then(api=>{pairAPI=api;}).catch(()=>{});
const escape=s=>s.replaceAll('&','&amp;').replaceAll('<','&lt;').replaceAll('>','&gt;');
const syntax=s=>s.split(/('[^']*'|\b(?:def|if|then|else|return|let|match|with|fun|do|true|false|State|Room|Nat|Bool|Id|[0-9]+)\b)/g)
 .map((part,i)=>i%2?'<span class="'+(/^['0-9]/.test(part)?'num':/^(State|Room|Bool|Nat|Id)$/.test(part)?'typ':'kw')+'">'+escape(part)+'</span>':escape(part)).join('');
function codeMarker(s,prev,c) {
  if(!prev)return ['Ordinary spawn','def initial',0];
  if(s.exit&&!prev.exit)return ['Exit accepted',"if t == 'X' then return",0];
  if(s.opened&&!prev.opened)return ['Bulkhead unlocked',"if t == 'B' && s.blue",0];
  if(s.blue&&!prev.blue)return ['Blue card acquired',"if t == 'b'",0];
  if(s.hp<prev.hp)return [s.hp?'Hazard contact':'Health exhausted',"if t == '!'",0];
  if(s.used.length>prev.used.length)return ['Medikit collected',"return { next with hp := min",0];
  if(c===2||c===3)return [names[c],c===2?'if c == 2':'if c == 3',0];
  if(c===6)return ['Use action','if c == 6 then',0];
  if(c===0)return ['Wait','if c == 0 then',0];
  if(prev.x===s.x&&prev.y===s.y)return ['Position blocked',"if c > 7 || t",0];
  return [names[c],'let next := { s with x, y }',0];
}
function renderCode(prev) {
 const s=states[idx],[title,match]=codeMarker(s,prev,commands[idx-1]);
 const line=source.findIndex(row=>row.includes(match));
 const first=Math.max(0,Math.min(source.length-6,line-2)),last=first+6;
 $('event-name').textContent=title;
 $('line-info').textContent='PROOFGRID / LINE '+(line+1);
 $('listing').innerHTML=source.slice(first,last).map((v,i)=>'<div class="code-line '+(first+i===line?'active':'')+'"><em>'+(first+i+1)+'</em><code>'+syntax(v)+'</code></div>').join('');
 $('state').textContent='⟨x '+s.x+', y '+s.y+'⟩  ·  hp '+s.hp+'  ·  exit '+s.exit;
}
const pose=s=>({x:s.x,y:s.y,angle:s.facing*Math.PI/2,bob:0});
function update(animatedFrom=null) {
 const s=states[idx];cancelAnimationFrame(animation);
 if(animatedFrom&&!reduceMotion) {
    const a=pose(animatedFrom),b=pose(s),delta=Math.atan2(Math.sin(b.angle-a.angle),Math.cos(b.angle-a.angle)),start=performance.now();
    const animate=now=>{const t=Math.max(0,Math.min(1,(now-start)/Math.min(175,420/Number($('speed').value)))),u=t*t*(3-2*t);
      paint(level,s,{x:a.x+(b.x-a.x)*u,y:a.y+(b.y-a.y)*u,angle:a.angle+delta*u,bob:(a.x!==b.x||a.y!==b.y)?Math.PI*t:0},automap);
      if(t<1)animation=requestAnimationFrame(animate);
    };animation=requestAnimationFrame(animate);
 } else paint(level,s,pose(s),automap);
 renderCode(states[idx-1]);
 const n=[s.x,s.y,s.facing,s.hp,s.blue,s.opened,s.exit].join(', ');
 $('proof-draft').textContent='theorem finalObservation :\n  ProofGrid.observe (ProofGrid.play room tape) =\n    ⟨'+n+'⟩ := by\n  decide +kernel';
 const builtIn=mode==='route'&&$('route').value!=='imported'&&idx===commands.length;
 $('proof-stage').textContent=builtIn?'published certificate':'candidate · '+idx+' inputs';
 $('hp').textContent=s.hp+' / 3';$('direction').textContent=['E','S','W','N'][s.facing];
 $('key').textContent=s.blue?'BLUE':'NONE';$('door').textContent=s.opened?'OPEN':'LOCKED';
 $('seek').max=commands.length||1;$('seek').value=idx;$('seek').disabled=!commands.length;
 $('tick').textContent=idx+' / '+commands.length;
 $('camera-name').textContent=level.id+' / '+level.name;
 $('touch').hidden=mode!=='manual';$('toggle').textContent=running?'Ⅱ Pause':mode==='manual'?'▶ Resume input':idx===commands.length?'↺ Replay route':'▶ Play route';
 $('step').disabled=mode==='manual'||idx===commands.length;$('manual').disabled=mode==='manual'&&running;
 $('splash').hidden=!s.exit&&s.hp>0;
 $('splash').textContent=s.exit?'PASSAGE COMPLETE  /  '+idx+' INPUTS':'HEALTH EXHAUSTED';
 if(s.exit&&folder)verifyTape();
}
function stop(){running=false;clearInterval(timer);timer=null;}
function cancelCheck(){activeCheck?.abort();activeCheck=null;lastSent='';}
async function verifyTape() {
 const rec=recording(level,commands.slice(0,idx));
 const id=JSON.stringify(rec);if(id===lastSent||!folder||!pairAPI)return;
 activeCheck?.abort();const ctl=new AbortController();activeCheck=ctl;lastSent=id;
 const status=msg=>{if(!ctl.signal.aborted)$('verify-status').textContent=msg;};
 try{const receipt=await pairAPI.sendPairedRun(folder,rec,status,{signal:ctl.signal});status('Local verifier · '+receipt.status);}
 catch(e){if(!ctl.signal.aborted){lastSent='';status(e.message);}}
}
function chooseCourse() {
 stop();cancelCheck();level=episode.levels.find(x=>x.id===$('level').value)||episode.levels[0];
 if(imported?.level!==level.id){$('route').querySelector('option[value="imported"]')?.remove();if(!$('route').value)$('route').value='direct';}
 const route=$('route').value==='imported'?imported.commands:level.routes[$('route').value];commands=[...route];states=replay(level,commands);idx=0;mode='route';
 const params=new URL(location.href);params.searchParams.set('level',level.id);params.searchParams.set('route',$('route').value);history.replaceState({},'',params);
 $('verify-status').textContent=folder?'Local verification folder paired.':'';update();
}
function seek(n){stop();idx=Math.min(commands.length,Math.max(0,Math.floor(Number(n)||0)));update();}
function next() {
 if(idx>=commands.length){stop();update();return;}
 const old=states[idx++];if(idx===commands.length)stop();update(old);
}
function startRoute(){
 if(running){stop();update();return;}
 if(mode==='manual'){if(states[idx].exit||states[idx].hp===0){idx=0;commands=[];states=[initial(level)];}running=true;$('view').focus();update();return;}
 if(idx===commands.length)idx=0;running=true;update();
 timer=setInterval(next,580/Number($('speed').value));
}
function manual(){
 stop();cancelCheck();commands=commands.slice(0,idx);states=states.slice(0,idx+1);
 if(states[idx].exit||states[idx].hp===0){commands=[];states=[initial(level)];idx=0;}
 mode='manual';running=true;$('view').focus();update();
}
function command(c){
 if(mode!=='manual'||!running||states[idx].exit||states[idx].hp===0)return;
 if(idx>=100000){stop();update();$('verify-status').textContent='Recording limit reached. Save this tape.';return;}
 const old=states[idx],after=step(level,old,c);
 commands=commands.slice(0,idx);states=states.slice(0,idx+1);commands.push(c);states.push(after);idx++;
 if(after.exit||after.hp===0)stop();update(old);
}
function save(){
 const rec=recording(level,commands.slice(0,idx)),url=URL.createObjectURL(new Blob([JSON.stringify(rec,null,2)+'\n'],{type:'application/json'}));
 const a=document.createElement('a');a.href=url;a.download='prooflab-'+level.id+'-'+idx+'.json';a.click();setTimeout(()=>URL.revokeObjectURL(url),5000);
 if(folder)verifyTape();
}
$('pair').onclick=async()=>{
 if(!pairAPI||!window.showDirectoryPicker){$('verify-status').textContent='Start the watcher and download the tape into its folder. Chromium also supports direct folder pairing.';return;}
 try{folder=await pairAPI.choosePairFolder();$('verify-status').textContent='Folder paired. Completed passages will be checked automatically.';if(states[idx].exit)verifyTape();}
 catch(e){if(e.name!=='AbortError')$('verify-status').textContent=e.message;}
};
$('level').onchange=$('route').onchange=chooseCourse;$('toggle').onclick=startRoute;$('step').onclick=()=>{stop();next();};$('manual').onclick=manual;
$('reset').onclick=()=>{if(mode==='manual'){seek(0);manual();}else chooseCourse();};$('seek').oninput=e=>seek(e.target.value);$('speed').onchange=()=>{if(running&&mode==='route'){stop();startRoute();}};
$('load-tape').onchange=async e=>{
 const file=e.target.files[0];e.target.value='';if(!file)return;
 try{
   if(file.size>1500000)throw Error('Tape exceeds the recording limit.');
   const doc=JSON.parse(await file.text()),room=episode.levels.find(l=>l.id===doc.level);
   if(doc.schema!=='proof-lab-run-v1'||doc.engine!=='proof-lab-grid-v1'||!room||!Array.isArray(doc.commands)||doc.commands.length>100000||doc.commands.some(c=>!Number.isInteger(c)||c<0||c>7))throw Error('Expected a ProofGrid input tape.');
   const states=replay(room,doc.commands),last=observe(states.at(-1));
   if(states.slice(0,-1).some(s=>s.exit||s.hp<=0))throw Error('The tape continues past a terminal state.');
   if(doc.final&&Object.entries(last).some(([k,v])=>doc.final[k]!==v))throw Error('Claimed final observation differs from playback.');
   imported=doc;$('level').value=room.id;
   if(!$('route').querySelector('option[value="imported"]'))$('route').add(new Option('Imported recording','imported'));
   $('route').value='imported';chooseCourse();$('verify-status').textContent='Loaded '+doc.commands.length+' recorded inputs.';
 }catch(error){$('verify-status').textContent=error.message;}
};
$('export').onclick=save;$('map').onclick=()=>{automap=!automap;$('map').setAttribute('aria-pressed',automap);update();};
for(const b of document.querySelectorAll('[data-key]'))b.onclick=()=>command(Number(b.dataset.key));
window.addEventListener('keydown',e=>{
 if(e.metaKey||e.ctrlKey||e.altKey||e.target.matches?.('select,input,textarea'))return;
 if(e.code==='Escape'){stop();update();return;}
 if(mode==='manual'&&running&&Object.hasOwn(commandKeys,e.code)){e.preventDefault();command(commandKeys[e.code]);}
});
document.addEventListener('visibilitychange',()=>{if(document.hidden){stop();if(states.length)update();}});
try {
 const [levels,lean]=await Promise.all([fetch('episode.json'),fetch('ProofGrid.lean')]);
 if(!levels.ok||!lean.ok)throw Error('Course or Lean source could not be loaded.');
 episode=await levels.json();source=(await lean.text()).split('\n');
 for(const l of episode.levels)$('level').add(new Option(l.id+' · '+l.name,l.id));
 if(episode.levels.some(l=>l.id===prefs.get('level')))$('level').value=prefs.get('level');
 if(['direct','careful','survey'].includes(prefs.get('route')))$('route').value=prefs.get('route');
 chooseCourse();if(prefs.has('tick'))seek(prefs.get('tick'));
 window.proofTheater={seek,snapshot:()=>({level:level.id,route:$('route').value,tick:idx,commands:commands.slice(0,idx),...observe(states[idx])})};
} catch(e){$('state').textContent=e.message;}
