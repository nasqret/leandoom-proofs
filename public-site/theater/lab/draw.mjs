const TAU = Math.PI * 2;
const BAM = 2 ** 32;
const SHAREWARE =
  "1d7d43be501e67d927e415e0b8f3e29c3bf33075e859721816f652a526cac771";

export async function openWorld(file) {
  if (file.size !== 4196020)
    throw new Error(
      "This replay uses the original 4,196,020-byte shareware v1.9 DOOM1.WAD.",
    );
  const bytes = await file.arrayBuffer();
  const digest = Array.from(
    new Uint8Array(await crypto.subtle.digest("SHA-256", bytes)),
    (x) => x.toString(16).padStart(2, "0"),
  ).join("");
  if (digest !== SHAREWARE)
    throw new Error(
      "The file hash differs from the shareware v1.9 map used in the proofs.",
    );
  const d = new DataView(bytes);
  const text = (offset, length) =>
    new TextDecoder()
      .decode(new Uint8Array(bytes, offset, length))
      .replace(/\0.*$/, "");
  const count = d.getInt32(4, true),
    directory = d.getInt32(8, true);
  if (
    text(0, 4) !== "IWAD" ||
    count < 1 ||
    directory < 12 ||
    directory + count * 16 > bytes.byteLength
  )
    throw new Error("Invalid IWAD directory.");
  const lumps = new Map();
  let found = false;
  for (let i = 0; i < count; ++i) {
    const at = directory + i * 16,
      name = text(at + 8, 8);
    if (/^E\dM\d$/.test(name)) {
      if (found) break;
      found = name === "E1M1";
      continue;
    }
    if (!found) continue;
    const offset = d.getInt32(at, true),
      size = d.getInt32(at + 4, true);
    if (offset < 0 || size < 0 || offset + size > bytes.byteLength)
      throw new Error("Invalid IWAD map lump.");
    lumps.set(name, { offset, size });
  }
  function records(name, stride, parse) {
    const l = lumps.get(name);
    if (!l || l.size % stride)
      throw new Error("Missing or invalid " + name + " map lump.");
    return Array.from({ length: l.size / stride }, (_, i) =>
      parse(l.offset + i * stride),
    );
  }
  const u = (at) => d.getUint16(at, true),
    s = (at) => d.getInt16(at, true);
  const vertices = records("VERTEXES", 4, (p) => [s(p), s(p + 2)]);
  const sectors = records("SECTORS", 26, (p) => ({
    floor: s(p),
    ceil: s(p + 2),
    light: s(p + 20),
  }));
  const sides = records("SIDEDEFS", 30, (p) => sectors[u(p + 28)]);
  const lines = records("LINEDEFS", 14, (p) => ({
    a: vertices[u(p)],
    b: vertices[u(p + 2)],
    right: sides[u(p + 10)],
    left: sides[u(p + 12)],
  }));
  return lines.filter((l) => l.a && l.b && l.right);
}

function surface(canvas) {
  const w = Math.max(1, canvas.clientWidth),
    h = Math.max(1, canvas.clientHeight);
  const ratio = Math.min(window.devicePixelRatio || 1, 1.5);
  const pw = Math.round(w * ratio),
    ph = Math.round(h * ratio);
  if (canvas.width !== pw || canvas.height !== ph) {
    canvas.width = pw;
    canvas.height = ph;
  }
  const ctx = canvas.getContext("2d", { alpha: false });
  ctx.setTransform(pw / w, 0, 0, ph / h, 0, 0);
  return { ctx, w, h };
}

export function bounds(points) {
  let xmin = Infinity,
    xmax = -Infinity,
    ymin = Infinity,
    ymax = -Infinity;
  for (const [x, y] of points)
    if (Number.isFinite(x) && Number.isFinite(y)) {
      xmin = Math.min(xmin, x);
      xmax = Math.max(xmax, x);
      ymin = Math.min(ymin, y);
      ymax = Math.max(ymax, y);
    }
  if (!Number.isFinite(xmin)) return { cx: 0, cy: 0, dx: 64, dy: 64 };
  return {
    cx: (xmin + xmax) / 2,
    cy: (ymin + ymax) / 2,
    dx: Math.max(32, xmax - xmin),
    dy: Math.max(32, ymax - ymin),
  };
}

