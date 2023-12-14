function TIC()
 cls(9)
 for i=0,5 do
  j=i+1;j=j*9
  tri(120,i*15,120-j,j*2,120+j,j*2,6)
 end
 rect(115,6*18,10,50,3)
end
