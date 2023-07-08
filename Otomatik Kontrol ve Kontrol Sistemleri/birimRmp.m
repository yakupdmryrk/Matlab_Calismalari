t = 0: 0.01 : 20;
s = tf('s');
transfer_fonk=tf([1 3 2], [1 2 9 3 2])
rampa= transfer_fonk.*(1/s^2);
y = step(rampa,t);
plot(t,y)