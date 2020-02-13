clc;
clear all;

figure(1);
%P8 patient
load('Project1.mat')
plot(e000);   % airflow signal patient
figure(2);
load('Project2.mat')
plot(e002);   % Tracheal signal patient
  
figure(3);
% s8 healthy subject
load('Project3 s8.mat')
plot(E000);     % airfolow signal healthy
figure(4);
load('Project4s8.mat')
plot(E002); % Tracheal signal healthy

 figure(5);
% spectrogram(e002, 'yaxis');
f = [150 2000];
fs = 1000;
[s,f,t] = spectrogram(e002,20,15,f,fs,'yaxis');
% 
% figure(6);
% spectrogram(E002, 'yaxis');


figure(7);
rp = 1;           % Passband ripple
% rs1 = 40;          % Stopband ripple
% rs2 = 40;          % Stopband ripple
pf1 = 0.2;
pf2 = 0.9;
sf1 = 0.15;
sf2 = 0.95;
fs = 1000;        % Sampling frequency
f = [0 0.15 0.2 0.9 0.95 1];   % cutoff frequencies
a = [0 0.0 1.0 1.0 0.0 0];     % Desired amplitudes

b = fir1(200,[0.35 0.68]);

[h,w] = freqz(b,1,1024);
plot(f,a,w/pi,abs(h));
legend('Ideal','firpm Design')
xlabel 'Radian Frequency (\omega/\pi)', ylabel 'Magnitude'
title('Bandpass Filter Designed to Specifications');

figure (8);
y = filter(b,1,e002); 
subplot(2,1,1);
plot(e002);
% hold on;
subplot(2,1,2);
plot(y);
% legend('magnitude of ecg signal','magnitude of filter output');
xlabel ('time');
ylabel('magnitude');
title('Tracheal signal of patient vs filter op');

% figure (9);
% y = filter(b,1,E002);                 
% plot(abs(E002));
% hold on;
% plot(abs(y));
% legend('magnitude of ecg signal','magnitude of filter output');
% xlabel ('time');
% ylabel('magnitude');
% title('Tracheal signal of patient vs filter op');