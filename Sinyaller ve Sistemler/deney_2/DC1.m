t = [0:0.001:1];
n = mod(180711049,41);
for i =1:n
    A(i) = rand(1)*3 ;
    omega(i) = rand(1)*pi;
end
[xs]=SUMCS(t,A,omega);
plot(t,imag(xs),'r',t,real(xs),'g'); %K�rm�z� Sanal, Ye�il Reel 
title('Zamana Ba�l� XS Grafi�i');
xlabel('Zaman(t)');
ylabel('XS Ekseni');
grid on;
figure, plot(t, abs(xs)), title('Genlik')
hold on
figure, plot(t, angle(xs)), title('Faz')
