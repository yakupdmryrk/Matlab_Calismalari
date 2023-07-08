fs=1000;
t=0:1/fs:0.4;
am1=10; am2=20; ac1=30;
f1=20; f2=10; fc=100;
ct=ac1*cos(2*pi*fc*t);
m1=am1*cos(2*pi*f1*t);
m2=am2*cos(2*pi*f2*t);
x1t=m1+m2;
x2t=m1.*m2;
ka=0.8;
st1=ac1*(1+ka*x1t).*cos(2*pi*fc*t);
st2=ac1*(1+ka*x2t).*cos(2*pi*fc*t);
dt=st1.*ct;
rt=abs(st2);
[b,a]=butter(5,fc/(fs/2)); %alçak geçiren
rt=filter(b,a,rt);
rt=2*(rt-mean(rt)); %dc sinyali yok etme
[m1f,n,f_axis] = nfft(m1,fs);
[m2f,n,f_axis] = nfft(m2,fs);
[cf,n,f_axis] = nfft(ct,fs);
[x1f,n,f_axis] = nfft(x1t,fs);
[x2f,n,f_axis] = nfft(x2t,fs);
[sf1,n,f_axis] = nfft(st1,fs);
[sf2,n,f_axis] = nfft(st2,fs);
[df,n,f_axis] = nfft(dt,fs);
[rf,n,f_axis] = nfft(rt,fs);
figure
subplot(4,2,1);plot(t,m1);title('m1');
subplot(4,2,2);plot(t,m2);title('m2');
subplot(4,2,3);plot(t,x1t);title('x1t');
subplot(4,2,4);plot(t,x2t);title('x2t');
subplot(4,2,5);plot(t,ct);title('ct');
subplot(4,2,6);plot(t,st1);title('st1');
subplot(4,2,7);plot(t,dt);title('dt');
subplot(4,2,8);plot(t,rt);title('rt');
figure
subplot(4,2,1);plot(f_axis,abs(m1f));title('m1f');
subplot(4,2,2);plot(f_axis,abs(m2f));title('m2f');
subplot(4,2,3);plot(f_axis,abs(x1f));title('x1f');
subplot(4,2,4);plot(f_axis,abs(x2f));title('x2f');
subplot(4,2,5);plot(f_axis,abs(cf));title('cf');
subplot(4,2,6);plot(f_axis,abs(sf1));title('sf1');
subplot(4,2,7);plot(f_axis,abs(df));title('df');
subplot(4,2,8);plot(f_axis,abs(rf));title('rf');

