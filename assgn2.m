%Part 1
% a)

clc;
clear all;

%N=16, L=5;
figure(1);
L=5;
N=16;
k=(-N/2:N/2);
Np=5;
T=1;
xn=[ones(1,L), zeros(1,N-L)];
xn=repmat(xn,1,Np);
t=linspace(0,T*Np,length(xn));
subplot(3,1,1);
stem(t,xn);             %plotting square wave for N=16,L=5
xlabel ('n');
ylabel('magnitude');
title('square wave L=5, N=16');

Xk=fft(xn,N);
magXk=abs([Xk(N/2+1:N) Xk(1:N/2+ 1)]);
subplot(3,1,2);
stem(k, magXk);         %plotting DFT for N=16,L=5
axis([-N/2,N/2,-0.5,5.5]);
xlabel ('k');
ylabel('Xk');
title('DFT of square wave L=5, N=16');

phaseXk=angle(Xk);
subplot(3,1,3);
plot(phaseXk);               %Phase of DFT
xlabel ('k');
ylabel('phase');
title('Phase of DFT ');


%N=32, L=5;
figure(2);
L=5;
N=32;
k=(-N/2:N/2);
Np=5;
T=1;
xn=[ones(1,L), zeros(1,N-L)];
xn=repmat(xn,1, Np);
t=linspace(0,T*Np,length(xn));
subplot(3,1,1);
stem(t,xn);              %plotting square wave for N=32,L=5
xlabel ('n');
ylabel('magnitude');
title('square wave L=5, N=32');

Xk=fft(xn,N);
magXk=abs([Xk(N/2+1:N) Xk(1:N/2+1)]);
subplot(3,1,2);
stem(k, magXk);          %plotting DFT for N=32,L=5
axis([-N/2,N/2,-0.5,5.5]);
xlabel ('k');
ylabel('Xk');
title('DFT of square wave L=5, N=32');

phaseXk=angle(Xk);
subplot(3,1,3);
plot(phaseXk);               %Phase of DFT
xlabel ('k');
ylabel('phase');
title('Phase of DFT ');

%N=64, L=7;
figure(3);
L=7;
N=64;
k=(-N/2:N/2);
Np=5;
T=1;
xn=[ones(1,L), zeros(1,N-L)];
xn=repmat(xn,1, Np);
t=linspace(0,T*Np,length(xn));
subplot(3,1,1);
stem(t,xn);             %plotting square wave for N=64,L=7
xlabel ('n');
ylabel('magnitude');
title('square wave L=7, N=64');

Xk=fft(xn,N);
magXk=abs([Xk(N/2+1:N) Xk(1:N/2+1)]);
subplot(3,1,2);
stem(k, magXk);         %plotting DFT for N=64,L=7
axis([-N/2,N/2,-0.5,7.5]);
xlabel ('k');
ylabel('Xk');
title('DFT of square wave L=7, N=64');

phaseXk=angle(Xk);
subplot(3,1,3);
plot(phaseXk);               %Phase of DFT
xlabel ('k');
ylabel('phase');
title('Phase of DFT ');





