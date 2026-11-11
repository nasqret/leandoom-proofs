/* Compare Javascript playback with each independently checked Lean endpoint. */
import assert from 'node:assert/strict';
import {readFile} from 'node:fs/promises';
import {createHash} from 'node:crypto';
import {pathToFileURL,fileURLToPath} from 'node:url';
import {resolve,join} from 'node:path';
const sourceRoot=fileURLToPath(new URL('../../',import.meta.url));
const options=process.argv[2]?[resolve(process.argv[2])]:[join(sourceRoot,'public-site'),sourceRoot];
let root,raw;
for(const dir of options){
  try{raw=await readFile(join(dir,'game/episode.json'));root=dir;break;}catch(e){if(e.code!=='ENOENT')throw e;}
}
if(!root)throw Error('Provide a release directory containing game/ and downloads/.');
const {replay,observe}=await import(pathToFileURL(join(root,'game/model.mjs')).href);
const cert=JSON.parse(await readFile(join(root,'downloads/routes.json')));
const hash=bytes=>createHash('sha256').update(bytes).digest('hex');
assert.equal(hash(raw),cert.episodeSha256);
assert.equal(hash(await readFile(join(root,'game/ProofGrid.lean'))),cert.engineSourceSha256);
let count=0;
for(const level of JSON.parse(raw).levels){
  for(const [style,tape] of Object.entries(level.routes)){
    const checked=cert.routes[level.id+'_'+style],states=replay(level,tape);
    const masks=Buffer.alloc(4*tape.length);tape.forEach((v,i)=>masks.writeUInt32LE(v,4*i));
    assert.equal(hash(masks),checked.commandsU32LESha256);
    assert.equal(checked.status,'kernel-passage');
    assert.deepEqual(observe(states.at(-1)),checked.final);
    assert(states.slice(0,-1).every(s=>s.hp>0&&!s.exit));
    assert(states.at(-1).hp>0&&states.at(-1).exit);
    if(style==='careful')assert(states.every(s=>s.hp===3));
    if(style==='survey')assert(states.at(-1).used.length>0);
    count++;
  }
}
assert.equal(count,27);
console.log('All 27 tapes, safe first exits and final observations match their Lean receipts.');
