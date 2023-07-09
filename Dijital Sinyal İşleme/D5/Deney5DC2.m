clc
clear
close all
N=6;
x=[2 -3 3 4 -2 5];
for k=0:(N-1)
    for n=0:(N-1)
        y(n+1)=x(n+1).*exp(-j.*k*n*(2*pi/N));
    end
    xk1(k+1)=sum(y);
end
xk2=fft(x,N)
for n=0:(N-1)
    for k=0:(N-1)
        xyn(k+1) = xk1(k+1).*exp(j.*k*n*(2*pi/N));
    end
    xyn1(n+1)=(sum(xyn)/N);
end
xyn2=ifft(xk2,N);