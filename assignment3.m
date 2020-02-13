clc;
clear all;

figure(1);
load('ecg.mat')
subplot(2,1,1);
plot(E03);              %plotting the raw data of the ecg signal
xlabel ('time');
ylabel('magnitude');
title('ECG signal');


S= spectrogram(E03,512,100);
subplot(2,1,2);
plot(S);       
axis([0,600,0,1500]);
xlabel ('time');
ylabel('frequency');
title('spectrogram');


