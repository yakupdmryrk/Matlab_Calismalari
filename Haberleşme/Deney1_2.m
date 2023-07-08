fs1=1e3;
fs2=1e4;
fs3=1e5;
fs = fs3;
t = 0:1/fs:0.05-(1/fs);
m1_t=10*sin(2*pi*600*t);
m2_t=5*sin(2*pi*1000*t);
m3_t = m1_t + m2_t;
[m1_f,f_axis]=nfft(m1_t,fs);
plot(f_axis,abs(m1_f));


