clc
clear 
clear all
Numara = [9 4 0 1];
x = DTMFTRA(Numara);
soundsc(x,8192)
X=FT(x);
omega=linspace(-8192*pi,8192*pi,8193);
omega=omega(1:8192);
plot(omega/(pi*2),abs(X));