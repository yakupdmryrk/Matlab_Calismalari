% x=zeros(size(t)); 
% for k=-10:1:10 
%      x=x+X(k)*exp(j*2*pi*k*t/T); 
% end 
% indeks de�erleri pozitif olmas� gerekti�i i�in X(k) de�i�tirilmelidir.
x=zeros(size(t)); 
for k=-10:1:10 
    x=x+X(k+11)*exp(j*2*pi*k*t/T);
end 
