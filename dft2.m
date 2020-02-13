% Part 1
% b)
clc;
clear all;


n=0:256;
x=cos(0.48*pi*n)+cos(0.52*pi*n);
subplot(3,2,1);
stem(n, x);               %given signal
xlabel ('n');
ylabel('magnitude');
title('given sigal(x)');

X=fft(x,256);
magX=abs(X);
subplot(3,2,3);
stem(magX);               %DFT of given signal for 256 points 
xlabel ('k');
ylabel('magnitude');
title('DFT of given signal for 256 points ');

phaseX=angle(X);
subplot(3,2,5);
stem(phaseX);               %Phase of DFT
xlabel ('k');
ylabel('phase');
title('Phase of DFT ');


n1=0:1:255;
y=[x(1:1:10) zeros(1,246)];      
subplot(3,2,2);
stem(n1, y);              %zero padded the signal using only first 10 points
xlabel ('n');
ylabel('magnitude');
title('zero padded signal using only first 10 points');

Y=fft(y,256);
magY=abs(Y);
subplot(3,2,4);
stem(magY);               %DFT of the zero padded signal
xlabel ('k');
ylabel('magnitude');
title('DFT of the zero padded signal');

phaseY=angle(Y);
subplot(3,2,6);
stem(phaseY);               %Phase of DFT
xlabel ('k');
ylabel('phase');
title('Phase of DFT ');


% Decreasing the difference between frequencies
% Case 1
figure(2);
n=0:256;
x=cos(0.48*pi*n)+cos(0.50*pi*n);
subplot(2,3,1);
stem(n, x);             %given signal
xlabel ('n');
ylabel('magnitude');
title('x with frequency difference= 2');

X=fft(x,256);
magX=abs(X);
subplot(2,3,2);
stem(magX);          %DFT of given signal for 256 points 
xlabel ('k');
ylabel('magnitude');
title('DFT of signal');

phaseY=angle(Y);
subplot(2,3,3);
stem(phaseY);               %Phase of DFT
xlabel ('k');
ylabel('phase');
title('Phase of DFT ');

% Case 2
n=0:256;
x=cos(0.49*pi*n)+cos(0.50*pi*n);
subplot(2,3,4);
stem(n, x);             %given signal
xlabel ('n');
ylabel('magnitude');
title('x with frequency difference= 1');

X=fft(x,256);
magX=abs(X);
subplot(2,3,5);
stem(magX);          %DFT of given signal for 256 points 
xlabel ('k');
ylabel('magnitude');
title('DFT of signal');

phaseY=angle(Y);
subplot(2,3,6);
stem(phaseY);               %Phase of DFT
xlabel ('k');
ylabel('phase');
title('Phase of DFT ');


% Increasing the difference between frequencies
% Case 1
figure(3);
n=0:256;
x=cos(0.46*pi*n)+cos(0.52*pi*n);
subplot(2,3,1);
stem(n, x);             %given signal
xlabel ('n');
ylabel('magnitude');
title('x with frequency difference= 6');

X=fft(x,256);
magX=abs(X);
subplot(2,3,2);
stem(magX);          %DFT of given signal for 256 points 
xlabel ('k');
ylabel('magnitude');
title('DFT of signal ');

phaseY=angle(Y);
subplot(2,3,3);
stem(phaseY);               %Phase of DFT
xlabel ('k');
ylabel('phase');
title('Phase of DFT ');

% Case 2

n=0:256;
x=cos(0.45*pi*n)+cos(0.53*pi*n);
subplot(2,3,4);
stem(n, x);             %given signal
xlabel ('n');
ylabel('magnitude');
title('x with frequency difference= 8');

X=fft(x,256);
magX=abs(X);
subplot(2,3,5);
stem(magX);          %DFT of given signal for 256 points 
xlabel ('k');
ylabel('magnitude');
title('DFT of signal ');

phaseY=angle(Y);
subplot(2,3,6);
stem(phaseY);               %Phase of DFT
xlabel ('k');
ylabel('phase');
title('Phase of DFT ');


