clc
clear
close all
[t,xt]=FSurekliSinyal(4,0,0.0001,2);
plot(t,xt)
[ts,xn,n,Ts]=FAyrikSinyal(4,0,1/16,2);
xr=zeros(1,size(xt,2));
[xr]=FDonusturucu(t,Ts,ts,xn,xr,n);
hold on
plot(t,xr)