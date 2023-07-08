t=[-10:0.001:10];
d11=mod(180711049,11);
d5=mod(180711049,5);
T=5;
W=2.5;
K=10000+d11;
[xt]=FSWave(t,K,T,W);
plot(t,imag(xt),'r',t,real(xt),'g'); %Kýrmýzý Sanal, Yeþil Reel 
title('Zamana Baðlý Xt Grafiði');
xlabel('Zaman(t)');
ylabel('Xt Ekseni');
grid on;