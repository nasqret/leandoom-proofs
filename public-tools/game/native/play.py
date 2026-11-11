"""Serve the locally compiled CombatV2 player with the caller's own IWAD."""
import argparse
import base64
import hashlib
import json
from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer
from pathlib import Path
import secrets
import subprocess
import threading
import webbrowser

ALLOWED = sum([2,4,8,16,32,64,512,4096,8192,16384,32768,65536])
IWAD = '1d7d43be501e67d927e415e0b8f3e29c3bf33075e859721816f652a526cac771'
LEVELS = {f'E1M{i}' for i in range(1,10)}
PAGES = {'game/native.html':'text/html', 'game/native.mjs':'text/javascript','game/theater.css':'text/css',
         'game/MapWorker.lean':'text/plain','game/native-routes.json':'application/json','downloads/pair.js':'text/javascript',
         'game/freedoom-start.png':'image/png','game/freedoom-COPYING.txt':'text/plain'}
MAX_TAPE = 100000

class Session:
    def __init__(self, binary, wad):
        self.binary, self.wad = binary, wad
        self.proc = None
        self.owner = self.level = None
        self.row = {}
        self.last_pixels = b''
        self.tape = []
        self.lock = threading.Lock()

    def close(self):
        if self.proc:
            self.proc.terminate()
            try:
                self.proc.wait(timeout=5)
            except subprocess.TimeoutExpired:
                self.proc.kill()
                self.proc.wait()
            self.proc = None

    def exchange(self, line):
        self.proc.stdin.write((line+'\n').encode())
        self.proc.stdin.flush()
        header=self.proc.stdout.readline(262144)
        if not header:
            raise RuntimeError('The local worker stopped. See the terminal for the engine error.')
        row=json.loads(header)
        if (row.get('map'),row.get('bytes'),row.get('width'),row.get('height')) != (self.level,192000,320,200):
            raise RuntimeError('Unexpected engine frame.')
        pixels=self.proc.stdout.read(192000)
        if len(pixels)!=192000:
            raise RuntimeError('Incomplete engine frame.')
        self.row,self.last_pixels=row,pixels
        return row,pixels

    def update(self, data):
        with self.lock:
            op,owner=data.get('op'),data.get('owner')
            if not isinstance(owner,str) or not 1<=len(owner)<=96:
                raise ValueError('Missing player identity.')
            if op=='start':
                level=data.get('level')
                if level not in LEVELS:
                    raise ValueError('Select E1M1 through E1M9.')
                self.close()
                self.level,self.owner,self.tape=level,owner,[]
                self.proc=subprocess.Popen([self.binary,self.wad,level],stdin=subprocess.PIPE,stdout=subprocess.PIPE)
                self.exchange('frame')
            else:
                if self.proc is None or owner!=self.owner:
                    raise ValueError('This session changed. Select the map again.')
                if data.get('at') != len(self.tape):
                    raise ValueError('Player position changed. Select the map again.')
                if op=='step':
                    masks=data.get('commands')
                    if not isinstance(masks,list) or not 1<=len(masks)<=35 or any(type(k)!=int or not 0<=k<2**32 or k & ~ALLOWED for k in masks):
                        raise ValueError('Invalid controls.')
                    if len(self.tape)+len(masks)>MAX_TAPE:
                        raise ValueError('Recording limit reached. Export this run.')
                    if not self.row['exit'] and self.row['error'] is None and self.row['health']>0:
                        old=self.row['tick']
                        row,_=self.exchange('step '+' '.join(map(str,masks)))
                        # The engine freezes its tick counter at exit. Preserve the first exit input.
                        count=max(0,min(len(masks),row['tick']-old))
                        self.tape.extend(masks[:count])
                else:
                    raise ValueError('Unknown player action.')
            metadata={k:v for k,v in self.row.items() if k!='sounds'}
            metadata['recorded']=len(self.tape)
            return metadata,self.last_pixels

