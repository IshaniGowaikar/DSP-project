%  Part 2

% a)
clc;
clear all;

figure(1);
load('ecg.mat')
subplot(2,1,1);
plot(E03);              %plotting the raw data of the ecg signal
xlabel ('time');
ylabel('magnitude');
title('ECG signal');

N=512;                  %Number of samples
df=fft(E03,N);
magdf=abs(df);
subplot(2,1,2);
stem(magdf);            % dft ecg original signal
axis([0,600,0,0.75*10.^5]);
xlabel ('N');
ylabel('magnitude');
title('DFT of ECG signal ');


% Part 2
% b)

% FIR Filter

figure(2);
b= [0.125 0.375 0.375 0.125];
a= [1];
y= filter(b,a,E03);
subplot(2,1,1);
plot(abs(E03));
hold on;
plot(abs(y));
legend('magnitude of ecg signal','magnitude of filter output');
xlabel ('time');
ylabel('magnitude');
title('ECG signal vs FIR filter output');

N=512;                  %Number of samples
df=fft(y,N);
magdf=abs(df);
subplot(2,1,2);
stem(magdf);            % dft ecg original signal
axis([0,600,0,0.75*10.^5]);
xlabel ('N');
ylabel('magnitude');
title('DFT of ECG signal ');


%IIR Filter 1
figure(3);
b1= [0.1448];
a1= [1 -1.76 1.182 -0.2781];
y1= filter(b1,a1,E03);
subplot(2,1,1);
plot(abs(E03));
hold on;
plot(abs(y1));
legend('magnitude of ecg signal','magnitude of filter output');
xlabel ('time');
ylabel('magnitude');
title('ECG signal vs IIR1 filter output');

N=512;                  %Number of samples
df=fft(y1,N);
magdf=abs(df);
subplot(2,1,2);
stem(magdf);            % dft ecg original signal
axis([0,600,0,0.75*10.^5]);
xlabel ('N');
ylabel('magnitude');
title('DFT of ECG signal ');



% IIR Filter 2
figure(4);
b2= [0.0181 0.0543 0.0543 0.0181];
a2= [1 -1.76 1.182 -0.2781];
y2= filter(b2,a2,E03);
subplot(2,1,1);
plot(abs(E03));
hold on;
plot(abs(y2));
legend('magnitude of ecg signal','magnitude of filter output');
xlabel ('time');
ylabel('magnitude');
title('ECG signal vs IIR2 filter output');

N=512;                  %Number of samples
df=fft(y2,N);
magdf=abs(df);
subplot(2,1,2);
stem(magdf);            % dft ecg original signal
axis([0,600,0,0.75*10.^5]);
xlabel ('N');
ylabel('magnitude');
title('DFT of ECG signal ');



