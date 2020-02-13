clc;
clear all;


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
[x1,y1]=ginput(2);
fft_plot=(abs(fft(dataOut2(x1(1):x1(2)))));
power=(fft_plot).^2;
V1 = [prctile(power,25),prctile(power,50),prctile(power,75),prctile(power,90),prctile(power,95),prctile(power,99)];


% Phase 2
[x2,y2]=ginput(2);
fft_plot=(abs(fft(dataOut2(x2(1):x2(2)))));
power=(fft_plot).^2;
%length1=length(power)/2;
V2 = [prctile(power,25),prctile(power,50),prctile(power,75),prctile(power,90),prctile(power,95),prctile(power,99)];


% Phase 3
[x3,y3]=ginput(2);
fft_plot=(abs(fft(dataOut2(x3(1):x3(2)))));
power=(fft_plot).^2;
V3 = [prctile(power,25),prctile(power,50),prctile(power,75),prctile(power,90),prctile(power,95),prctile(power,99)];


% Phase 4
[x4,y4]=ginput(2);
fft_plot=(abs(fft(dataOut2(x4(1):x4(2)))));
power=(fft_plot).^2;
V4 = [prctile(power,25),prctile(power,50),prctile(power,75),prctile(power,90),prctile(power,95),prctile(power,99)];


% Phase 5
[x5,y5]=ginput(2);
fft_plot=(abs(fft(dataOut2(x5(1):x5(2)))));
power=(fft_plot).^2;
V5 = [prctile(power,25),prctile(power,50),prctile(power,75),prctile(power,90),prctile(power,95),prctile(power,99)];
