clc
clear 
clear all
Numara = [5 3 2 2 3 8 2 2 0 4];
x = DTMFTRA(Numara);
soundsc(x,8192)