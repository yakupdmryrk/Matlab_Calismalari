clc 
clear
close all

A=[1 -0.6 0.36];
B=[1 -0.9 0.81];
freqz(B,A);
figure
b0=0.056;
b1=[1 1];
b2=[1 -1.2 0.98];
a1=[1 -0.68];
a2=[1 -1.51 0.8];
b=b0*conv(b1,b2);
a=conv(a1,a2);
freqz(b,a);