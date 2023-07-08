function p=generateInterp(type,Ts,dur)
t = -dur/2:Ts/1000:dur/2-Ts/1000; 
switch (type)
     case 0
          p =zeros(1,length(t));
          p(t>=-1/2*Ts & t<1/2*Ts)=1; 
     case 1
          p = 1-2*abs(t);
          p(t<=-Ts/2 & t>Ts/2)=0;
    case 2    
          p = sinc(pi*t);
          p(t==0)=1;
end