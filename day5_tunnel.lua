function TIC()
 for x=0,240 do
  for y=0,136 do
   cx=x-120;cy=y-68;t=time()*0.0003
   d=192/math.sqrt(cx*cx+cy*cy)%16
   a=8*math.atan2(cy,cx)/math.pi
   pix(x,y,math.floor((a+4*t)+(d+16*t)))
  end
 end
end
