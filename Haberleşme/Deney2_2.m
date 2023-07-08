fs = 40000;
t = 0:1/fs:0.4;
am1 = 10; am2 = 20; ac1 = 30;
f1 = 100; f2 = 100; fc = 50;
ct =ac1*cos(2*pi*fc*t);
m1 =am1*cos(2*pi*f1*t);
m2 =am2*cos(2*pi*f2*t);
mt =m1+m2;
ka =0.8;
st =ac1*(1+ka*mt).*cos(2*pi*fc*t);
dt =st.*ct;
df =fft(dt);
n =length(df);
df_shift = fftshift(df)/n;
mf = fft(mt);
n = length(mf);
mf_shift = fftshift(mf)/n;
f_axis = (-n/2:n/2-1)*fs/n;
figure
subplot(4,1,1);plot(f_axis,abs(mf_shift));title('mf');
subplot(4,1,2);plot(f_axis,abs(df_shift));title('df');
subplot(4,1,3);plot(t,dt);title('dt');
subplot(4,1,4);plot(t,st);title('st');

