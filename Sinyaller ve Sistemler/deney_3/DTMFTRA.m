function [x] = DTMFTRA(Numara) 
lowFreq=[941 697 697 697 770 770 770 852 852 852];
highFreq=[1336 1209 1336 1477 1209 1336 1477 1209 1336 1477];
N=length(Numara);
x=ones(1,2048*N);
Ts=1/8192;
for i = 1:N
for t=(0.25*i-0.25):Ts:(0.25*(i-1/8192))
    x(round(8192*t)+1)=cos(2*pi*lowFreq(Numara(i)+1)*t)+...
    cos(2*pi*highFreq(Numara(i)+1)*t);
end
end
end