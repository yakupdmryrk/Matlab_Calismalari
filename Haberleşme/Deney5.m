close all; clc;clear;
fm1 = 8;% Birinci Mesaj sinyali frekansı
fm2 = 10;% İkinci Mesaj sinyali frekansı
fm3 = 12;% Üçğncü Mesaj sinyali frekansı
fc1 = 80;% Taşıyıcı sinyal frekansı
fc2 = 120;% Taşıyıcı sinyal frekansı
fc3 = 160;% Taşıyıcı sinyal frekansı
fs=300;
t= 0: 1/fs : 0.5; % Ayrık zaman değerleri
Am1= 5; % Birinci mesaj genliği
Am2=10; % İkinci mesaj genliği
Am3=5; % İkinci mesaj genliği
Ac=10;% Taşıyıcı genlik
% 1.Modüle
m1_t = Am1*cos(2*pi*fm1*t);
c1_t = Ac*cos(2*pi*fc1*t);
s1_t= c1_t.*m1_t;
[S1_f,n,f_axis] = nfft(s1_t,fs);
% 2.Modüle
m2_t = Am2*cos(2*pi*fm2*t);
c2_t = Ac*cos(2*pi*fc2*t);
s2_t= c2_t.*m2_t;
[S2_f,n,f_axis] = nfft(s2_t,fs);
% 3.Modüle
m3_t = Am3*cos(2*pi*fm3*t);
c3_t = Ac*cos(2*pi*fc3*t);
s3_t= c3_t.*m3_t;
[S3_f,n,f_axis] = nfft(s3_t,fs);

r_t= s1_t + s2_t + s3_t;
[R_f,n,f_axis] = nfft(r_t,fs);

[b,a] = butter(6,[(fc2-20)/(fs/2),(fc2+20)/(fs/2)]);
rm1_t = filter(b,a,r_t);
[RM1_f,n,f_axis] = nfft(rm1_t,fs);

rm11_t = cos(2*pi*fc2*t) .* rm1_t;
[b,a] = butter(6,(20)/(fs/2));
mr_t = filter(b,a,rm11_t);
[MR_f,n,f_axis] = nfft(mr_t,fs);

subplot(5,4,1); plot(t, m1_t); title('m1(t)');
subplot(5,4,2); plot(t, c1_t); title('c1(t)');
subplot(5,4,3); plot(t, s1_t); title('s1(t)');
subplot(5,4,4); plot(f_axis,abs(S1_f)); xlim([-2*150,2*150]); title('s1(f)');
subplot(5,4,5); plot(t, m2_t); title('m2(t)');
subplot(5,4,6); plot(t, c2_t); title('c2(t)');
subplot(5,4,7); plot(t, s2_t); title('s2(t)');
subplot(5,4,8); plot(f_axis,abs(S2_f)); xlim([-2*150,2*150]); title('s2(f)');
subplot(5,4,9); plot(t, m3_t); title('m3(t)');
subplot(5,4,10); plot(t, c3_t); title('c3(t)');
subplot(5,4,11); plot(t, s3_t); title('s3(t)');
subplot(5,4,12); plot(f_axis,abs(S3_f)); xlim([-2*150,2*150]); title('s3(f)');
subplot(5,4,13); plot(t, r_t); title('r(t)');
subplot(5,4,14); plot(f_axis,abs(R_f)); xlim([-2*150,2*150]); title('r(f)');
subplot (5,4,15); plot(t, rm1_t); title('r(t) BGS sonrası zaman düzlemi')
subplot (5,4,16); plot(f_axis, abs(RM1_f)); xlim([-2*150,2*150]);title('RM(f) (BGS sonrası frekans düzlemi)')
subplot (5,4,17); plot(t, mr_t); title('mr(t) AGS alınan sinyal zaman düzlemi ')
subplot (5,4,18); plot(f_axis, abs(MR_f)); xlim([-2*150,2*150]);title('MR(f) AGS sonrası alınan sinyal frekans düzlemi')





