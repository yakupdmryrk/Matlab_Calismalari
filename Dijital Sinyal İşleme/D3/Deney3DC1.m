clc
clear
close all
f=2;
t=0:0.002:20;
xt=cos(2*pi*f*t);
%plot(t,xt)
w=linspace(-8*pi,8*pi,size(t,2));
for i=1:size(t,2)
    xc(i)=trapz(t,xt.*exp(-j.*w(i).*t));
end
plot(w,xc)