const shellSource = document.currentScript.src;
const siteRoot = new URL("../", shellSource);
const at = (path) => new URL(path, siteRoot).href;
const repo = "https://github.com/nasqret/leandoom-proofs";
const here = location.pathname;
for (const header of document.querySelectorAll("[data-header]")) {
  const nav = [
    ["Overview", ""],
    ["Theater", "theater/"],
    ["Play", "classic/"],
    ["Record", "game/"],
    ["Proofs", "evidence/"],
    ["Learn", "learn/"],
  ];
  header.className = "top";
  header.innerHTML =
    '<a class="skip" href="#main">Skip to content</a><div class="wrap"><a class="brand" href="' +
    at("") +
    '"><i aria-hidden="true" class="mark"></i>Lean Doom Lab</a><nav aria-label="Main navigation" class="nav">' +
    nav
      .map(
        ([name, path]) =>
          "<a " +
          (here === new URL(at(path)).pathname ? 'aria-current="page"' : "") +
          ' href="' +
          at(path) +
          '">' +
          name +
          "</a>",
      )
      .join("") +
    '<a class="source" href="' +
    repo +
    '">GitHub ↗</a></nav></div>';
}
for (const footer of document.querySelectorAll("[data-footer]")) {
  footer.className = "footer";
  footer.innerHTML =
    '<div class="wrap"><span>Lean Doom Lab · Independent research and teaching</span><span><a href="' +
    at("about/") +
    '">Credits &amp; licenses</a> · <a href="' +
    at("learn/") +
    '">Reading room</a> · <a href="' +
    at("verify/") +
    '">Verify a run</a> · <a href="' +
    repo +
    '">Source ↗</a></span></div>';
}
