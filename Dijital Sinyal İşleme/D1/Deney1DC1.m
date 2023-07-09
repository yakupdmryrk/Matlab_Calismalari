clc
clear
close all
[t,xt]=FSurekliSinyal(4,0,0.0001,2);
plot(t,xt)
hold on
[ts,xn,n,Ts]=FAyrikSinyal(4,0,1/64,2);
stem(ts,xn)
