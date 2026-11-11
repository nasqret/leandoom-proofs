export const names = ['Wait','Forward','Turn left','Turn right','Strafe left','Strafe right','Use','Back'];
export const directions = [[1,0],[0,1],[-1,0],[0,-1]];
export function initial(level) {
  const y = level.rows.findIndex(row => row.includes('@'));
  return {x:level.rows[y].indexOf('@'), y, facing:level.facing, hp:3, blue:false, opened:false, exit:false, used:[]};
}
export function step(level, before, c) {
  if (!Number.isInteger(c) || c < 0 || c > 7) throw Error('Unknown control.');
  const s={...before};
  if (s.hp === 0 || s.exit || c === 0) return s;
  if (c === 2 || c === 3) {
    s.facing = (s.facing + (c === 2 ? 3 : 1)) % 4;
    return s;
  }
  const delta = directions[(s.facing + ({4:3,5:1,7:2}[c] || 0)) % 4];
  const x=s.x+delta[0], y=s.y+delta[1], t=level.rows[y]?.[x] ?? '#';
  if (c === 6) {
    if (t === 'X') s.exit=true;
    if (t === 'B' && s.blue) s.opened=true;
    return s;
  }
  if (t === '#' || t === 'X' || t === 'B' && !s.opened) return s;
  s.x=x;s.y=y;
  if (t === 'b') s.blue=true;
  if (t === '!') s.hp=Math.max(0,s.hp-1);
  const id=y*level.rows[0].length+x;
  if (t === 'h' && !s.used.includes(id)) {
    s.hp=Math.min(3,s.hp+1);
    s.used=[...s.used,id];
  }
  return s;
}
export function replay(level, commands) {
  const states=[initial(level)];
  for (const cmd of commands) states.push(step(level,states.at(-1),cmd));
  return states;
}
export function observe(s) {
  return {x:s.x,y:s.y,facing:s.facing,hp:s.hp,blue:s.blue,opened:s.opened,exit:s.exit};
}
export function recording(level, commands) {
  const states=replay(level,commands);
  return {schema:'proof-lab-run-v1',engine:'proof-lab-grid-v1',level:level.id,commands,final:observe(states.at(-1))};
}
