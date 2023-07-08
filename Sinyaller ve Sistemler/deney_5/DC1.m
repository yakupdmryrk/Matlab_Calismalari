clc
close all
clear all
D=180711049;
dur=rem(D,7);
Ts = dur/4;
t = -dur/2:Ts/1000:dur/2-Ts/1000; 
if dur==0
    dur=3;
end
type = 2; 
p=generateInterp(type,Ts,dur);
plot(t,p);
xlabel('t')
ylabel('p')
