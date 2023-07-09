clc
clear
close all

t=-1:0.001:10;
y=SurekliZamanliDurtu(t-1)-SurekliZamanliBirimBasamak(t-3)+ SurekliZamanliBirimRampa(t-5);
plot(t,y);