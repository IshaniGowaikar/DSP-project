load('Project1.mat')
load('Project2.mat')

f = [0 0.15 0.2 0.9 0.95 1];
m = [0 0 1 1 0 0];
b= fir2(14,f,m);
freqz(b,1)
title('Frequency and phase response of FIR LPF of order 31')

figure (2);
y = filter(b,1,e002);                 
plot(abs(e002));
hold on;
plot(abs(y));
legend('magnitude of ecg signal','magnitude of filter output');
xlabel ('time');
ylabel('magnitude');
title('Tracheal signal of patient vs filter op');