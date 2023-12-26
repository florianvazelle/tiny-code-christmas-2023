S=math.sin
t=0
cls()
for i=0,47 do
poke(16320+i,i*5)
end
function TIC()
t=t+.02
x=120+S(2.5*t)*110//1
y=68+S(3.5*t)*50//1
for i=x,x+10 do
for j=y,y+10 do
k=i+j*240
poke4(k,peek4(k)+1)
end
end
end
