clc
clear
close all
%--SinyalPencereleme(fs,T,Pencere Boyutu,hamming=1 hanning=2 bartlett=3)--
[index,x,f,xf,x_b,xf_b,f1,xf_b1,xf1,pencereBoyut,N]=SinyalPencereleme(8000,1/8000,100,1);
subplot(3,2,1);plot(index,x);grid;title('Sinyal');%x(n)
subplot(3,2,2);plot(f,xf);grid;axis([0 8000 0 1]);title('Sinyal Spektrumu');%spektrum
subplot(3,2,3);plot(index,x_b);grid;axis([0 pencereBoyut -2.5 2.5]);title('Pencerelenmiþ Sinyal');%pencerelenmiþ sinyal
subplot(3,2,4);plot(f,xf_b);grid;axis([0 8000 0 1]);title('Pencerelenmiþ Sinyalin Spektrumu');%spektrum
subplot(3,2,6);plot(f1,xf_b1(1:N/2+1));grid;axis;title('Pencerelenmiþ Sinyalin Tek Yanlý Spektrumu');%tek yan bant
subplot(3,2,5);plot(f1,xf1(1:N/2+1));grid;axis;title('Sinyalin Tek Yanlý Spektrumu');%tek yan bant