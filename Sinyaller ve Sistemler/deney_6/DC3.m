clc
close all
clear all
D=180711049;
D7=rem(D,7);
Ts=0.005*(D7+1);
dur=4;
t1=-2:Ts:2;
t=-dur/2:Ts/1000:dur/2-Ts/1000; 
xt=0.25*cos(2*pi*3*t1+(pi/8)+0.4*cos(2*pi*5*t1-1.2)+0.9*cos(2*pi*t1+(pi/4)));
xt1=0.25*cos(2*pi*3*t+(pi/8)+0.4*cos(2*pi*5*t-1.2)+0.9*cos(2*pi*t+(pi/4)));
type=0;
figure
plot(t,xt1)
hold on
stem(t1,xt)
xR=DtoA(type,Ts,dur,xt1);