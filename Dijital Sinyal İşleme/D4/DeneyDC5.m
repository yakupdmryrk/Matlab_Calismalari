clc
clear
close all
t=-5:0.01:5;
xct=5*(sinc(5*t).^2);
Ts=1/2;
ts=-5:Ts:5;
xn=(sinc(ts)).^2;
figure
stem(ts,xn)
n=ts/Ts;
w=linspace(-5*pi,5*pi,size(ts,2));
for i=1:size(w,2)
    fxn(i)=sum(xn.*exp(-j.*w(i).*n));
end
figure
plot(w,fxn)