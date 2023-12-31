clc;clear;close all;
fs=1000;
t=0:1/fs:0.5;
am1=10; am2=20; ac1=30;
f1=10; f2=50; fc=100;
ct=ac1*cos(2*pi*fc*t);
m1t=am1*cos(2*pi*f1*t);
m2t=am2*cos(2*pi*f2*t);
x1t=m1t + m2t;
s1t=x1t.*ct;
r1t=s1t.*ct;
[b,a]=butter(5,fc/(fs/2));
r1t=(filter(b,a,r1t))/8;
[m1f,n,f_axis] = nfft(m1t,fs);
[m2f,n,f_axis] = nfft(m2t,fs);
[cf,n,f_axis] = nfft(ct,fs);
[x1f,n,f_axis] = nfft(x1t,fs);
[s1f,n,f_axis] = nfft(s1t,fs);
[r1f,n,f_axis] = nfft(r1t,fs);
figure
subplot(6,2,1);plot(t,m1t);title('m1t');
subplot(6,2,2);plot(t,m2t);title('m2t');
subplot(6,2,3);plot(t,x1t);title('x1t');
subplot(6,2,4);plot(t,ct);title('ct');
subplot(6,2,5);plot(t,s1t);title('s1t');
subplot(6,2,6);plot(t,r1t);title('r1t');
subplot(6,2,7);plot(f_axis,abs(m1f));title('m1f');
subplot(6,2,8);plot(f_axis,abs(m2f));title('m2f');
subplot(6,2,9);plot(f_axis,abs(x1f));title('x1f');
subplot(6,2,10);plot(f_axis,abs(cf));title('cf');
subplot(6,2,11);plot(f_axis,abs(s1f));title('s1f');
subplot(6,2,12);plot(f_axis,abs(r1f));title('r1f');

