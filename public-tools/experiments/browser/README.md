# Replay lab browser regression

The driver opens the teaching chapter’s direct workbench link in Chromium and creates a second 390 × 844 touch viewport. It checks the decoded first-person frames for the 978- and 992-input finishes, the two impacts after the tick-910 strafe, a death frame from each RNG table, the exported edited tape, the measured heading and position at ticks 942 and 977 of the fastest measured turn, and playback, keyboard and mobile controls. The full 72-edit and 512-case browser sweep has a separate [QA receipt](../../../public-site/theater/lab/checks.json).

From the repository root, install the test tools in a temporary directory. Node.js 20 or later is required.

```sh
test_tools="$(mktemp -d)"
npm install --prefix "$test_tools" --ignore-scripts --no-audit --no-fund playwright@1.56.1 http-server@14.1.1
export NODE_PATH="$test_tools/node_modules"
"$test_tools/node_modules/.bin/playwright" install chromium
```

For an existing Google Chrome installation, set `PW_CHANNEL=chrome` in your shell and skip the browser download.

To test the local site, start the development server and run the driver. The server supports the byte-range requests used when seeking in the MP4s.

```sh
"$test_tools/node_modules/.bin/http-server" public-site -a 127.0.0.1 -p 4173 -c-1 --silent &
replay_server=$!
node public-tools/experiments/browser/check.cjs http://127.0.0.1:4173/theater/lab/
kill "$replay_server"
```

To check a deployed GitHub Pages build, pass its complete lab URL with a trailing slash.

```sh
node public-tools/experiments/browser/check.cjs https://nasqret.github.io/leandoom-proofs/theater/lab/
```

The process exits unsuccessfully on any failed assertion. It checks browser presentation against the recorded data. The simulation certificates have their own independent Lean audits.

The assertions are shared with browser-console runners in [scenarios.js](scenarios.js). On a machine that already has `agent-browser`, the following command runs the identical desktop pixel, timing, export and measured-turn checks in its Chromium session.

```sh
agent-browser --session replay-regression open 'http://127.0.0.1:4173/theater/lab/#turn-workbench'
agent-browser --session replay-regression eval --stdin < public-tools/experiments/browser/scenarios.js
agent-browser --session replay-regression eval 'checkReplayLab("desktop")'
agent-browser --session replay-regression set viewport 390 844
agent-browser --session replay-regression eval 'checkReplayLab("mobile")'
agent-browser --session replay-regression close
```
