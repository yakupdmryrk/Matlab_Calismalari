function [ts,xn,n,Ts] = FAyrikSinyal(f,min,aralik,max)
Ts=aralik;
ts=min:Ts:max;
xn=sin(2*pi*f*ts);
n=ts/Ts;
end