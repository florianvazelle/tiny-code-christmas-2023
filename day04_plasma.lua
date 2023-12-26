S=math.sin
function TIC()
 for i=0,4e4 do
  x=i%240;y=i/240
  c=S(x/16)+S(y/8)+S((x+y+time()*.1)/16)+S((x*x+y*y+1)^.5/8)
  pix(x,y,(c+4)/8*15)
 end
end