def handler(session, webroot, prefix, wad_hash):
    class Handler(BaseHTTPRequestHandler):
        def log_message(self,*args):
            pass
        def host(self):
            return f'127.0.0.1:{self.server.server_address[1]}'
        def local(self):
            return self.headers.get('Host')==self.host() and self.path.startswith(prefix)
        def reply(self,code,mime,data,state=None):
            self.send_response(code)
            self.send_header('Content-Type',mime)
            self.send_header('Content-Length',str(len(data)))
            self.send_header('Cache-Control','no-store')
            self.send_header('X-Content-Type-Options','nosniff')
            self.send_header('Referrer-Policy','no-referrer')
            self.send_header('Content-Security-Policy',"default-src 'self'; frame-ancestors 'none'; connect-src 'self'; object-src 'none'; style-src 'self'; media-src 'self'")
            if state is not None:
                self.send_header('X-Game-State',base64.b64encode(json.dumps(state,separators=(',',':')).encode()).decode())
            self.end_headers()
            self.wfile.write(data)
        def do_GET(self):
            if not self.local():
                return self.reply(404,'text/plain',b'Not found')
            name=self.path[len(prefix):].split('?',1)[0]
            if name=='game/session':
                return self.reply(200,'application/json',json.dumps({'engine':'CombatV2','iwadSha256':wad_hash,'verifiedIwad':wad_hash==IWAD}).encode())
            if name not in PAGES or not (webroot/name).is_file():
                return self.reply(404,'text/plain',b'Not found')
            return self.reply(200,PAGES[name],(webroot/name).read_bytes())
        def do_POST(self):
            if not self.local() or self.path!=prefix+'game/session' or self.headers.get('Origin')!='http://'+self.host():
                return self.reply(403,'text/plain',b'Local origin required')
            try:
                n=int(self.headers.get('Content-Length','0'))
                if self.headers.get_content_type()!='application/json' or not 0<n<=8192:
                    raise ValueError('Invalid frame request.')
                doc=json.loads(self.rfile.read(n))
                if not isinstance(doc,dict):
                    raise ValueError('Invalid frame request.')
                row,pixels=session.update(doc)
                self.reply(200,'application/octet-stream',pixels,row)
            except (ValueError,TypeError,RuntimeError,OSError) as exc:
                self.reply(400,'text/plain',str(exc).encode())
    return Handler

def main():
    here=Path(__file__).resolve().parent
    webroot=next((p for p in (here,here.parents[2],here.parents[2]/'public-site') if (p/'game/native.html').is_file()),here)
    cli=argparse.ArgumentParser(description=__doc__)
    cli.add_argument('iwad',type=Path)
    cli.add_argument('--worker',type=Path,default=here/'combat/.lake/build/bin/map-player')
    cli.add_argument('--port',type=int,default=0)
    cli.add_argument('--no-browser',action='store_true')
    opts=cli.parse_args()
    if not opts.iwad.is_file() or not opts.worker.is_file() or not (webroot/'game/native.html').is_file():
        cli.error('Provide your local IWAD and built map-player; keep the bundled game directory beside this script.')
    with opts.iwad.open('rb') as file:
        if file.read(4)!=b'IWAD':
            cli.error('Expected an IWAD file.')
        file.seek(0);h=hashlib.sha256()
        for block in iter(lambda:file.read(1024*1024),b''):h.update(block)
    prefix='/'+secrets.token_urlsafe(24)+'/'
    session=Session(opts.worker.resolve(),opts.iwad.resolve())
    with ThreadingHTTPServer(('127.0.0.1',opts.port),handler(session,webroot,prefix,h.hexdigest())) as server:
        url=f'http://127.0.0.1:{server.server_address[1]}{prefix}game/native.html'
        print('Local CombatV2 player\n'+url,flush=True)
        if not opts.no_browser:webbrowser.open(url)
        try:server.serve_forever()
        except KeyboardInterrupt:pass
        finally:session.close()

if __name__=='__main__':main()
