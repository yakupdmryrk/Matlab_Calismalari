function [nsignal,n,f_axis] = nfft(signal,fs)
signal_f = fft(signal);
n=length(signal_f);
f_axis = (-n/2:n/2-1)*fs/n;
nsignal = fftshift(signal_f)/n;
end
