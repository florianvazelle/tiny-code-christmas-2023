function TIC()
 for i=0,4e4 do
  x=i%240;y=i/240
  X=x-120;Y=y-68;t=time()*.0003
  d=192/(X*X+Y*Y+1)^.5%16
  a=8*math.atan2(Y,X)/math.pi
  pix(x,y,((a+4*t)+(d+16*t))//1)
 end
end
