const picker = document.getElementById('cut');
const editionPicker = document.getElementById('cut-edition');
const editionControl = document.getElementById('edition-control');
const player = document.getElementById('cutvideo');
const description = document.getElementById('cutdesc');
const status = document.getElementById('cut-status');
const sourceLink = document.getElementById('cut-download');
let items = new Map();
let selection = '';
let revision = 0;
let pending = null;
let ranges, objectUrl, fetchController;

async function read(path) {
  const response = await fetch(path);
  if (!response.ok) throw Error('Film index unavailable: '+path);
  return response.json();
}

function group(title, entries) {
  const options = document.createElement('optgroup');
  options.label = title;
  for(const [key, item] of entries) {
    items.set(key,item);
    options.append(new Option(item.title+' · '+Math.round(item.seconds)+'s',key));
  }
  picker.append(options);
}

async function playEdition(keepPosition) {
  const item=items.get(picker.value);
  if(!item)return;
  const sameFilm=keepPosition && selection===picker.value;
  const time=sameFilm ? (pending?.time ?? player.currentTime) : 0;
  const resume=sameFilm && (pending?.resume ?? (!player.paused && !player.ended));
  const speed=sameFilm && pending ? pending.speed : player.playbackRate;
  const ticket=++revision;
  selection=picker.value;
  if(!sameFilm)editionPicker.value=item.defaultEdition || 'tiled';
  const paired=!!item.editions;
  const edition=editionPicker.value;
  const media=paired ? item.editions[edition] : item;
  pending={time,resume,speed};
  fetchController?.abort();
  const controller=new AbortController();
  fetchController=controller;
  editionControl.hidden=!paired;
  description.textContent=item.caption;
  status.textContent=paired ? (edition==='tiled'?'Tiled edition':'Original edition')+' · '+item.map+' · '+item.frames+' frames' : '';
  sourceLink.href=media.file;
  sourceLink.download=media.file.split('/').at(-1);
  sourceLink.textContent=paired?'Save '+(edition==='tiled'?'tiled':'original')+' film ↓':'Save film ↓';
  player.pause();
  let url=media.file,blobUrl=null;
  try{
    if(paired && ranges===undefined){
      const head=await fetch(media.file,{method:'HEAD',signal:controller.signal});
      if(ticket!==revision)return;
      ranges=head.ok && head.headers.get('Accept-Ranges')?.toLowerCase()==='bytes';
    }
    // A locally served MP4 may have no HTTP byte ranges. A seekable blob keeps
    // a reader's place when they change the picture edition on such a server.
    if(paired && !ranges){
      const response=await fetch(media.file,{signal:controller.signal});
      if(!response.ok)throw Error('Film download failed.');
      const blob=await response.blob();
      if(ticket!==revision)return;
      blobUrl=URL.createObjectURL(blob);
      url=blobUrl;
    }
  }catch(error){
    if(ticket===revision){pending=null;status.textContent='This film could not be loaded.';}
    return;
  }
  if(ticket!==revision)return;
  const oldUrl=objectUrl;objectUrl=blobUrl;
  player.onloadedmetadata=()=>{
    if(ticket!==revision)return;
    player.playbackRate=speed;
    const target=Number.isFinite(player.duration)?Math.min(time,player.duration):time;
    if(target>0)player.currentTime=target;
    const finish=()=>{
      if(ticket!==revision)return;
      pending=null;
      if(resume)player.play().catch(()=>{});
    };
    if(player.seeking)player.addEventListener('seeked',finish,{once:true});else finish();
  };
  player.onerror=()=>{
    if(ticket===revision){pending=null;status.textContent='This film could not be loaded.';}
  };
  player.dataset.mediaFile=media.file;
  player.src=url;
  player.load();
  if(oldUrl)URL.revokeObjectURL(oldUrl);
}

try{
  const [cuts,manifest]=await Promise.all([read('cuts.json'),read('scenes.json')]);
  group('Edited films',cuts.map((r,i)=>[String(i),r]));
  group('Proof scenes · two editions',manifest.scenes.map(r=>[r.slug,r]));
  picker.addEventListener('change',()=>playEdition(false));
  editionPicker.addEventListener('change',()=>playEdition(true));
  playEdition(false);
}catch(error){status.textContent=error.message;}
