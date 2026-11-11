import { linkDeclaration } from './source.mjs';
import { pathViewer } from './turn-path.mjs';

// The original 993-input witness and the checked parameter census are shipped with the site.
export function turnTape(base, cut, blend, approach) {
  if (base.length !== 993 || ![cut, blend, approach].every(Number.isInteger)
      || cut < 0 || cut > 24 || blend < 0 || blend > 10 || approach < 0 || approach > 9) {
    throw new RangeError('Invalid Hangar approach');
  }
  return [...base.slice(0, 942), ...Array(36 - cut - blend).fill(64),
    ...Array(blend).fill(578), ...base.slice(978, 991 - approach), 4096];
}

const source = '../../evidence/experiments/turns/';
const tapeURL = '../../evidence/recordings/prooflab-e1m1-993.json';

async function readJSON(url) {
  const response = await fetch(url);
  if (!response.ok) throw new Error(`Could not load ${url}`);
  return response.json();
}

function control(label, max, id) {
  const wrapper = document.createElement('label');
  const select = document.createElement('select');
  select.id = id;
  for (let i = 0; i <= max; i++) select.add(new Option(String(i), String(i)));
  wrapper.append(label, select);
  return { wrapper, select };
}

async function setup(panel) {
  const [grid, base] = await Promise.all([readJSON(source + 'turns.json'), readJSON(tapeURL)]);
  if (grid.schema !== 'hangar-turn-census-v1' || grid.firstExits.length !== 2750)
    throw new Error('Incomplete approach census');

  const intro = document.createElement('p');
  intro.textContent = 'Keep the first 942 inputs. Change the last turn, then press Use. Every combination below was played from spawn in CombatV2.';
  const form = document.createElement('div');
  form.className = 'choices';
  const knobs = [control('Turn ticks to skip', 24, 'cut-turn'), control('Turn ticks spent walking', 10, 'walk-turn'),
    control('Approach ticks to skip', 9, 'cut-walk')];
  form.append(...knobs.map(item => item.wrapper));
  const outcome = document.createElement('p');
  outcome.setAttribute('role', 'status');
  const viewer = pathViewer(grid, cut => readJSON(source + `study/paths-${cut}.json`));
  const presets = document.createElement('div');
  presets.className = 'cues';
  const save = document.createElement('button');
  save.type = 'button';
  save.textContent = 'Download my recording';
  const evidence = document.createElement('p');
  evidence.className = 'sources';
  for (const [label, href] of [['Lean turn census', source + 'study/Certificate.lean'], ['Native census receipt', source + 'result.json'], ['Verify a recording', '../../verify/']]) {
    const anchor = document.createElement('a');
    anchor.textContent = label;
    const file = new URL(href, import.meta.url);
    if (file.pathname.endsWith('.lean')) linkDeclaration(anchor, file, 'minimumInThisFamily');
    else anchor.href = file;
    evidence.append(anchor);
  }

  const settings = () => knobs.map(item => Number(item.select.value));
  function update() {
    const [c, b, a] = settings();
    const end = grid.firstExits[(c * 11 + b) * 10 + a];
    const text = end === null ? `The tape ends at tick ${992 - c - a} without reaching the exit.` : `First exit on tick ${end}.`;
    const known = (c === 0 && b === 0 && a === 0) || (c === 5 && b === 7 && a === 9);
    outcome.textContent = text + (known ? ' This exact tape also has a stock Lean passage proof.' : ' This outcome is covered by the compiler-assisted Lean census.');
    viewer.select(c, b, a);
  }
  for (const [label, values] of [['Earlier Use', [0, 0, 0]], ['Walk through the turn', [5, 7, 9]],
    ['Fastest in this grid', [6, 5, 9]], ['Miss the switch', [0, 0, 4]]]) {
    const button = document.createElement('button');
    button.type = 'button';
    button.textContent = label;
    button.addEventListener('click', () => { values.forEach((v, i) => { knobs[i].select.value = v; }); update(); });
    presets.append(button);
  }
  save.addEventListener('click', () => {
    const values = settings();
    const doc = { ...base, commands: turnTape(base.commands, ...values) };
    const url = URL.createObjectURL(new Blob([JSON.stringify(doc) + '\n'], { type: 'application/json' }));
    const link = document.createElement('a');
    link.href = url;
    link.download = 'hangar-turn-' + values.join('-') + '.json';
    panel.append(link); link.click(); link.remove();
    setTimeout(() => URL.revokeObjectURL(url), 1000);
  });
  form.addEventListener('change', update);
  panel.replaceChildren(intro, form, presets, outcome, viewer.figure, save, evidence);
  update();
}

if (typeof document !== 'undefined') {
  const details = document.querySelector('#turn-workbench');
  const panel = document.querySelector('#turn-explorer');
  if (details && panel) {
    const load = () => {
      if (!details.open) return;
      details.removeEventListener('toggle', load);
      setup(panel).catch(e => { panel.textContent = 'The measured approaches could not load. Reload to try again. ' + e.message; });
    };
    details.addEventListener('toggle', load);
    load();
  }
}
