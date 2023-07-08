clc 
clear 
clear all
x=ReadMyImage('Part4.bmp');
D=180711049;
D7=rem(D,7);
Mh=30 + D7;
Nh=30 + D7;
B = 0.7;
for m = 1:(Mh-1)     
    for n = 1:(Nh-1)
      h(m, n) = transpose(sinc(B*(m-((Mh-1)/2))).*sinc(B*(n-((Nh-1)/2))));
    end
end
y = DSLSI2D(h,x);
DisplayMyImage(y)
