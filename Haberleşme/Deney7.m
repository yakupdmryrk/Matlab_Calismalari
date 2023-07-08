clc;clear;close all;
fc1=400;  Ac1=10;
Am1=5; Am2=2;
fm1=75;  fm2=100;
fs=2000;
kf=20;
t= 0: 1/fs : 0.5;
m1_t = Am1*cos(2*pi*fm1*t);
m2_t = Am2*cos(2*pi*fm2*t);
c_t=Ac1*cos(2*pi*fc1*t);
x1_t = m1_t + m2_t;
Am=max(x1_t);
Beta=(Am*kf)/fm2;
int_x1=(cumsum(x1_t)/fs);
[X1_f,n,f_axis] = nfft(int_x1,fs);

%%Mod
s1_t = Ac1*cos(2*pi*fc1+(2*pi*kf.*int_x1));
[S1_f,n,f_axis] = nfft(s1_t,fs);

%%Demod
r_t=diff(s1_t); %Türev Alma
nr_t=abs(r_t); %Zarf Dedektörü
[b,a] = butter(2,100/(fs/2));
mr_t = filter(b,a,nr_t);

subplot(5,2,1); plot(t, m1_t); title('m1(t)');
subplot(5,2,2); plot(t, m2_t); title('m2(t)');
subplot(5,2,3); plot(t, x1_t); title('x1(t)');
subplot(5,2,4); plot(t, c_t); title('c(t)');
subplot(5,2,5); plot(t, s1_t); title('s1(t)');
subplot(5,2,6); plot(t(1:end-1), mr_t); title('mr(t)');
subplot(5,2,7); plot(f_axis, abs(X1_f)); title('X1(f)');
subplot(5,2,8); plot(f_axis, abs(S1_f)); title('S1(f)');
[mR_f,n,f_axis] = nfft(mr_t,fs);
subplot(5,2,9); plot(f_axis, abs(mR_f)); title('mr(f)');
