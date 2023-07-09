function [index,x,f,xf,x_b,xf_b,f1,xf_b1,xf1,pencereBoyut,N] = SinyalPencereleme(fs,T,pencereBoyut,pencereTur)
n=0:1:pencereBoyut;
x=2*sin(2000*pi*n*T);
N=size(x,2);
if pencereTur==1
    pencereTur=hamming(N);
elseif pencereTur==2
        pencereTur=hanning(N);
elseif pencereTur==3
        pencereTur=bartlett(N);
end
index=[0:1:N-1];
f=index*fs/N;
xf=abs(fft(x))/N;
x_b=x.*pencereTur';
xf_b=abs(fft(x_b)/N);
xf1(2:N)=2*xf(2:N);
xf_b1(2:N)=2*xf_b(2:N);
f1=[0:N/2]*fs/N;
end