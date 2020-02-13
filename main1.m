
clc;
clear all;


load('Project3 s8.mat')
load('Project4s8.mat')
load('Project1.mat')
load('Project2.mat')


lpFilt = designfilt('lowpassiir','FilterOrder',5, ...
         'PassbandFrequency',1,'PassbandRipple',0.01, ...
         'SampleRate',10000);
     
bpFilt = designfilt('bandpassfir','FilterOrder',200, ...
         'CutoffFrequency1',150,'CutoffFrequency2',4500, ...
         'SampleRate',10000);

figure;
subplot(2,1,1);
y1=filtfilt(lpFilt,E000);
plot(y1);
xlabel ('Time');
ylabel('Magnitude');
title('Filtered airflow signal of a healthy subject');

subplot(2,1,2);
dataOut1 = filtfilt(bpFilt,E002);
plot(dataOut1);
xlabel ('Time');
ylabel('Magnitude');
title('Filtered tracheal signal of a healthy subject');

% Phase 1
[x1,y1]=ginput(2);
fft_plot=(abs(fft(dataOut1(x1(1):x1(2)))));
power=(fft_plot).^2;
 V1 = [prctile(power,25),prctile(power,50),prctile(power,75),prctile(power,90),prctile(power,95),prctile(power,99)];


% Phase 2
[x2,y2]=ginput(2);
fft_plot=(abs(fft(dataOut1(x2(1):x2(2)))));
power=(fft_plot).^2;
%length1=length(power)/2;
V2 = [prctile(power,25),prctile(power,50),prctile(power,75),prctile(power,90),prctile(power,95),prctile(power,99)];


% Phase 3
[x3,y3]=ginput(2);
fft_plot=(abs(fft(dataOut1(x3(1):x3(2)))));
power=(fft_plot).^2;
V3 = [prctile(power,25),prctile(power,50),prctile(power,75),prctile(power,90),prctile(power,95),prctile(power,99)];


% Phase 4
[x4,y4]=ginput(2);
fft_plot=(abs(fft(dataOut1(x4(1):x4(2)))));
power=(fft_plot).^2;
V4 = [prctile(power,25),prctile(power,50),prctile(power,75),prctile(power,90),prctile(power,95),prctile(power,99)];


% Phase 5
[x5,y5]=ginput(2);
fft_plot=(abs(fft(dataOut1(x5(1):x5(2)))));
power=(fft_plot).^2;
V5 = [prctile(power,25),prctile(power,50),prctile(power,75),prctile(power,90),prctile(power,95),prctile(power,99)];

figure;
subplot(2,1,1);
plot(fft_plot);
xlabel ('Frequency');
ylabel('Magnitude');
title('DFT of healthy');
subplot(2,1,2);
plot(power);
xlabel ('Frequency');
ylabel('Magnitude');
title('Magnitude frequency spectrum of healthy');

figure;
subplot(2,1,1);
y2=filtfilt(lpFilt,e000);
plot(y2);
xlabel ('Time');
ylabel('Magnitude');
title('Filtered airflow signal of a sick subject');

subplot(2,1,2);
dataOut2 = filtfilt(bpFilt,e002);
plot(dataOut2);
xlabel ('Time');
ylabel('Magnitude');
title('Filtered tracheal signal of a sick subject');

% Phase 1
[x11,y1]=ginput(2);
fft_plot=(abs(fft(dataOut2(x11(1):x11(2)))));
power=(fft_plot).^2;
V11 = [prctile(power,25),prctile(power,50),prctile(power,75),prctile(power,90),prctile(power,95),prctile(power,99)];


% Phase 2
[x22,y22]=ginput(2);
fft_plot=(abs(fft(dataOut2(x22(1):x22(2)))));
power=(fft_plot).^2;
%length1=length(power)/2;
V22 = [prctile(power,25),prctile(power,50),prctile(power,75),prctile(power,90),prctile(power,95),prctile(power,99)];


% Phase 3
[x33,y33]=ginput(2);
fft_plot=(abs(fft(dataOut2(x33(1):x33(2)))));
power=(fft_plot).^2;
V33 = [prctile(power,25),prctile(power,50),prctile(power,75),prctile(power,90),prctile(power,95),prctile(power,99)];


% Phase 4
[x44,y44]=ginput(2);
fft_plot=(abs(fft(dataOut2(x44(1):x44(2)))));
power=(fft_plot).^2;
V44 = [prctile(power,25),prctile(power,50),prctile(power,75),prctile(power,90),prctile(power,95),prctile(power,99)];


% Phase 5
[x55,y55]=ginput(2);
fft_plot=(abs(fft(dataOut2(x55(1):x55(2)))));
power=(fft_plot).^2;
V55 = [prctile(power,25),prctile(power,50),prctile(power,75),prctile(power,90),prctile(power,95),prctile(power,99)];

figure;
subplot(2,1,1);
plot(fft_plot);
xlabel ('Frequency');
ylabel('Magnitude');
title('DFT of sick');
subplot(2,1,2);
plot(power);
xlabel ('Frequency');
ylabel('Magnitude');
title('Magnitude Frequency spectrum of sick');
% figure;
% % pol= ({V1,V2,V3,V4,V5},{V11,V22,V33,V44,V55});
% % [V,Vii]=centroid(pol);
% % plot(pol);
% % hold on 
% % plot(V,Vii,'r*');
% % hold off
% scatter(V1);
% hold on
% scatter(V2);
% hold on
% scatter(V3);
% hold on
% scatter(V4);
% hold on
% scatter(V5);