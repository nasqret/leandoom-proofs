const siteRoot = new URL("../", import.meta.url);
const repository = "https://github.com/nasqret/leandoom-proofs/blob/main/public-site/";

/** Open the repository copy of a published Lean file at the passage being read. */
export function githubLeanSource(sourceUrl, firstLine, lastLine = firstLine) {
  const source = new URL(sourceUrl);
  if (source.origin !== siteRoot.origin || !source.pathname.startsWith(siteRoot.pathname) ||
      !source.pathname.endsWith(".lean")) throw new Error("Expected a Lean file in the published site");
  const page = new URL(source.pathname.slice(siteRoot.pathname.length), repository);
  if (firstLine !== undefined) {
    if (!Number.isSafeInteger(firstLine) || firstLine < 1 ||
        !Number.isSafeInteger(lastLine) || lastLine < firstLine) throw new Error("Invalid Lean source line range");
    page.hash = firstLine === lastLine ? `L${firstLine}` : `L${firstLine}-L${lastLine}`;
  }
  return page.href;
}
