clc;
clear all;
 
figure;
%P8 patient
subplot(2,1,1);
load('Project1.mat')
plot(e000);   % airfolow signal patient
subplot(2,1,2);
load('Project2.mat')
plot(e002);   % Tracheal signal patient
  
figure;
%s8 healthy subject
subplot(2,1,1);
load('Project3 s8.mat')
plot(E000);     % airflow signal healthy
subplot(2,1,2);
load('Project4s8.mat')
plot(E002); % Tracheal signal healthy

figure;
load('bp6.mat');
[h,w] = freqz(Num1,1,1024);
plot(w/pi,abs(h));
xlabel 'Radian Frequency (\omega/\pi)', ylabel 'Magnitude'
title('Bandpass Filter Designed to Specifications');

figure;
subplot(2,1,1);
plot(e000); 
subplot(2,1,2);
y=filter(Num1,1,e002);
y1=smooth(y); 
plot(abs(y1));
axis([0 150000 -20 20]);

figure;
i=1;
while i<=6
y=filter(Num1,1,e002);
y1=smooth(y); 
plot(abs(y1));
axis([0 150000 -20 20]);   
[x1,y1]=ginput(2)
Z=fft(x1,y1);
plot(abs(Z));
i=i+1;
end



% figure;
% subplot(2,1,1);
% plot(E000); 
% subplot(2,1,2);
% y=filter(Num1,1,E002);
% y1=smooth(y); 
% plot(abs(y1));
% axis([0 150000 -20 20]);



