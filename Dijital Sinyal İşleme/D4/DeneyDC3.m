clc
clear
close all
t=-5:0.01:5;
xct=sinc(t);
xct2=(xct.^2);
plot(t,xct)
w=linspace(-5*pi,5*pi,size(t,2));
for i=1:size(w,2)
    fxct(i)=trapz(t,xct.*exp(-j.*w(i).*t));
    fxct2(i)=trapz(t,xct2.*exp(-j.*w(i).*t));
end
figure
plot(w,fxct)
figure
plot(t,xct2)
figure
plot(w,fxct2)
