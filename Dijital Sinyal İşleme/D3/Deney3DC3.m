clc
clear
close all
f=1;
t=0:0.001:2;
xt=cos(2*pi*f*t);
%plot(t,xt)
Ts=1/8;
ts=0:Ts:2;
xr=cos(2*pi*f*ts);
%hold on
%stem(ts,xr)
w=linspace(-8*pi,8*pi,size(t,2));
n=ts/Ts;
for i=1:size(t,2)
    xc(i)=trapz(t,xt.*exp(-j.*w(i).*t));
    xnf(i)=sum(xr.*exp(-j.*w(i).*n));
end
plot(w,xnf)