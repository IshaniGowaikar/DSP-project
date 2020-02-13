clc;
load('Project1.mat')
 figure;
plot(e000);
 
%  figure;
%  spectrogram(E1,'yaxis')
%  
 
 % Indirect method (Frequency sampling)
 
 figure;
%  fc=5;
%  Fs=100;
%  N=31;

f = [0 0.03 0.05 1];
m = [0 0 1 1];
freq_sample= fir2(15,f,m);
freqz(freq_sample,1)
title('Frequency and phase response of FIR LPF of order 31')

figure(4);
y1= filter(freq_sample,1,e000);
% y2=E1-y1;                  
plot(abs(e000));
hold on;
plot(abs(y1));
axis([0 150000 -300 400]);
legend('magnitude of ecg signal','magnitude of filter output');
xlabel ('time');
ylabel('magnitude');
title('ECG signal vs Highpass FIR filter of order 31')

% Direct method (Remez method)
% figure(5); 
% remez = firpm(31,[0 0 0.05 0.06 0.07 0.08 0.09 1],[1 1 1 0 0 0 0 0]);
% freqz(remez,1)
% title('Frequency and phase response of FIR LPF of order 31')
% 
% 
% figure(6);
% y1= filter(remez,1,E1);
% y2=E1-y1;                  
% plot(abs(E1));
% hold on;
% plot(abs(y2));
% legend('magnitude of ecg signal','magnitude of filter output');
% xlabel ('time');
% ylabel('magnitude');
% title('ECG signal vs Highpass FIR filter of order 31')
% 
