% x=zeros(size(t)); 
% for k=-10:1:10 
%      x=x+X(k)*exp(j*2*pi*k*t/T); 
% end 
% indeks deðerleri pozitif olmasý gerektiði için X(k) deðiþtirilmelidir.
x=zeros(size(t)); 
for k=-10:1:10 
    x=x+X(k+11)*exp(j*2*pi*k*t/T);
end 
