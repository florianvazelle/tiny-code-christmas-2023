T=time
P=print
M=math
function TIC()
 for i=0,4e4 do
  x=i%240;y=i/240
  X=x-120;Y=y-68;t=T()*.0003
  d=192/(X*X+Y*Y+1)^.5%16
  a=8*M.atan2(Y,X)/M.pi
  pix(x,y,((a+4*t)+(d+16*t))//1)
 end
 t=T()*.05
 for l=1,6 do
  c=("Hello!"):sub(l,l)
  x=(-(t-l*30)%300)-30;y=l+M.sin(t*.05+l*.7)*50+52
  P(c,x+5,y,15,0,5)
  P(c,x,y+1,12,0,5)
 end
end
