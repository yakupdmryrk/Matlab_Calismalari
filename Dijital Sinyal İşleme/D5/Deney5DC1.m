clc
clear
close all
N=9;
x=[2 3 -5 6 6 7 -1 0 2];
for k=0:(N-1)
    for n=0:(N-1)
        y(n+1)=x(n+1).*exp(-j.*k*n*(2*pi/N));
    end
    xk1(k+1)=sum(y);
end
xk2=fft(x)
