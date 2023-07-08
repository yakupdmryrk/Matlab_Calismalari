kp=5;
t = 0: 0.01 : 20;
s = tf('s');
transfer_fonk=tf([1+kp 3+kp 2+kp], [1 2 9+kp 3*kp+3 2*kp+2])
rampa= transfer_fonk.*(1/s^2);
y = step(rampa,t);
subplot(2,2,1), step(transfer_fonk),xlabel('Birim Basamak')
subplot(2,2,2), impulse(transfer_fonk),xlabel('Birim Darbe')
subplot(2,2,3), plot(t,y),xlabel('Birim Rampa')