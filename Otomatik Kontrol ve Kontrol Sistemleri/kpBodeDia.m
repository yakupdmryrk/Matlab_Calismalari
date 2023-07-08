kp=5;
transfer_fonk=tf([1+kp 3+kp 2+kp], [1 2 9+kp 3*kp+3 2*kp+2])
bode(transfer_fonk)