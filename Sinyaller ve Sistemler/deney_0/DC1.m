dc11 = zeros(1,100); %B�t�n elemanlar� 0'dan olu�an 1 x 100 l�k matris
dc12 = ones (10,12) ; %B�t�n elemanlar� 1'den olu�an 10 x 12 lik matris
dc13 = eye (5,5); %5 x 5'lik matris
dc15 = [1:1:100]; %Elemanlar� 1,2,3,4,5, ... 99,100 olan 1 � 100'l�k bir vekt�r
dc16 = [7:10:37]; %Elemanlar� 7,17,27,37 olan 1 � 4'l�k bir vekt�r
dc17 = [3:4:399]; %Elemanlar� 3,7,11,15, . . .395,399. olan 1 � 100'l�k bir vekt�r
t = [0:0.01:0.99]; %t(1, 1) = 0,t(1, 2) = 0. 01, . . . . ,t(1, 100) = 0. 99 olacak �ekilde 1 � 100�l�k bir t zaman vekt�r�
x = cos(2*pi*5*t);  %x(1, 1) = (cos2pi5t), x(1, 2) = cos(2?5 ? 0. 01), ... x(1, 100) = cos(2?5 ? 0. 99)
%kullan�lan t yukar�da elde edilen de�erlerdir.
