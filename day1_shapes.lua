function TIC()
    cls(9)t=0;c=6
    for h=0,136 do
        line(120-t,h,120+t,h,c)t=t+1
        if h%20==0 then t=t-t/3 end
        if h>108 then t=5;c=3 end
    end
end
