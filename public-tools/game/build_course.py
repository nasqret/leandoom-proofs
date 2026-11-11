"""Write the original school maps and derive three winning input tapes by graph search."""
from pathlib import Path
from collections import deque
import json
import argparse
BASE = Path(__file__).resolve().parents[2]
SITE = BASE / "public-site" if (BASE / "public-site/game").is_dir() else BASE
# Map authorship: each pair of rooms is separated by a bulkhead with one locked door.
WEST = [
 [".........",".###.###.","...#.....",".#.!..#..",".........","..##.###.","....!....","..###.##.","........."],
 ["......#..",".####.#..","...!..#..",".#.##....",".#....#..",".....##..",".##......","....###..","........."],
 ["...#.....",".#.#.#.#.",".#...#...","...#..#..",".#..!....","..###..#.",".....#...","...#...#.","........."],
 [".........","..#..#...",".##..##..","....!....",".###.#...",".....#...","..#..!#..","..##.###.","........."],
 ["....#....",".#..#.#..","....#....",".###..##.","....!....",".#..##...","..!....#.","...###...","........."],
 [".........",".##.#.##.","....#....",".##.!.#..","..#....#.","....##...","..#....#.","..####.#.","........."],
 ["....#....",".##.#.##.","....!....",".###.#...",".....#...","..#..!#..",".##.#.#..","....#....","........."],
 [".........",".##...##.","...#.#...",".#.....#.","..##!##..","....!....",".#.##.##.","...#.....","........."],
 [".........","..##.##..","....!..#.",".#.##..#.",".....#...","..#....#.","..#.#....","....#.##.","........."],
]
EAST = [
 [".....",".##..","...#.","...#.",".....",".#.#.",".....","..##.","....."],
 [".....","..#..","..#..",".....",".###.",".....","..#..","..#..","....."],
 [".....",".#.#.",".....","..#..","...#.",".....",".###.",".....","....."],
 [".....",".###.",".....",".###.",".....","..##.",".....",".#.#.","....."],
 [".....","...#.",".#...","...#.",".....","..#..","..#..",".##..","....."],
 [".....",".#.#.","...#.","...#.",".....",".#...","..##.","...#.","....."],
 [".....",".##..","..#..","..#..",".....",".##..","...#.",".....","....."],
 [".....",".##..",".....",".#.#.","...#.",".....",".#.#.","...#.","....."],
 [".....",".#...","...#.","..##.",".....","..##.","...#.","..#..","....."],
]
SPECS = [
 ("Intake Hall",4,(4,1),(1,4),(4,3),0,"#b8db9f","#a9825f"),
 ("Relay Vault",2,(8,1),(0,4),(6,3),3,"#e7ad65","#848f84"),
 ("Filter Works",6,(2,0),(8,6),(0,3),0,"#88cdd0","#988275"),
 ("Dry Dock",1,(7,1),(5,7),(8,4),3,"#b4ce9d","#8f9580"),
 ("Ash Exchange",7,(0,0),(1,7),(1,1),0,"#e6a381","#b18c70"),
 ("Switchyard",3,(5,0),(8,5),(8,3),0,"#e0cd7c","#8b8580"),
 ("Reservoir",5,(8,2),(2,7),(0,2),3,"#8ad5c5","#838c83"),
 ("Mirror Plant",4,(0,0),(3,6),(8,4),0,"#beb5ee","#938b9a"),
 ("Signal Tower",2,(8,0),(0,7),(7,4),3,"#d3c284","#a48e77"),
]
DIR=[(1,0),(0,1),(-1,0),(0,-1)]
def step(rows, state, cmd):
    x,y,f,hp,blue,opened,exit_flag,used = state
    if exit_flag or hp == 0 or cmd == 0:
        return state
    if cmd in (2,3):
        return (x,y,(f+(-1 if cmd==2 else 1))%4,hp,blue,opened,exit_flag,used)
    direction=(f+{1:0,4:-1,5:1,6:0,7:2}[cmd])%4
    nx,ny=x+DIR[direction][0],y+DIR[direction][1]
    tile=rows[ny][nx]
    if cmd==6:
        return (x,y,f,hp,blue,opened or (tile=='B' and blue),exit_flag or tile=='X',used)
    if tile in '#X' or tile=='B' and not opened:
        return state
    if tile=='b':
        blue=True
    cell=ny*len(rows[0])+nx
    if tile=='h' and cell not in used:
        hp=min(3,hp+1)
        used=used|{cell}
    if tile=='!':
        hp=max(0,hp-1)
    return (nx,ny,f,hp,blue,opened,exit_flag,used)

def search(rows,initial,goal,commands,avoid=False):
    q=deque([initial])
    prev={initial:None}
    while q:
        s=q.popleft()
        if goal(s):
            path=[]
            while prev[s]:
                s,cmd=prev[s]
                path.append(cmd)
            return path[::-1]
        for cmd in commands:
            nxt=step(rows,s,cmd)
            if nxt in prev or nxt[3]==0 or (avoid and nxt[3]<s[3]):
                continue
            prev[nxt]=(s,cmd)
            q.append(nxt)
    raise ValueError("No route on "+str(rows))

def run(rows,s,tape):
    for cmd in tape:
        s=step(rows,s,cmd)
    return s

def build():
    levels=[]
    for i,(name,door,spawn,key,end,face,accent,metal) in enumerate(SPECS):
        rows=[list('#'+w+('B' if y==door else '#')+e+'#') for y,(w,e) in enumerate(zip(WEST[i],EAST[i]))]
        for pos,mark,offset in [(spawn,'@',1),(key,'b',1),(end,'X',11)]:
            y,x=pos
            assert rows[y][x+offset]=='.',(name,pos,mark)
            rows[y][x+offset]=mark
        medrow=8 if door<5 else 0
        rows[medrow][9]='h'
        rows=['#'*17]+[''.join(r) for r in rows]+['#'*17]
        assert len(set(map(len,rows)))==1
        start=(spawn[1]+1,spawn[0]+1,face,3,False,False,False,frozenset())
        direct=search(rows,start,lambda s:s[6],(1,6,4,5,3,2,7))
        careful=search(rows,start,lambda s:s[6],(1,6,2,3),True)
        med=(9,medrow+1)
        survey=search(rows,start,lambda s:s[:2]==med,(1,5,3,2,4,7))
        survey+=search(rows,run(rows,start,survey),lambda s:s[6],(1,2,3,6))
        routes={'direct':direct,'careful':careful,'survey':survey}
        assert len({tuple(v) for v in routes.values()})==3
        for tape in routes.values():
            s=run(rows,start,tape)
            assert s[6] and s[4] and s[5] and s[3]>0
        levels.append(dict(id=f'L{i+1:02}',name=name,rows=rows,facing=face,accent=accent,metal=metal,routes=routes))
    return {'engine':'proof-lab-grid-v1','levels':levels}

if __name__=='__main__':
    cli = argparse.ArgumentParser(description=__doc__)
    cli.add_argument('--output', type=Path, default=SITE/'game/episode.json')
    args = cli.parse_args()
    episode=build()
    args.output.write_text(json.dumps(episode,indent=2)+'\n')
    for l in episode['levels']:
        print(l['id'],{k:len(v) for k,v in l['routes'].items()})
