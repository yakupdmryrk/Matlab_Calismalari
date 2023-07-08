fs1=1000;
fs2=10000;
fs3=1e5;
fs = fs3;
t = 0:1/fs:0.05-(1/fs);
m1_t=10*sin(2*pi*600*t);
m2_t=5*sin(2*pi*1000*t);
m3_t = m1_t + m2_t;
figure
subplot(3,1,1);plot(t,m1_t);title('mt');
subplot(3,1,2);plot(t,m2_t);title('ct');
subplot(3,1,3);plot(t,m3_t);title('st');

