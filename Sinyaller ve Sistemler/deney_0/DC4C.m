% MySum=zeros(size(t)); 
% for j=1:100 
%       MySum=MySum+A(j)*exp(j*omega(j)*t); 
% end 
% saya� olarak kabul edilen j for i�inde k�k -1 olarak kullan�lmak
% istenmi�tir bu y�zden parametreler �ak��t���ndan yanl�� sonu�lar elde
% ederiz.
MySum=zeros(size(t)); 
for i=1:100
    MySum=MySum+A(i)*exp(j*omega(i)*t); 
end