function projection(b, w, h, padding = 16) {
  const scale = Math.max(
    0.001,
    Math.min((w - padding * 2) / b.dx, (h - padding * 2) / b.dy),
  );
  return {
    scale,
    xy: (x, y) => [(x - b.cx) * scale + w / 2, (b.cy - y) * scale + h / 2],
  };
}
function line(ctx, points, stroke, width = 1, dash = []) {
  if (!points.length) return;
  ctx.beginPath();
  ctx.strokeStyle = stroke;
  ctx.lineWidth = width;
  ctx.setLineDash(dash);
  points.forEach(([x, y], i) => (i ? ctx.lineTo(x, y) : ctx.moveTo(x, y)));
  ctx.stroke();
  ctx.setLineDash([]);
}
function disc(ctx, p, r, color) {
  ctx.beginPath();
  ctx.arc(...p, r, 0, TAU);
  ctx.fillStyle = color;
  ctx.fill();
}
function grid(ctx, w, h, p) {
  ctx.fillStyle = "#101715";
  ctx.fillRect(0, 0, w, h);
  const unit = 2 ** Math.round(Math.log2(36 / p.scale)),
    sep = p.scale * unit,
    [ox, oy] = p.xy(0, 0);
  ctx.beginPath();
  ctx.lineWidth = 0.55;
  ctx.strokeStyle = "#28362e";
  for (let x = ((ox % sep) + sep) % sep; x <= w; x += sep) {
    ctx.moveTo(x, 0);
    ctx.lineTo(x, h);
  }
  for (let y = ((oy % sep) + sep) % sep; y <= h; y += sep) {
    ctx.moveTo(0, y);
    ctx.lineTo(w, y);
  }
  ctx.stroke();
  ctx.fillStyle = "#b3bea9";
  ctx.font = "10px monospace";
  ctx.fillText("N ↑", 8, 15);
  const x = 8,
    y = h - 12;
  line(
    ctx,
    [
      [x, y - 3],
      [x, y],
      [x + sep, y],
      [x + sep, y - 3],
    ],
    "#91a18e",
  );
  ctx.fillText(unit + " u", x, y - 5);
}
function triangle(ctx, [x, y], a, color) {
  ctx.save();
  ctx.translate(x, y);
  ctx.rotate(-a);
  ctx.beginPath();
  ctx.moveTo(8, 0);
  ctx.lineTo(-5, 4.5);
  ctx.lineTo(-3, 0);
  ctx.lineTo(-5, -4.5);
  ctx.closePath();
  ctx.fillStyle = color;
  ctx.fill();
  ctx.strokeStyle = "#101715";
  ctx.lineWidth = 1.2;
  ctx.stroke();
  ctx.restore();
}

export function drawTrack(canvas, route, row, range, color, world) {
  const { ctx, w, h } = surface(canvas),
    p = projection(range, w, h),
    xy = p.xy;
  grid(ctx, w, h, p);
  if (world) {
    ctx.beginPath();
    for (const l of world) {
      ctx.moveTo(...xy(...l.a));
      ctx.lineTo(...xy(...l.b));
    }
    ctx.strokeStyle = "#435045";
    ctx.lineWidth = 0.65;
    ctx.stroke();
  }
  const path = route.frames,
    origin = path[0][0];
  line(
    ctx,
    path.map((r) => xy(r[1], r[2])),
    "#596255",
    1.2,
    [3, 4],
  );
  const end = row[0] - origin;
  line(
    ctx,
    path.slice(0, end + 1).map((r) => xy(r[1], r[2])),
    color,
    2.1,
  );
  if (
    row[4] != null &&
    row[5] != null &&
    ["flying", "exploding"].includes(row[6])
  ) {
    const tail = path
      .slice(Math.max(0, end - 16), end + 1)
      .filter(
        (r) =>
          r[4] != null &&
          r[5] != null &&
          ["flying", "exploding"].includes(r[6]),
      );
    line(
      ctx,
      tail.map((r) => xy(r[4], r[5])),
      "#d98562",
      1.3,
    );
    const ball = xy(row[4], row[5]);
    disc(ctx, ball, row[6] === "exploding" ? 6 : 3.6, "#fb8654");
    disc(ctx, ball, 1.6, "#ffe9ba");
  }
  triangle(ctx, xy(row[1], row[2]), ((row[7] ?? 0) * TAU) / BAM, color);
}

function playerSector(world, x, y) {
  let near = Infinity,
    sector;
  for (const { a, b, right, left } of world) {
    const dx = b[0] - a[0],
      dy = b[1] - a[1],
      len = dx * dx + dy * dy;
    if (!len) continue;
    const t = Math.max(
      0,
      Math.min(1, ((x - a[0]) * dx + (y - a[1]) * dy) / len),
    );
    const dist = (x - a[0] - t * dx) ** 2 + (y - a[1] - t * dy) ** 2;
    const side = dx * (y - a[1]) - dy * (x - a[0]) <= 0 ? right : left;
    if (side && dist < near) {
      near = dist;
      sector = side;
    }
  }
  return sector || { floor: 0 };
}

