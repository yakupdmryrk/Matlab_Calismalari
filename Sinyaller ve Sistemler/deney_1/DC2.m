t=[0:1/8192:1];  
f=587;  
x1=cos(2*pi*f*t);
plot(x1,t)  
 sound(x1)  
% soundsc(x1)
% t=[0:1/8192:1];  
% f=440; a=10;  
% x2=(exp(-a*t)).*cos(2*pi*f*t);  
% plot(x2,t)  
% sound(x2);
% t1=[0:1/8192:1];  
% f0=3;  
% f1=9;  
% x3=cos(2*pi*f0*t1).*cos(2*pi*f1*t1);  
% plot(x3,t1)  
% sound(x3) 