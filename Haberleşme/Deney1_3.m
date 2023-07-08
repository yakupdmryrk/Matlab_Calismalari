pkg load signal
fs1=32;
fs2=64;
fs3=128;
fs=256;
t = 0:1/fs:1-(1/fs);
m1_t=10*sin(2*pi*600*t);
m2_t=5*sin(2*pi*1000*t);
g_t=(m1_t.*m2_t)+ m2_t;
[g_f,f_axis]=nfft(g_t,fs);
deg=9;
[bl,al] = butter(deg,1000/(fs/2));
[b2,a2] = butter(deg,1000/(fs/2),"high");
[b3,a3] = butter(deg,[800/(fs/2), 1200/(fs/2)]);
figure
subplot(4,1,1);plot(t,m1_t);title('m1(t)');
subplot(4,1,2);plot(t,m2_t);title('m2(t)');
subplot(4,1,3);plot(f_axis,abs(r1));title('Filter G(f)');
subplot(4,1,4);plot(t,g_t);title('g(t)');
