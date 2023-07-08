clc
clear 
clear all
r1=[ones(1,2048)  zeros(1,6144)];
r2=[zeros(1,2048) ones(1,2048)  zeros(1,4096)];
r3=[zeros(1,4096) ones(1,2048)  zeros(1,2048)];
r4=[zeros(1,6144) ones(1,2048)];
Numara = [9 4 0 1];
x = DTMFTRA(Numara);
x1=r4.*x;
soundsc(x1,8192)
X1=FT(x1);
omega=linspace(-8192*pi,8192*pi,8193);
omega=omega(1:8192);
plot(omega/(pi*2),abs(X1));