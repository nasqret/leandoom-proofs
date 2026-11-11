"""Reconstruct the exact 25 cut literals from public browser controls and paths."""
import argparse
import gzip
import hashlib
import json
from pathlib import Path
import re
from run import DEPOSIT, HERE, encode, need, sha


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('study',type=Path,nargs='?',default=DEPOSIT/'study')
    p=parser.parse_args().study.resolve()
    receipt=json.loads((p/'receipt.json').read_text())
    need(receipt['status']=='verified' and receipt['cases']==2750 and receipt['shape']==[25,11,10],'case dimensions')
    need(sha(p/'TurnFamily.lean')==receipt['rulesSha256']==sha(HERE/'TurnFamily.lean'),'Lean model digest')
    need(sha(p/'Certificate.lean')==receipt['rootSourceSha256'] and sha(p/'audit.log')==receipt['auditSha256'],'root evidence')
    need(sha(p/'browser-controls.json.gz')==receipt['browserControlExportSha256'],'controller archive digest')
    browser=json.loads(gzip.decompress((p/'browser-controls.json.gz').read_bytes()))
    need(sha(DEPOSIT/'grid.jsonl.gz')==receipt['wmiGridSha256'],'original native grid digest')
    observations=[json.loads(line) for line in gzip.decompress((DEPOSIT/'grid.jsonl.gz').read_bytes()).splitlines()]
    need(len(observations)==2750,'incomplete WMI grid')
    counts=[]; lengths=[]; winners=[]; start=None
    for c,record in enumerate(receipt['cuts']):
        need(record['cut']==c,'cut order')
        src=p/f'Cut{c:02}.lean'; pf=p/f'paths-{c}.json'
        need(sha(src)==record['sourceSha256'] and sha(pf)==record['pathSha256'],'cut digests')
        path_doc=json.loads(pf.read_text()); tracks=path_doc['paths']
        need(len(tracks)==110 and path_doc['cut']==c and path_doc['startTick']==942,'path cardinality')
        source=src.read_text()
        found=re.search(r'OriginalReplay\.decodeHex "([a-f0-9]+)"',source)
        data=encode(tracks,browser['suffixes'][c])
        need(found is not None and found[1]==data.hex() and hashlib.sha256(data).hexdigest()==record['encodingSha256'],'lossless controller/path literal')
        vals=re.findall(r'⟨(\d+),(\d+),(\d+),(\d+),true⟩',source)
        need(len(vals)==110,'Lean answer cardinality')
        for i,(path,term) in enumerate(zip(tracks,vals)):
            b,a=divmod(i,10); old=observations[110*c+i]; o=old['observation']
            need(list(map(int,term))==[c,b,a,o['first_exit'] or 0] and old['edit']==[c,b,a],'Lean vs WMI case')
            need(o['minimum_health']>0 and o['error'] is None and o['shots']==0 and old['win']==bool(int(term[3])),'WMI safety')
            need(len(path)==992-c-a-942+1,'trajectory tick count')
            if start is None: start=path[0]
            need(path[0]==start,'shared tick-942 position/facing')
            lengths.append(len(path))
            if old['win']:
                winners.append((int(term[3]),c,b,a))
                need(path[-1]==[o['x'],o['y'],o['angle']],'winning endpoint')
        counts.append(len(tracks))
    fastest=min(t for t,*_ in winners)
    need((sum(counts),len(winners),fastest)==(2750,651,977),'bound/count')
    need([list(row[1:]) for row in winners if row[0]==fastest]==receipt['minimizers'] and len(receipt['minimizers'])==8,'minimizers')
    need(sum(lengths)==receipt['pathSamples'],'sample count')
    print(f'2,750 exact controller/position/facing paths, {sum(lengths):,} samples, 651 wins, minimum 977 in the family, eight minimizers.')

if __name__=='__main__': main()
