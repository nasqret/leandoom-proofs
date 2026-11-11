/* SPDX-License-Identifier: MIT
 * Headless observer for the released Chocolate Doom WASM. The Emscripten host
 * captures the engine's scheduled frame callback and calls it in timedemo mode.
 * Addresses below come from DWARF in the byte-identical module this tool checks.
 */
'use strict';
const fs = require('node:fs');
const path = require('node:path');
const vm = require('node:vm');
const {createHash} = require('node:crypto');

const [directory, iwad, lmp, output] = process.argv.slice(2);
if (!directory || !iwad || !lmp || !output) {
  console.error('Usage: node replay.cjs CLASSIC_DIRECTORY LOCAL_DOOM1.WAD LOCAL_DEMO.LMP RESULT.json');
  process.exit(2);
}
const hash = bytes => createHash('sha256').update(bytes).digest('hex');
const wasm = fs.readFileSync(path.join(directory, 'websockets-doom.wasm'));
const glue = fs.readFileSync(path.join(directory, 'websockets-doom.js'));
const wasmHash = '4a55e4381d374b9bf347116e8c6f52547bb990fd7fc28a5e21af354830f80f78';
const glueHash = 'f8670d5e86cc7a96426b56da7a164b46473879f2338f2fe24c192cb1628a30b1';
if (hash(wasm) !== wasmHash || hash(glue) !== glueHash) throw Error('Runtime revision differs from the reviewed DWARF layout.');
const world = fs.readFileSync(iwad), demo = fs.readFileSync(lmp);
if (world.length < 12 || world.toString('ascii',0,4)!=='IWAD') throw Error('Expected a local Doom IWAD.');
if (demo.length < 18 || demo[0]!==109 || demo[1]>4 || demo[2]!==1 || demo[3]<1 || demo[3]>9 ||
    demo[4]!==0 || demo[8]!==0 || demo[9]!==1 || demo[10] || demo[11] || demo[12]) {
  throw Error('Expected a version-1.9 single-player episode-one Doom input recording.');
}
const messages = [];
function log(value) {
  messages.push(String(value));
  if (messages.length > 70) messages.shift();
}
const registered = Error('host owns scheduling');
let instance, callback;
const options = {
  noInitialRun:true, noExitRuntime:true, print:log, printErr:log,
  instantiateWasm(imports, receive) {
    imports.env.emscripten_set_main_loop = index => { callback=index; throw registered; };
    instance = new WebAssembly.Instance(new WebAssembly.Module(wasm), imports);
    receive(instance);
    return instance.exports;
  },
  onRuntimeInitialized() { setImmediate(run); }
};
const host = vm.createContext({
  Module:options, process, require, console, __dirname:directory, __filename:path.join(directory,'websockets-doom.js'),
  module:{exports:{}}, Buffer, WebAssembly, setTimeout, clearTimeout, setImmediate, clearImmediate, performance,
  TextDecoder, TextEncoder, URL, Uint8Array, ArrayBuffer
});
new vm.Script(glue.toString(), {filename:'websockets-doom.js'}).runInContext(host);

function observe() {
  const memory=new DataView(instance.exports.memory.buffer), i32=p=>memory.getInt32(p,true);
  const base=0xec340; // players[0], src/doom/g_game.c
  return {tic:i32(0x74f18),episode:i32(0xec7c0),map:i32(0xec310),state:i32(0xec2d4),levelTime:i32(0xef08c),
    playback:!!i32(0xec86c),skill:i32(0xec7c4),noMonsters:!!i32(0xebbc8),secretExit:!!i32(0xec990),
    health:i32(base+0x28),armor:i32(base+0x2c),cheats:i32(base+0xcc),
    kills:i32(base+0xd4),items:i32(base+0xd8),secrets:i32(base+0xdc),
    totalKills:i32(0xeca5c),totalItems:i32(0xeca60),totalSecrets:i32(0xeca64)};
}

function run() {
  const filename = path.basename(iwad).toLowerCase()==='doom1.wad'?'/doom1.wad':'/doom.wad';
  options.FS.writeFile(filename,new Uint8Array(world));
  options.FS.writeFile('/route.lmp',new Uint8Array(demo));
  const args=['-iwad',filename,'-timedemo','route','-nodraw','-noblit','-nosound','-nogui'];
  try { host.callMain(args); }
  catch(error) { if (error!==registered) throw Error('Engine startup failed: '+messages.slice(-8).join(' '), {cause:error}); }
  if (!Number.isInteger(callback)) throw Error('Engine did not register its main loop.');
  const frame=instance.exports.__indirect_function_table.get(callback);
  const events=[];
  let lastKey='',stop='frame limit',cheatFlags=0;
  const limit=Math.ceil(demo.length/4)+300;
  try {
    for (let n=0;n<limit;n++) {
      frame();
      const s=observe();if(!s.playback)continue;
      cheatFlags|=s.cheats;
      const key=s.episode+'/'+s.map+'/'+s.state;
      if (key!==lastKey) {events.push(s);lastKey=key;}
      if (s.state===2 && s.map===8) {stop='episode finale';break;}
    }
  } catch(error) {
    if (!messages.some(s=>s.includes('gametics in'))) throw Error('Engine replay failed: '+messages.slice(-8).join(' '), {cause:error});
    stop='recording ended';
  }
  const arrivals=events.filter(s=>s.state===0).map(s=>'E'+s.episode+'M'+s.map);
  const endings=events.filter(s=>s.state===1||s.state===2);
  const order=[1,2,3,9,4,5,6,7,8];
  const full=stop==='episode finale' && arrivals.length===9 && endings.length===9 &&
    order.every((map,i)=>arrivals[i]==='E1M'+map && endings[i].episode===1 && endings[i].map===map) &&
    endings[2].secretExit && endings.at(-1).state===2;
  const result={schema:'classic-campaign-replay-v1',wasmSha256:wasmHash,glueSha256:glueHash,
    iwadSha256:hash(world),lmpSha256:hash(demo),node:process.version,stop,fullEpisodeViaSecret:full,
    arrivals,cheatFlags,events};
  fs.writeFileSync(output, JSON.stringify(result,null,2)+'\n');
  console.log(arrivals.join(' → ')+' · '+stop+' · '+(events.at(-1)?.tic??0)+' gametics at the last state transition');
  process.exit(0);
}
