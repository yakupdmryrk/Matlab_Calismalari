dc11 = zeros(1,100); %Bütün elemanlarý 0'dan oluþan 1 x 100 lük matris
dc12 = ones (10,12) ; %Bütün elemanlarý 1'den oluþan 10 x 12 lik matris
dc13 = eye (5,5); %5 x 5'lik matris
dc15 = [1:1:100]; %Elemanlarý 1,2,3,4,5, ... 99,100 olan 1 × 100'lük bir vektör
dc16 = [7:10:37]; %Elemanlarý 7,17,27,37 olan 1 × 4'lük bir vektör
dc17 = [3:4:399]; %Elemanlarý 3,7,11,15, . . .395,399. olan 1 × 100'lük bir vektör
t = [0:0.01:0.99]; %t(1, 1) = 0,t(1, 2) = 0. 01, . . . . ,t(1, 100) = 0. 99 olacak þekilde 1 × 100’lük bir t zaman vektörü
x = cos(2*pi*5*t);  %x(1, 1) = (cos2pi5t), x(1, 2) = cos(2?5 ? 0. 01), ... x(1, 100) = cos(2?5 ? 0. 99)
%kullanýlan t yukarýda elde edilen deðerlerdir.
