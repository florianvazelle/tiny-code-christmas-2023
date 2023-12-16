function TIC()
 for x=0,240 do
  for y=0,136 do
   X=x-120;Y=y-68;t=time()*.0003
   d=192/(X*X+Y*Y+1)^.5%16
   a=8*math.atan2(Y,X)/math.pi
   pix(x,y,((a+4*t)+(d+16*t))//1)
  end
 end
end
