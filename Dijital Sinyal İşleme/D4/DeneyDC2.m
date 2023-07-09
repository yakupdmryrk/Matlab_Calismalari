clc
clear
close all

w=-10*pi:pi/10:10*pi;
sinyal=zeros(1,size(w,2));
for i=1:size(w,2)
    if -10*pi<=w(i) && w(i)<0 
    sinyal(i)=(w(i)/(10*pi))+1;
    elseif w(i)==0
        sinyal(i)=1;
    elseif w(i)<=10*pi && 0<w(i)
        sinyal(i)=(-1*w(i)/(10*pi))+1;
    else
        sinyal(i)=0;
    end
end
t=linspace(-1,1,size(w,2));
tfsinyal=zeros(1,size(w,2));
for i=1:size(w,2)
    
    tfsinyal(i)=(1/(2*pi)).*trapz(w,(sinyal.*exp(j.*w.*t(i))));
end
plot(t,tfsinyal)