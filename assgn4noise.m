 clc;


E1=dlmread('ECG.ASC');
  
 figure(1);
 Y = awgn(E1,5);
 subplot(2,1,1);
 plot(E1);
 xlabel ('time');
ylabel('magnitude');
title('ECG signal'); 
subplot(2,1,2);
 plot(Y);
 xlabel ('time');
ylabel('magnitude');
title('ECG + Noise'); 

 figure(2);
b= [0.0198 0.0397 0.0198];
a= [ 1.0000 -1.5635 0.6429];
y1= filter(b,a,Y);         %ECG signal given to lowpass butterworth filter
y2=Y-y1;                   %Low pass butterworth filter converted to Highpass butterworth filter
plot(abs(Y));
hold on;
plot(abs(y2));
legend('magnitude of ecg signal','magnitude of filter output');
xlabel ('time');
ylabel('magnitude');
title('ECG signal vs Highpass butterworth filter'); 


