clc 
clear 
clear all
x=ReadMyImage('Part5.bmp');
DisplayMyImage(x)
h1= [0.5 -0.5;0 0];
h2= [0.5 0;-0.5 0];
h3= 0.5*h1+0.5*h2;
y1=DSLSI2D(h1,x);
s1=y1.^2;
y2=DSLSI2D(h2,x);
s2=y2.^2;
y3=DSLSI2D(h3,x);
s3=y3.^2;
DisplayMyImage(y1)
DisplayMyImage(s1)
DisplayMyImage(y2)
DisplayMyImage(s2)
DisplayMyImage(y3)
DisplayMyImage(s3)
