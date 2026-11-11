// Evaluate this function in the page and supply a slot such as E1M3 or E4M9.
// A local IWAD can be selected with the ordinary file input before running it.
async function checkClassicMap(map) {
  const el = id => document.getElementById(id);
  const sleep = ms => new Promise(resolve => setTimeout(resolve,ms));
  const slot=typeof map==='number'?'E1M'+map:map;
  el('level').value = slot;
  if(el('level').value!==slot)throw Error('Missing map '+slot);
  el('launch').click();
  for(let i=0;i<160 && el('engineState').textContent==='Loading';i++) await sleep(90);
  if(el('engineState').textContent!=='Playing')throw Error(el('status').textContent);
  const win = el('runtime').contentWindow;
  let gl;
  for(let i=0;i<60 && !(gl=win.GL?.currentContext?.GLctx);i++)await sleep(50);
  if(!gl)throw Error('The source port did not initialize WebGL.');
  async function frame(){
    const bytes=await new Promise((resolve,reject)=>{
      const orig=gl.drawArrays,until=setTimeout(()=>{gl.drawArrays=orig;reject(Error('No rendered game frame.'));},4000);
      gl.drawArrays=function(...args){
        const result=orig.apply(this,args),width=gl.drawingBufferWidth,height=gl.drawingBufferHeight;
        const pixels=new Uint8Array(4*width*height);gl.readPixels(0,0,width,height,gl.RGBA,gl.UNSIGNED_BYTE,pixels);
        gl.drawArrays=orig;clearTimeout(until);resolve(pixels);return result;
      };
    });
    const colors=new Set();
    for(let i=0;i<bytes.length;i+=4*19)colors.add((bytes[i]<<16)|(bytes[i+1]<<8)|bytes[i+2]);
    const sha=Array.from(new Uint8Array(await crypto.subtle.digest('SHA-256',bytes)),n=>n.toString(16).padStart(2,'0')).join('');
    return {colors:colors.size,sha256:sha};
  }
  // Capture after the wipe-in, so a uniform black frame cannot satisfy the test.
  let initial;
  for(let i=0;i<35;i++){
    initial=await frame();if(initial.colors>=30)break;await sleep(70);
  }
  if(initial.colors<30)throw Error('The rendered canvas was blank.');
  const key=(k,pressed)=>win.postMessage({classic:true,action:'key',key:k,pressed},location.origin);
  key('ArrowRight',true);await sleep(250);key('ArrowRight',false);await sleep(160);
  const moved=await frame();if(initial.sha256===moved.sha256)throw Error('Turn did not change the image.');
  const memory=new DataView(win.Module.asm.memory.buffer);
  const actual='E'+memory.getInt32(0xec7c0,true)+'M'+memory.getInt32(0xec310,true);
  if(actual!==slot)throw Error('Engine loaded '+actual+' instead of '+slot);
  const result={map:actual,width:gl.drawingBufferWidth,height:gl.drawingBufferHeight,title:win.document.title,
    spawn:initial,afterTurn:moved};
  el('pause').click();await sleep(240);
  if(el('engineState').textContent!=='Paused')throw Error('Pause control failed.');
  let draws=0;const draw=gl.drawArrays;
  gl.drawArrays=function(...args){draws++;return draw.apply(this,args);};
  await sleep(350);gl.drawArrays=draw;
  el('pause').click();await sleep(150);
  if(el('engineState').textContent!=='Playing')throw Error('Resume control failed.');
  result.drawsWhilePaused=draws;
  if(draws!==0)throw Error('Renderer kept running during pause.');
  const resumed=await frame();if(resumed.colors<30)throw Error('Resume did not produce a game frame.');
  result.pausedThenResumed=true;
  return result;
}
