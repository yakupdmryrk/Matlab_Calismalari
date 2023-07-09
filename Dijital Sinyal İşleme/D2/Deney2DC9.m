clc
clear
close all

t=-1:0.5:10;
y=AyrikZamanliDurtu(t+1)-AyrikZamanliBirimBasamak(t-1)+ AyrikZamanliBirimRampa(t-3);
stem(t,y);