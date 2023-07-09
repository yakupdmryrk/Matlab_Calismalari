function [xr]=FDonusturucu(t,Ts,ts,xn,xr,n)
for i=1:size(ts,2)
    xr1=xn(i)*(sinc((t-n(i)*Ts)/Ts));
    xr=xr+xr1;  
end
end