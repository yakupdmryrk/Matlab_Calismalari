clc;clear;close all;
load 'HS2022_odev_matFile.mat';
t = (0:1/fs:((length(r_t)-1)/fs)).';
fc1 = 6000;
fc2 = 12000;
fc3 = 18000;
fch = 12000;
[R_f,n,f_axis] = nfft(r_t,fs);
subplot(3,2,1); plot(t,r_t);
xlabel('Zaman (s)');ylabel('Genlik');title('r(t)');
subplot(3,2,2); plot(f_axis,abs(R_f));
xlabel('Frekans (Hz)');ylabel('Genlik');title('R(f)');
%% ALICI
fc = fc1;
c_t = cos(2*pi*fc*t);
fa = fc - fch/2;    % BGS için alt frekans
fu = fc + fch/2;    % BGS için üst frekans
% BGS uygula
[b,a] = butter(1,[(fa)/(fs/2),(fu)/(fs/2)]);
rm1_t = filter(b,a,r_t);
[RM1_f,n,f_axis] = nfft(rm1_t,fs);
% Demodüle
d_t = r_t.*c_t;
[D_f,n,f_axis] = nfft(d_t,fs);
subplot(3,2,3);plot(t,d_t);
subplot(3,2,4);plot(f_axis,abs(D_f));
% AGS
rm11_t = cos(2*pi*fc*t) .* rm1_t;
[b,a] = butter(1,(fch)/(fs/2));
mr_t = filter(b,a,rm11_t);
[MR_f,n,f_axis] = nfft(mr_t,fs);

subplot(3,2,5);plot(t,mr_t);
xlabel('Zaman (t)');ylabel('Genlik');title('mr(t)');
subplot(3,2,6);plot(f_axis,abs(MR_f));
xlabel('Frekans (Hz)');ylabel('Genlik');title('MR(f)');
sound(1*mr_t,fs);
audiowrite('f6000.wav', mr_t, fs);

