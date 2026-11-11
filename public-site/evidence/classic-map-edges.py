import hashlib,json,struct,sys
from pathlib import Path
def count(iwad):
 raw=Path(iwad).read_bytes()
 sig,count,offset=struct.unpack_from('<4sII',raw)
 assert sig==b'IWAD'
 entries=[(name.rstrip(b'\0').decode(),a,b) for a,b,name in struct.iter_unpack('<II8s',raw[offset:offset+16*count])]
 result={}
 for i in range(1,10):
  name='E1M'+str(i)
  n=next(k for k,r in enumerate(entries) if r[0]==name)
  lump,offset,size=entries[n+2];assert lump=='LINEDEFS' and size%14==0
  specials=[values[3] for values in struct.iter_unpack('<7H',raw[offset:offset+size])]
  result[name]={'normalExitLinedefs':sum(s in (11,52) for s in specials),'secretExitLinedefs':sum(s in (51,124) for s in specials)}
 assert [n for n,r in result.items() if r['secretExitLinedefs']]==['E1M3']
 assert all(r['normalExitLinedefs']>0 for n,r in result.items() if n!='E1M8')
 return {'sha256':hashlib.sha256(raw).hexdigest(),'counts':result}
print(json.dumps({k:count(v) for k,v in zip(['freedoom','shareware'],sys.argv[1:])},indent=2))