export function drawCamera(canvas, world, row, color) {
  const { ctx, w, h } = surface(canvas),
    [tick, x, y, hp, bx, by, phase, angle] = row;
  const a = ((angle ?? 0) * TAU) / BAM,
    c = Math.cos(a),
    s = Math.sin(a),
    eye = playerSector(world, x, y).floor + 41;
  const right = (vx, vy) => (vx - x) * s - (vy - y) * c,
    forward = (vx, vy) => (vx - x) * c + (vy - y) * s;
  const f = h * 0.81,
    horizon = h * 0.51,
    near = 1.5,
    walls = [];
  ctx.fillStyle = "#1a2825";
  ctx.fillRect(0, 0, w, horizon);
  ctx.fillStyle = "#262c24";
  ctx.fillRect(0, horizon, w, h - horizon);
  for (const l of world) {
    let r1 = right(...l.a),
      r2 = right(...l.b),
      z1 = forward(...l.a),
      z2 = forward(...l.b);
    if (Math.max(z1, z2) < near) continue;
    if (z1 < near) {
      r1 += ((r2 - r1) * (near - z1)) / (z2 - z1);
      z1 = near;
    }
    if (z2 < near) {
      r2 += ((r1 - r2) * (near - z2)) / (z1 - z2);
      z2 = near;
    }
    const x1 = w / 2 + (f * r1) / z1,
      x2 = w / 2 + (f * r2) / z2;
    if (Math.max(x1, x2) < 0 || Math.min(x1, x2) > w) continue;
    const levels = [];
    if (!l.left) {
      levels.push([l.right.floor, l.right.ceil]);
    } else {
      if (l.left.floor !== l.right.floor)
        levels.push([
          Math.min(l.left.floor, l.right.floor),
          Math.max(l.left.floor, l.right.floor),
        ]);
      if (l.left.ceil !== l.right.ceil)
        levels.push([
          Math.min(l.left.ceil, l.right.ceil),
          Math.max(l.left.ceil, l.right.ceil),
        ]);
    }
    for (const [base, top] of levels)
      if (top > base)
        walls.push({
          x1,
          x2,
          z1,
          z2,
          base,
          top,
          d: (z1 + z2) * 0.5,
          light: l.right.light,
        });
  }
  walls.sort((a, b) => b.d - a.d);
  for (const q of walls) {
    const ya = (z) => horizon - ((q.top - eye) * f) / z,
      yb = (z) => horizon - ((q.base - eye) * f) / z;
    const shade = Math.round(
      Math.max(25, Math.min(86, 48 + q.light / 9 - q.d / 24)),
    );
    ctx.fillStyle = "rgb(" + [shade, shade + 6, shade].join(",") + ")";
    ctx.strokeStyle = "#95a691";
    ctx.lineWidth = 0.6;
    ctx.beginPath();
    ctx.moveTo(q.x1, ya(q.z1));
    ctx.lineTo(q.x2, ya(q.z2));
    ctx.lineTo(q.x2, yb(q.z2));
    ctx.lineTo(q.x1, yb(q.z1));
    ctx.closePath();
    ctx.fill();
    ctx.stroke();
  }
  const center = w / 2;
  line(
    ctx,
    [
      [center - 3, horizon],
      [center + 3, horizon],
    ],
    "#d6daca",
  );
  if (bx != null && by != null && ["flying", "exploding"].includes(phase)) {
    const br = right(bx, by),
      bf = forward(bx, by),
      angle = (Math.atan2(br, bf) * 180) / Math.PI;
    ctx.fillStyle = "#ffd9b6";
    ctx.font = "10px monospace";
    ctx.fillText("Fireball bearing " + Math.round(angle) + "°", 6, h - 8);
  }
  ctx.fillStyle = color;
  ctx.font = "10px monospace";
  ctx.fillText("E1M1 / local geometry", 6, 14);
}

export function drawSamples(
  canvas,
  points,
  baseline = [],
  index = points.length - 1,
) {
  const { ctx, w, h } = surface(canvas),
    p = projection(bounds([...points, ...baseline]), w, h, 13);
  grid(ctx, w, h, p);
  const path = points.map((x) => p.xy(...x));
  if (baseline.length)
    line(
      ctx,
      baseline.map((x) => p.xy(...x)),
      "#c4b298",
      1.3,
      [3, 3],
    );
  line(ctx, path, "#778669", 1.1);
  line(ctx, path.slice(0, index + 1), "#c7e17d", 1.9);
  if (path.length > 1) disc(ctx, path[0], 3, "#ff9866");
  if (path[index]) disc(ctx, path[index], 4, "#e1f49b");
}
