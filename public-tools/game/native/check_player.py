"""Exercise all native map starts and recorded routes using locally supplied IWADs."""
import argparse
import hashlib
import json
from pathlib import Path
from play import IWAD, Session

DISTRIBUTABLE_FREEDOOM = '7323bcc168c5a45ff10749b339960e98314740a734c30d4b9f3337001f9e703d'

def main():
    cli = argparse.ArgumentParser(description=__doc__)
    cli.add_argument("worker", type=Path)
    cli.add_argument("iwad", type=Path)
    cli.add_argument("--routes", type=Path)
    cli.add_argument("--freedoom-still", type=Path, help="Write a PPM spawn image for the packaged Freedoom IWAD.")
    args = cli.parse_args()
    digest = hashlib.sha256(args.iwad.read_bytes()).hexdigest()
    player = Session(args.worker.resolve(), args.iwad.resolve())
    report = {"iwadSha256": digest, "maps": {}, "routes": {}}
    def start(level):
        return player.update({"owner":"test","op":"start","level":level})
    def step(commands):
        return player.update({"owner":"test","op":"step","at":len(player.tape),"commands":commands})
    try:
        for level in player.levels:
            before, pixels = start(level)
            assert before["tick"] == 0 and before["error"] is None and len(pixels) == 192000
            if args.freedoom_still and digest == DISTRIBUTABLE_FREEDOOM and level == 'E1M1':
                args.freedoom_still.write_bytes(b"P6\n320 200\n255\n"+pixels)
            at_four, after_pixels = step([2,4,32,0])
            assert at_four["tick"] == 4 and at_four["error"] is None
            report["maps"][level] = {"spawn":hashlib.sha256(pixels).hexdigest(),
                                     "atFour":hashlib.sha256(after_pixels).hexdigest(),
                                     "tick":at_four["tick"],"health":at_four["health"]}
        if args.routes and digest == IWAD:
            for route in json.loads(args.routes.read_text()):
                start(route["level"])
                tape = route["commands"]
                for i in range(0,len(tape),35):
                    state,_ = step(tape[i:i+35])
                assert state["error"] is None and state["health"] > 0 and player.tape == tape
                assert state["exit"] == ("prefix" not in route["scope"].lower())
                report["routes"][route["name"]] = {key:state[key] for key in ("map","recorded","health","shots","exit","error")}
    finally:
        player.close()
    print(json.dumps(report, indent=2))

if __name__ == "__main__":
    main()
