% MySum=zeros(size(t)); 
% for j=1:100 
%       MySum=MySum+A(j)*exp(j*omega(j)*t); 
% end 
% sayaç olarak kabul edilen j for içinde kök -1 olarak kullanýlmak
% istenmiþtir bu yüzden parametreler çakýþtýðýndan yanlýþ sonuçlar elde
% ederiz.
MySum=zeros(size(t)); 
for i=1:100
    MySum=MySum+A(i)*exp(j*omega(i)*t); 
end