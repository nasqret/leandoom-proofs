const assert = require("node:assert/strict");
const path = require("node:path");

async function run(browser, url) {
  for (const [mode, options] of [
    ["desktop", { viewport: { width: 1280, height: 900 } }],
    [
      "mobile",
      { viewport: { width: 390, height: 844 }, isMobile: true, hasTouch: true },
    ],
  ]) {
    const context = await browser.newContext(options);
    try {
      const page = await context.newPage(),
        errors = [];
      page.on("pageerror", (e) => errors.push(e.message));
      const target = new URL(url);
      target.hash = mode === "desktop" ? "turn-workbench" : "";
      await page.goto(target.href);
      await page.addScriptTag({ path: path.join(__dirname, "scenarios.js") });
      console.log(
        await page.evaluate((mode) => globalThis.checkReplayLab(mode), mode),
      );
      if (mode === "mobile") {
        await page.locator('#rng-grid button[data-index="40"]').tap();
        assert.match(
          await page.locator("#rng-heading").innerText(),
          /Index 40.*Died/,
        );
        await page.locator("#rng-baseline").tap();
        await page.locator('#rng-grid button[data-index="5"]').focus();
        await page.keyboard.press("ArrowRight");
        assert.equal(await page.locator("#rng-index").inputValue(), "6");
      }
      assert.deepEqual(errors, []);
    } finally {
      await context.close();
    }
  }
}
module.exports = { run };
async function main() {
  const { chromium } = require("playwright");
  const browser = await chromium.launch(
    process.env.PW_CHANNEL ? { channel: process.env.PW_CHANNEL } : {},
  );
  try {
    await run(browser, process.argv[2] || "http://127.0.0.1:4173/theater/lab/");
  } finally {
    await browser.close();
  }
}
if (require.main === module)
  main().catch((err) => {
    console.error(err);
    process.exitCode = 1;
  });
