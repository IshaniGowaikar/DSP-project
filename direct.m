clc;
clear all;

 E1=dlmread('ECG.ASC');
 figure(1);
 plot(E1);
 
figure(2);
Fc=5;
Fs=100;
[b,a]=butter(2,0.05);
freqz(b,a);

figure(3);
[b,a]=cheby1(2,1,0.05);
freqz(b,a);


%heart sounds butterworth
figure(4);
[b,a]=butter(2,0.05,'high');
y=filter(b,a,E1);
subplot(2,1,1);
plot(abs(E1));
hold on;
plot(abs(y));
legend('magnitude of ecg signal','magnitude of filter output');
xlabel ('time');
ylabel('magnitude');
title('ECG signal vs Butterworth high pass filter output');

% respiratory sounds butterworth
[b,a]=butter(2,0.05,'low');
y1=filter(b,a,E1);
subplot(2,1,2);
plot(abs(E1));
hold on;
plot(abs(y1));
legend('magnitude of ecg signal','magnitude of filter output');
xlabel ('time');
ylabel('magnitude');
title('ECG signal vs Butterworth low pass filter output');

% heart sounds Chebyshev 2
figure(5);
[b,a]=cheby1(2,1,0.05,'high');
y=filter(b,a,E1);
subplot(2,1,1);
plot(abs(E1));
hold on;
plot(abs(y));
legend('magnitude of ecg signal','magnitude of filter output');
xlabel ('time');
ylabel('magnitude');
title('ECG signal vs Chebyshev 1 high pass filter output');

% Respiratory sounds Chebyshev 2
[b,a]=cheby1(2,1,0.05,'low');
y1=filter(b,a,E1);
subplot(2,1,2);
plot(abs(E1));
hold on;
plot(abs(y1));
legend('magnitude of ecg signal','magnitude of filter output');
xlabel ('time');
ylabel('magnitude');
title('ECG signal vs Chebyshev 1 low pass filter output');