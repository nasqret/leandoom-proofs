'use strict';
const canvas=document.querySelector('canvas');
let started=false,frozen=false;
const send=(state,detail='')=>parent.postMessage({classic:true,state,detail},location.origin);
addEventListener('message',event=>{
  if(event.origin!==location.origin || event.source!==parent || !event.data?.classic)return;
  const {action,bytes,level,skill,filename,pressed,key}=event.data;
  if(action==='playback' && started && typeof event.data.paused==='boolean' && window.Module?.preMainLoop){
    const requested=event.data.paused;
    try{
      if(requested!==frozen){
        frozen=requested;
        const audio=window.SDL2?.audioContext;
        if(audio){(frozen?audio.suspend():audio.resume()).catch(()=>{});}
      }
      send(frozen?'paused':'resumed');
    }catch(e){send('error','Playback control failed: '+String(e));}
    return;
  }
  if(action==='key'){
    if(frozen && pressed)return;
    const codes={'ArrowUp':['ArrowUp',38],'ArrowDown':['ArrowDown',40],'ArrowLeft':['ArrowLeft',37],'ArrowRight':['ArrowRight',39],'Control':['ControlLeft',17],' ':['Space',32],'Enter':['Enter',13],'Pause':['Pause',19]};
    if(!codes[key])return;
    const [code,n]=codes[key];
    canvas.dispatchEvent(new KeyboardEvent(pressed?'keydown':'keyup',{key,code,keyCode:n,which:n,bubbles:true,cancelable:true})); return;
  }
  if(action!=='start'||started||!(bytes instanceof ArrayBuffer)||!Number.isInteger(level)||level<1||level>9||!Number.isInteger(skill)||skill<1||skill>5)return;
  started=true;
  const wad=['doom1.wad','doom.wad','freedoom1.wad'].includes(filename)?filename:'doom.wad';
  document.getElementById('waiting').textContent='LOADING ENGINE';
  window.Module={canvas,noInitialRun:true,noExitRuntime:true,
    preMainLoop(){return !frozen;},
    print(line){if(String(line).includes('I_InitGraphics'))send('video',String(line));},
    printErr(line){if(/(?:Error:|IWAD not found|couldn't|W_GetNumForName)/i.test(String(line)))send('error',String(line));},
    onAbort(message){send('error',String(message));},
    onRuntimeInitialized(){try{
      const fs=Module.FS;fs.writeFile('/'+wad,new Uint8Array(bytes));fs.mkdir('/savefiles');fs.writeFile('/default.cfg',event.data.config);
      document.getElementById('waiting').hidden=true;canvas.focus();
      callMain(['-iwad',wad,'-warp','1',String(level),'-skill',String(skill),'-window','-nogui','-nomusic','-config','/default.cfg','-savedir','/savefiles']);send('running');
    }catch(e){if(e==='unwind'||e?.name==='ExitStatus'&&e.status===0){send('running');return;}send('error',String(e));}}
  };
  const script=document.createElement('script');script.src='websockets-doom.js';script.onerror=()=>send('error','Engine loader unavailable.');document.body.append(script);
});
send('ready');
