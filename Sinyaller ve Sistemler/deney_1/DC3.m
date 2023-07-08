% t=[0:1/8192:1]; 
% a=2033; 
% x4=20*cos(pi*a*t.*t); 
% plot(x4,t) 
% sound(x4)
t=[0:1/8192:2];  
x5=cos(2*pi*((-500*t.*t)+1600*t)); 
plot(x5,t) 
sound(x5) 