"""Report the classic engine's episode-exit wiring using its corresponding source and a local IWAD."""
import argparse
import gzip
import hashlib
import json
from pathlib import Path
import struct
from zipfile import ZipFile

def main():
    cli=argparse.ArgumentParser(description=__doc__)
    cli.add_argument('source_archive',type=Path)
    cli.add_argument('iwad',type=Path)
    args=cli.parse_args()
    checks={
        'src/doom/g_game.c':{
            'victory dispatch':'case ga_victory:', 'finale invocation':'F_StartFinale();',
            'eighth map victory':'if ((gamemap == 8) && (gamemode != commercial))',
            'secret destination index':'wminfo.next = 8; // go to secret level',
            'episode one return index':'wminfo.next = 3;',
            'ordinary destination index':'wminfo.next = gamemap; // go to next level',
            'next map load':'gamemap = wminfo.next + 1;'},
        'src/doom/p_switch.c':{'normal exit switch':'G_ExitLevel ();','secret exit switch':'G_SecretExitLevel ();'},
        'src/doom/p_enemy.c':{'episode boss lowers tag 666':'EV_DoFloor (&junk, lowerFloorToLowest);'},
        'src/doom/p_spec.c':{'terminal damage sector':'// EXIT SUPER DAMAGE! (for E1M8 finale)'},
    }
    lines={}
    with ZipFile(args.source_archive) as z:
        for filename,patterns in checks.items():
            source=z.read(next(n for n in z.namelist() if n.endswith('/'+filename))).decode().splitlines()
            lines[filename]={key:next(i for i,line in enumerate(source,1) if pattern in line) for key,pattern in patterns.items()}
    with (gzip.open(args.iwad,'rb') if args.iwad.suffix=='.gz' else args.iwad.open('rb')) as f:
        data=f.read()
    magic,count,directory=struct.unpack_from('<4sII',data)
    if magic!=b'IWAD':raise ValueError('Expected IWAD')
    entries=[(offset,length,name.strip(b'\0').decode('latin1')) for offset,length,name in struct.iter_unpack('<II8s',data[directory:directory+16*count])]
    markers={}
    for m in (3,8,9):
        level='E1M'+str(m)
        index=next(i for i,e in enumerate(entries) if e[2]==level)
        group={name:data[offset:offset+length] for offset,length,name in entries[index:index+11]}
        specials={r[3] for r in struct.iter_unpack('<7H',group['LINEDEFS'])}
        sectors=[struct.unpack_from('<hh',group['SECTORS'],i+22) for i in range(0,len(group['SECTORS']),26)]
        markers[level]={'normalExit':bool(specials & {11,52}), 'secretExit':bool(specials & {51,124}),
                        'terminalDamageSector':any(s==11 for s,_ in sectors),'sectorTag666':any(t==666 for _,t in sectors)}
    assert markers['E1M3']['secretExit'] and markers['E1M9']['normalExit']
    assert markers['E1M8']['terminalDamageSector'] or markers['E1M8']['normalExit']
    print(json.dumps({'sourceLines':lines,'iwadSha256':hashlib.sha256(data).hexdigest(),'markers':markers},indent=2))

if __name__=='__main__':
    main()
