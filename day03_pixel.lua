function TIC()
 for i=0,4e4 do
  x=i%240;y=i/240
  pix(x,y,(x+y+time())%15)
 end
end
