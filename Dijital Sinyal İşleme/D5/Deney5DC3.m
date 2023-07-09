clc 
clear
close all
fs=8000;
N=1024;
x=2*sin(2000*pi*[0:1:N-1]/fs);
xf=abs(fft(x))/N;
f=[0:N-1]*fs/N;
plot(f,abs(xf))
% tek yan bant
xf(2:N)=2*xf(2:N);
f1=[0:N/2]*fs/N;
figure
plot(f1,xf(1:N/2+1))