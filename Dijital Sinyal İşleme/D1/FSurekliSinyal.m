function [t,xt] = FSurekliSinyal(f,min,aralik,max)
t=min:aralik:max;
xt=sin(2*pi*f*t);
end