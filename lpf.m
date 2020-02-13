clc;
clear all;



% P8 patient
load('Project1.mat')
load('Project3 s8.mat')
%plot(e000);   % airfolow signal patient

lpFilt = designfilt('lowpassiir','FilterOrder',5, ...
         'PassbandFrequency',1,'PassbandRipple',0.01, ...
         'SampleRate',10000);
     fvtool(lpFilt)
     
  figure;

y=filtfilt(lpFilt,E000);
plot(E000);
hold on;
plot(y);
legend('magnitude of ecg signal','magnitude of filter output');


  figure;

y=filtfilt(lpFilt,e000);
plot(e000);
hold on;
plot(y);
legend('magnitude of ecg signal','magnitude of filter output');