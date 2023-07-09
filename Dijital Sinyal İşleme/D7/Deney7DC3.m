clc 
clear
close all
A=[1 -2.1192 2.6952 -1.6924 0.6414];
B=[0.0201 0 -0.0402 0 0.0201];
fs=8000;
N=512;
freqz(B,A,N,fs);
figure
load speech.dat
y = filter(B,A,speech);
subplot(2,1,1),plot(speech,'k');grid;
title('Orjinal Ses Dosyasý');
subplot(2,1,2),plot(y,'k');grid;
title('Ön Vurgu Filtresimden Geçirilmiþ Ses Dosyasý');
figure
N=length(speech);
Axk=abs(fft(speech.*hamming(N)'))/N;%Çift yanlý spektrum
Ayk=abs(fft(y.*hamming(N)'))/N;
f=(0:N/2)*fs/N;
Axk(2:N)=2*Axk(2:N);%Tek yanlý Spektrum
Ayk(2:N)=2*Ayk(2:N);
subplot(2,1,1),plot(f,Axk(1:N/2+1),'k');grid;
title('Orjinal Sinyalin Tek Yanlý Spektrumu');
subplot(2,1,2),plot(f,Ayk(1:N/2+1),'k');grid;
title('Filtrelenmiþ Sinyalin Tek Yanlý Spektrumu');
sound(y);