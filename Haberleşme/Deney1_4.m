fs1=1e3;
fs2=1e4;
fs3=1e5;
fs = fs3;
t = 0:1/fs:0.05;
m1_t=10*sin(2*pi*600*t);
m2_t=5*sin(2*pi*1800*t);
g_t=(m1_t.*m2_t)+ m2_t;
[g_f,n,f_axis] = nfft(g_t,fs);
figure
subplot(3,1,1);plot(t,m1_t);title('m1(t)');
subplot(3,1,2);plot(t,m2_t);title('m2(t)');
subplot(3,1,3);plot(t,g_t);title('g(t)');
