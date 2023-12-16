T=time
P=print
function TIC()
 for x=0,240 do
  for y=0,136 do
   X=x-120;Y=y-68;t=T()*.0003
   d=192/(X*X+Y*Y+1)^.5%16
   a=8*math.atan2(Y,X)/math.pi
   pix(x,y,((a+4*t)+(d+16*t))//1)
  end
 end
 t=T()*.05;s="Hello!"
 for l=1,#s do
  c=s:sub(l,l)
  x=-(t-l*30)%240;y=l+math.sin(t*.05+l*.7)*50+52
  P(c,x+5,y,15,false,5)
  P(c,x,y+1,12,false,5)
 end
end
