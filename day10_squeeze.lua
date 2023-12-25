M=math
S=M.sin
t=0
function TIC()t=t+.1
for b=0,4e4 do
x=b%240;y=b/240
if S(t)>0 then
s="DAY"
c=S(x/16)+S(y/8)+S((x+y+t)/16)+S((x*x+y*y+1)^.5/8)
else
s="10"X=x-120;Y=y-68
c=192/(X*X+Y*Y+1)^.5+t
end
pix(x,y,c)
end
print(s,10,10,4,0,10)
end