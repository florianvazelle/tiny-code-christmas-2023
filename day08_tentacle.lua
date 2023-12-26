M=math
S=M.sin
q=0
v=M.pi/180
function TIC()
for i=0,4e4 do x=i%240;y=i/240;pix(x,y,x%15)end
d=time()
q=q+.5
for o=0,180 do
for i=1,5 do
k=M.abs(S((o*50+d)*.0009)*15)
r=10+k
w=(360*i/5)*v
p=w+q*v
a=o+r*M.cos(p)
b=70+r*S(p)
circ(a,b,k*.3+6,o%15)
end
end
end
