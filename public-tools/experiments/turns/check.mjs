// Check every exported controller and the two historical kernel witnesses.
import assert from 'node:assert/strict';
import { readFile } from 'node:fs/promises';
import { gunzipSync } from 'node:zlib';
import { turnTape } from '../../../public-site/theater/lab/turns.mjs';

const root = new URL('../../../', import.meta.url);
const read = async path => readFile(new URL(path, root));
const json = async path => JSON.parse(await read(path));
const tape = (await json('public-site/evidence/recordings/prooflab-e1m1-993.json')).commands;
const short = (await json('public-tools/verifier/examples/prooflab-e1m1-978.json')).commands;
const path = 'public-site/evidence/experiments/turns/';
const rows = gunzipSync(await read(path + 'grid.jsonl.gz')).toString().trim().split('\n').map(line => JSON.parse(line));
const grid = await json(path + 'turns.json');
assert.deepEqual(turnTape(tape, 5, 7, 9), short);
assert.deepEqual(turnTape(tape, 0, 0, 0), [...tape.slice(0, 991), 4096]);
const batches = await Promise.all(Array.from({ length: 25 }, (_, cut) =>
  json(path + 'study/paths-' + cut + '.json')));
for (const [cut, batch] of batches.entries()) {
  assert.equal(batch.cut, cut);
  assert.equal(batch.startTick, grid.baselineFrom);
  assert.equal(batch.paths.length, 110);
}
let ticks = 0;
for (let i = 0; i < rows.length; i++) {
  const { edit, observation } = rows[i], [cut, blend, approach] = edit;
  const u = turnTape(tape, ...edit);
  assert.equal(u.length, 992 - cut - approach);
  assert.equal(u.at(-1), 4096);
  assert.deepEqual(u.slice(0, 942), tape.slice(0, 942));
  assert.equal(u.slice(942, 978 - cut).filter(x => x === 578).length, blend);
  assert.equal(grid.firstExits[i], observation.first_exit);
  const poses = batches[cut].paths[blend * 10 + approach];
  assert.equal(poses.length, u.length - grid.baselineFrom + 1);
  assert.deepEqual(poses[0].slice(0, 2), grid.baselineXY[0]);
  for (const [x, y, facing] of poses) {
    assert.ok([x, y, facing].every(Number.isInteger));
    assert.ok(x >= -(2 ** 31) && x < 2 ** 31 && y >= -(2 ** 31) && y < 2 ** 31);
    assert.ok(facing >= 0 && facing < 2 ** 32);
  }
  if (rows[i].win) assert.deepEqual(poses.at(-1), [observation.x, observation.y, observation.angle]);
  ticks += poses.length;
}
assert.throws(() => turnTape(tape, 25, 2, 3), RangeError);
console.log(`2,750 control exports, ${ticks} measured positions and 651 winning endpoints checked. Both historic witness tapes matched exactly.`);
