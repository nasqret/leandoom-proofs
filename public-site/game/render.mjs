/* Original procedural artwork. The only geometry input is the published chamber grid. */
const W=480,H=280,S=64;
const rgb=c=>[parseInt(c.slice(1,3),16),parseInt(c.slice(3,5),16),parseInt(c.slice(5,7),16)];
const clamp=x=>Math.max(0,Math.min(255,x))|0;
function pigment(base,light,grain=0){return base.map(n=>clamp(n*light+grain));}
function texture(base,accent,kind) {
  const a=new Uint8ClampedArray(S*S*3);
  for(let y=0;y<S;y++)for(let x=0;x<S;x++){
    let grain=(((x*37)^(y*91)^(y*x*7))%19)-9, v=.9, color=base;
    const rivet=(x%32===5||x%32===28)&&(y%32===5||y%32===28);
    if(kind==='floor'||kind==='ceiling'){
      color=kind==='floor'?[90,85,68]:[62,66,55];
      v=(x%32===0||y%32===0)?.43:(x%32===1||y%32===1)?1.2:.9;
      if((x+y)%37===0&&x%12<6) v*=1.15;
      if(kind==='ceiling'&&x>15&&x<48&&y>26&&y<36){color=[188,180,132];v=y%3===0?1.13:.86;}
    }else if(kind==='door'){
      color=[65,100,116];v=(x<5||x>58)?.48:y%12===1?.47:y%12===2?1.4:.83;
      if((x<7||x>56)&&y>9&&y<55)color=[106,190,218];
      if(y>28&&y<35&&x>12&&x<52)color=([4,10].includes((x+y)%13))?[43,51,43]:[202,166,82];
    }else if(kind==='exit'){
      color=[74,99,79];v=x<5||x>58?.53:.93;
      if(x>8&&x<56&&y>15&&y<40){color=[45,65,52];if(y%5<2&&x>16&&x<50)color=accent;}
      if(y>48&&y<54)color=[197,164,94];
    }else if(kind==='wallB'){
      color=base;v=y<7||y>56?.48:x%16<2?.55:x%16===2?1.33:.95;
      if(y>11&&y<21&&x%32>5&&x%32<27){color=y%3===0?[42,48,42]:[135,127,101];}
      if(y>42&&y<46&&x%32>4&&x%32<29)color=accent;
    }else{
      const x0=x%32; v=x0===0||y===7||y===54?.31:x0===1||y===8||y===55?1.3:.94;
      if(y<6||y>57) {color=[81,75,62];v=(x+y)%14<7?.72:1.14;}
      if(x0>4&&x0<27&&y>12&&y<28){color=[91,90,76];v=y%4<2?.49:1.05;}
      if(y>34&&y<42&&x0>5&&x0<25) v=.56;
    }
    if(rivet){color=[171,163,136];v=1.05;}
    a.set(pigment(color,v,grain),3*(y*S+x));
  }
  return a;
}
function frameTextures(level){
 const base=rgb(level.metal),accent=rgb(level.accent);
 return Object.fromEntries(['floor','ceiling','wallA','wallB','door','exit'].map(k=>[k,texture(base,accent,k)]));
}
function solid(t,s){return t==='#'||t==='X'||t==='B'&&!s.opened;}
function blit(buf,idx,t,uv,light,extra=0){
  const i=3*uv;buf[idx]=clamp(t[i]*light+extra);buf[idx+1]=clamp(t[i+1]*light+extra);buf[idx+2]=clamp(t[i+2]*light+extra);buf[idx+3]=255;
}
function drawScanner(ctx,bob,accent){
 ctx.save();ctx.translate(0,Math.round(bob));ctx.fillStyle='#151a16';
 ctx.beginPath();ctx.moveTo(312,279);ctx.lineTo(324,252);ctx.lineTo(352,237);ctx.lineTo(390,245);ctx.lineTo(415,280);ctx.fill();
 ctx.fillStyle='#555446';ctx.fillRect(330,250,52,29);ctx.fillStyle='#2c302c';ctx.fillRect(337,239,43,31);
 ctx.fillStyle='#96977c';ctx.fillRect(339,238,40,3);ctx.fillRect(379,243,3,23);ctx.fillStyle='#151e17';ctx.fillRect(344,244,30,17);
 ctx.strokeStyle=accent;ctx.lineWidth=1;ctx.beginPath();ctx.moveTo(347,253);ctx.lineTo(352,253);ctx.lineTo(355,248);ctx.lineTo(359,257);ctx.lineTo(363,250);ctx.lineTo(370,250);ctx.stroke();
 ctx.fillStyle='#aa9b70';ctx.fillRect(345,265,4,2);ctx.fillRect(352,265,4,2);ctx.restore();
}
export function createRenderer(canvas) {
 const ctx=canvas.getContext('2d',{alpha:false}),surface=ctx.createImageData(W,H),pixels=surface.data,depth=new Float32Array(W);
 let lastId,tx;
 return function draw(level,state,pose,showMap=false) {
  if(!tx||level.id!==lastId){tx=frameTextures(level);lastId=level.id;}
  const map=level.rows,cx=pose.x+.5,cy=pose.y+.5,ang=pose.angle;
  const dirx=Math.cos(ang),diry=Math.sin(ang),px=-diry*.76,py=dirx*.76;
  const horizon=H/2+Math.sin(pose.bob||0)*1.3,focal=W/(2*.76);
  for(let y=0;y<H;y++){
    const floor=y>=horizon,rowdist=Math.min(52,(focal*.5)/Math.max(.5,Math.abs(y-horizon)));
    const dx=rowdist*2*px/W,dy=rowdist*2*py/W;let wx=cx+rowdist*(dirx-px),wy=cy+rowdist*(diry-py);
    const light=(floor?.95:.85)/(1+rowdist*.11),tex=floor?tx.floor:tx.ceiling;
    for(let x=0;x<W;x++,wx+=dx,wy+=dy){
      const u=(Math.floor(wx*S)&63),v=(Math.floor(wy*S)&63),i=4*(y*W+x);
      blit(pixels,i,tex,v*S+u,light);
      if(floor&&map[Math.floor(wy)]?.[Math.floor(wx)]==='!'&&(u+v)%18<9){
        pixels[i]=clamp(143*light);pixels[i+1]=clamp(85*light);pixels[i+2]=clamp(28*light);
      }
    }
  }
  for(let x=0;x<W;x++){
    const screen=2*x/W-1,rx=dirx+screen*px,ry=diry+screen*py;
    let mx=Math.floor(cx),my=Math.floor(cy),sx=rx<0?-1:1,sy=ry<0?-1:1;
    const ddx=Math.abs(1/(rx||1e-12)),ddy=Math.abs(1/(ry||1e-12));
    let ax=(rx<0?cx-mx:mx+1-cx)*ddx,ay=(ry<0?cy-my:my+1-cy)*ddy,side=0,t='#',d=1;
    for(let count=0;count<40;count++){
      if(ax<ay){d=ax;ax+=ddx;mx+=sx;side=0;}else{d=ay;ay+=ddy;my+=sy;side=1;}
      t=map[my]?.[mx]??'#';if(solid(t,state))break;
    }
    d=Math.max(.04,d);depth[x]=d;
    const wallheight=focal/d,top=horizon-wallheight/2,from=Math.max(0,Math.floor(top)),to=Math.min(H,Math.ceil(top+wallheight));
    let hit=side===0?cy+d*ry:cx+d*rx,u=Math.floor((hit-Math.floor(hit))*S)&63;
    if((side===0&&rx>0)||(side===1&&ry<0))u=63-u;
    const tex=t==='B'?tx.door:t==='X'?tx.exit:(mx*3+my*7)%4===0?tx.wallB:tx.wallA;
    const light=(side?.85:1.12)/(1+d*.12);
    for(let y=from;y<to;y++){
      const v=Math.min(63,Math.max(0,Math.floor((y-top)/wallheight*S)));
      blit(pixels,4*(y*W+x),tex,v*S+u,light);
    }
  }
  ctx.putImageData(surface,0,0);
  const items=[];
  for(let y=0;y<map.length;y++)for(let x=0;x<map[y].length;x++){
    const t=map[y][x];
    if((t!=='b'||state.blue)&&(t!=='h'||state.used.includes(y*map[0].length+x)))continue;
    const dx=x+.5-cx,dy=y+.5-cy,z=dx*dirx+dy*diry;if(z<.15)continue;
    items.push({t,z,sx:W/2+(dy*dirx-dx*diry)*focal/z});
  }
  for(const {t,z,sx:x} of items.sort((a,b)=>b.z-a.z)){
    const size=Math.max(3,Math.min(125,focal*.32/z)),sy=horizon+focal*.21/z;
    const pattern=t==='b'?['........','..oooo..','.obbbbo.','.owwbbo.','.obbbbo.','..oooo..']:['........','..gggg..','.gwwwwg.','.gwrwwg.','.grrrwg.','.gwrwwg.','..gggg..'];
    const colors={o:'#203f50',b:'#5bcaea',w:'#f4ecbd',g:'#47483d',r:'#cf604a'};
    for(let u=0;u<8;u++){const left=Math.floor(x+(u/8-.5)*size),right=Math.ceil(left+size/8);
      for(let xx=Math.max(0,left);xx<Math.min(W,right);xx++){if(z>depth[xx])continue;
        for(let v=0;v<pattern.length;v++){const col=colors[pattern[v][u]];if(col){ctx.fillStyle=col;ctx.fillRect(xx,Math.floor(sy+v*size/8),1,Math.ceil(size/8));}}
      }
    }
  }
  drawScanner(ctx,Math.sin(pose.bob||0)*1.7,level.accent);
  ctx.fillStyle='#dce0c58c';ctx.fillRect(W/2-4,H/2,3,1);ctx.fillRect(W/2+2,H/2,3,1);ctx.fillRect(W/2,H/2-3,1,2);
  if(showMap){
    const scale=5,ox=8,oy=8;ctx.fillStyle='#11180ee0';ctx.fillRect(ox-3,oy-3,map[0].length*scale+6,map.length*scale+6);
    for(let y=0;y<map.length;y++)for(let x=0;x<map[y].length;x++){const t=map[y][x];ctx.fillStyle=t==='#'?'#66715e':t==='X'?'#e9a864':t==='B'?'#58b9dd':'#283528';ctx.fillRect(ox+x*scale,oy+y*scale,scale-1,scale-1);}
    ctx.fillStyle='#eff6ad';ctx.fillRect(ox+state.x*scale,oy+state.y*scale,scale,scale);
  }
 };
}
