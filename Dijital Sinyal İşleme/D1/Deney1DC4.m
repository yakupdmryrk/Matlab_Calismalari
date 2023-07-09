clc
clear
close all
t=-2:0.001:2;
xt=ones(1,size(t,2));
plot(t,xt)
axis([-2.5 2.5 0 1.5])
Ts=1/128;
ts=-2:Ts:2;
xn=ones(1,size(ts,2));
hold on
stem(ts,xn)
axis([-2.5 2.5 0 1.5])
n=ts/Ts;
xr=zeros(1,size(xt,2));
for i=1:size(xn,2)
    xr1=xn(i)*(sinc((t-n(i)*Ts)/Ts));
    xr=xr+xr1;  
end
hold on
plot(t,xr)
axis([-2.5 2.5 0 1.5])