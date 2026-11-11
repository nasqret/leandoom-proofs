import { createHash } from 'node:crypto';
import { readFile } from 'node:fs/promises';
import { turnTape } from '../../../../public-site/theater/lab/turns.mjs';

const recording = new URL('../../../../public-site/evidence/recordings/prooflab-e1m1-993.json', import.meta.url);
const tape = JSON.parse(await readFile(recording)).commands;
const sha = bytes => createHash('sha256').update(bytes).digest('hex');
const prefix = Buffer.alloc(942 * 4);
for (let i=0; i<942; i++) prefix.writeUInt32LE(tape[i],i*4);
const suffixes = [];
for (let cut=0;cut<25;cut++) {
  const cases=[];
  for (let blend=0;blend<11;blend++) for (let approach=0;approach<10;approach++) {
    const edited=turnTape(tape,cut,blend,approach);
    if (edited.length!==992-cut-approach || edited.at(-1)!==4096 ||
        !tape.slice(0,942).every((k,t)=>edited[t]===k)) throw new Error('Invalid edited route');
    cases.push(edited.slice(942));
  }
  suffixes.push(cases);
}
process.stdout.write(JSON.stringify({schema:'hangar-browser-controllers-v1',shape:[25,11,10],prefixTicks:942,
  prefixU32leSha256:sha(prefix),turnTapeSourceSha256:sha(turnTape.toString()),suffixes})+'\n');
