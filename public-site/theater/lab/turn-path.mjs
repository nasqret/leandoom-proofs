import { drawSamples } from './draw.mjs';

export function pathViewer(grid, loadCut) {
  const figure = document.createElement('figure');
  figure.className = 'turn-path';
  const label = document.createElement('label');
  label.textContent = 'Inspect approach tick ';
  const time = document.createElement('input');
  time.type = 'range';
  time.step = 1;
  time.min = grid.baselineFrom;
  time.id = 'turn-time';
  label.append(time);
  const canvas = document.createElement('canvas');
  canvas.setAttribute('role', 'img');
  const caption = document.createElement('figcaption');
  caption.textContent = 'Your approach is green. The dashed line is the original 993-tick route.';
  const readout = document.createElement('output');
  readout.setAttribute('for', time.id);
  figure.append(canvas, caption, label, readout);
  const baseline = grid.baselineXY.map(([x,y]) => [x / 65536, y / 65536]);
  const cache = new Map();
  let request = 0, poses = [], points = [];
  function draw() {
    if (!poses.length || !canvas.clientWidth) return;
    const i = Number(time.value) - grid.baselineFrom;
    drawSamples(canvas, points, baseline, i);
    const heading = poses[i][2] * 360 / 2**32;
    readout.textContent = `Tick ${time.value} · heading ${heading.toFixed(1)}° · position (${points[i][0].toFixed(1)}, ${points[i][1].toFixed(1)})`;
    canvas.setAttribute('aria-label', 'Overhead final approach. ' + readout.textContent);
  }
  time.addEventListener('input', draw);
  new ResizeObserver(draw).observe(canvas);
  async function select(cut, blend, approach) {
    const version = ++request;
    poses = [];
    time.disabled = true;
    canvas.hidden = true;
    readout.textContent = 'Loading measured positions…';
    try {
      if (!cache.has(cut)) cache.set(cut, loadCut(cut).catch(err => { cache.delete(cut); throw err; }));
      const batch = await cache.get(cut);
      if (version !== request) return;
      const path = batch.paths[blend * 10 + approach];
      if (batch.cut !== cut || batch.startTick !== grid.baselineFrom || path.length !== 993-cut-approach-grid.baselineFrom)
        throw new Error('Incomplete turn trajectory');
      poses = path;
      points = poses.map(([x,y]) => [x / 65536, y / 65536]);
      time.max = grid.baselineFrom + path.length - 1;
      time.value = time.max;
      time.disabled = false;
      canvas.hidden = false;
      draw();
    } catch (e) {
      if (version === request) readout.textContent = 'Could not load this trajectory. ' + e.message;
    }
  }
  return { figure, select };
}
