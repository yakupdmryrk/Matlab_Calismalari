clc
clear
close all
t=-5:0.01:5;
xct=sinc(t).^2;
plot(t,xct)
Ts=1/5;
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

