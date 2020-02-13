clc;
clear all;

 E1=dlmread('ECG.ASC');

 figure(1);
 plot(E1);

% Frequency response of digital low pass Chebyshev type I filter
b= [0.0009    0.0017    0.0009];
a= [1.0000   -1.9859    0.9894];
[h,w]=freqz(b,a);
figure(2);
subplot(2,1,1);
plot(w,abs(h));
title('Frequency response of digital low pass Chebyshev type 1 filter');
subplot(2,1,2);
plot(w, phase(h));
title('Phase response of digital low pass Chebyshev type 1 filter');


% Highpass Chebyshev type I filter output for ECG signal
figure(3);
b= [0.0009    0.0017    0.0009];
a= [1.0000   -1.9859    0.9894];
y1= filter(b,a,E1);
y2=E1-y1;
subplot(2,1,1);
plot(abs(E1));
hold on;
plot(abs(y2));
legend('magnitude of ecg signal','magnitude of filter output');
xlabel ('time');
ylabel('magnitude');
title('ECG signal vs Chebyshev type I high pass filter output');

% ECG signal given to Low pass Chebyshev I filter
subplot(2,1,2);
plot(abs(E1));
hold on;
plot(abs(y1));
legend('magnitude of ecg signal','magnitude of filter output');
xlabel ('time');
ylabel('magnitude');
title('ECG signal vs Chebyshev type I lowpass  filter'); %Gives respiratory signals


 
