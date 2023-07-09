clc 
clear
close all
fs=8000;
Nx=10;
N=1000;
n=0:N-1;
x=[2*sin(2000*pi*[0:1:Nx-1]/fs),zeros(1,24)];
xf=abs(fft(x,N))/Nx;   %noshift
f=[0:1:Nx-1]*fs/Nx;
stem(n,xf)
figure
plot(n,xf)