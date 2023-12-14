h=136
function TIC()
 cls(9)
 for i=0,5 do
  j=(i+1)*9;
  tri(120,i*15,120-j,j*2,120+j,j*2,6)
 end
 rect(115,108,10,50,3)
 for i=0,16 do
  x=2+i*15;y=i*30
  d=time()/20
  rect(x,(x+y+d)%h,2,2,12)
  d=d/100;tri(x,h-d,x-8-d,h,x+9+d,h,12)
 end
end
