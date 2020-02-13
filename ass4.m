clc;
 
 E1=dlmread('ECG.ASC');
 figure(1);
 plot(E1);
 
 figure(2);
 spectrogram(E1,'yaxis')
 
 figure(3);
%  fc=5 Hz;
%  Fs=100 Hz;
%  N=63;


f = [0 0.05 0.05 0.05 0.05 1];
m = [1 1 1 0 0 0];
freq_sample= fir2(63,f,m);
freqz(freq_sample,1)
title('Frequency and phase response of FIR LPF of order 63')

figure(4);
y1= filter(freq_sample,1,E1);
y2=E1-y1;                  
plot(abs(E1));
hold on;
plot(abs(y2));
legend('magnitude of ecg signal','magnitude of filter output');
xlabel ('time');
ylabel('magnitude');
title('ECG signal vs Highpass FIR filter of order 63')


figure(5);
remez = firpm(63,[0 0 0.05 0.06 0.07 0.08 0.09 1],[1 1 1 1 0 0 0 0]);
freqz(remez,1)
title('Frequency and phase response of FIR LPF of order 63')

figure(6);
y1= filter(remez,1,E1);
y2=E1-y1;                  
plot(abs(E1));
hold on;
plot(abs(y2));
legend('magnitude of ecg signal','magnitude of filter output');
xlabel ('time');
ylabel('magnitude');
title('ECG signal vs Highpass FIR filter of order 63')