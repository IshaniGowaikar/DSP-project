clc;
clear all;


figure(1);
% P8 patient
load('Project1.mat')
plot(e000);   % airfolow signal patient


figure;
spectrogram(e000, 'yaxis');

figure;
load('hp6.mat');
y=filter(Num,1,e000);
plot(e000);
hold on;
plot(y);
legend('magnitude of ecg signal','magnitude of filter output');


