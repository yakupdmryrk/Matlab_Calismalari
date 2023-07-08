function [xt]=FSWave(t,K,T,W)
Xk=[];
omega=[];
for k=0:2*K
    Xk=[Xk ((2*(k-K)*pi*(-1j*pi*(k-K)+T)*W)/(5*(k-K)^3*pi^3))*cos((4*pi*(k-K)*W)/(5*T))+...
        ((25*1j*(k-K)*pi*T-25*T^2+8*(k-K)^2*pi^2*W^2)/(50*(k-K)^3*pi^3))*sin((4*pi*(k-K)*W)/(5*T))];
    
    omega=[omega 2*pi*(k-K)/T];
end
Xk(1,K+1)=(16*W^3)/(375*T);
xt=SUMCS(t,Xk,omega);
end