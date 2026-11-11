import { githubLeanSource } from "../../assets/lean-source.mjs";

const sources = new Map();

export async function declaration(file, name) {
  if (!sources.has(file.href)) {
    sources.set(file.href, fetch(file)
      .then(response => response.ok ? response.text() : "")
      .catch(() => ""));
  }
  const lines = (await sources.get(file.href)).split("\n");
  const symbol = name.split(".").at(-1);
  const index = lines.findIndex(line =>
    /^(?:theorem|def)\s+([^\s:(]+)/.exec(line)?.[1] === symbol);
  if (index < 0) return null;
  const excerpt = [];
  for (const line of lines.slice(index, index + 14)) {
    excerpt.push(line);
    if (line.includes(":=")) break;
  }
  return { line: index + 1, excerpt };
}

export function linkDeclaration(anchor, file, name) {
  anchor.href = githubLeanSource(file);
  if (name) {
    declaration(file, name).then(statement => {
      if (statement) anchor.href = githubLeanSource(file, statement.line);
    });
  }
}
