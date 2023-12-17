T=tri
R=rect
b=136
function TIC()
 cls(9)
 for i=0,5 do
  j=(i+1)*9;
  T(120,i*15,120-j,j*2,120+j,j*2,6)
 end
 R(115,108,10,50,3)
 for i=0,16 do
  x=2+i*15
  d=time()/20
  R(x,(x+i*30+d)%b,2,2,12)
  d=d/100;T(x,b-d,x-8-d,b,x+9+d,b,12)
 end
end
