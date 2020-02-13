clc;
clear all;

% FIR Filter
a= [1];
b= [0.125 0.375 0.375 0.125];
[h,w]=freqz([0.125 0.375 0.375 0.125],[1]);
figure(1);
subplot(2,1,1);
plot(w,abs(h));
subplot(2,1,2);
plot(w, phase(h));


% IIR Filter 1
b1= [0.1448];
a1= [1 -1.76 1.182 -0.2781];
[h,w]=freqz([0.1448],[1 -1.76 1.182 -0.2781]);
figure(2);
subplot(2,1,1);
plot(w,abs(h));
subplot(2,1,2);
plot(w, phase(h));


% IIR Filter 2
b2= [0.0181 0.0543 0.0543 0.0181];
a2= [1 -1.76 1.182 -0.2781];
[h,w]=freqz([0.0181 0.0543 0.0543 0.0181],[1 -1.76 1.182 -0.2781]);
figure(3);
subplot(2,1,1);
plot(w,abs(h));
subplot(2,1,2);
plot(w, phase(h));