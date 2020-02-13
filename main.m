clc;
clear all;
 
% Original signals

figure;
%s8 healthy subject
subplot(4,1,1);
load('Project3 s8.mat')
plot(E000);     % airflow signal healthy
xlabel ('Time');
ylabel('Magnitude');
title('Airflow signal for a healthy subject');

subplot(4,1,2);
load('Project4s8.mat')
plot(E002); % Tracheal signal healthy
xlabel ('Time');
ylabel('Magnitude');
title('Tracheal signal for a healthy subject');

%P8 patient
subplot(4,1,3);
load('Project1.mat')
plot(e000);   % airfolow signal patient
xlabel ('Time');
ylabel('Magnitude');
title('Airflow signal for a sick subject');

subplot(4,1,4);
load('Project2.mat')
plot(e002);   % Tracheal signal patient
xlabel ('Time');
ylabel('Magnitude');
title('Tracheal signal for a sick subject');
%------------------------------------------------------------------------------------------------------------------

% Spectrograms
figure;
Nfft=256;
NOverlap=10;
Win=hamming(Nfft);
Fs=10000;

subplot(2,1,1);
spectrogram(E002,Win,NOverlap,Nfft,Fs,'yaxis')
colormap('jet');
xlabel ('Time');
ylabel('Frequency');
title('Time Frequency representation of tracheal signal of a healthy subject');
  
subplot(2,1,2);
spectrogram(e002,Win,NOverlap,Nfft,Fs,'yaxis')
colormap('jet');
xlabel ('Time');
ylabel('Frequency');
title('Time Frequency representation of tracheal signal of a sick subject');

%------------------------------------------------------------------------------------------------------------------
%Filtering of airflow signals

lpFilt = designfilt('lowpassiir','FilterOrder',5, ...
         'PassbandFrequency',1,'PassbandRipple',0.01, ...
         'SampleRate',10000);
fvtool(lpFilt)

figure;
subplot(2,1,1);
y1=filtfilt(lpFilt,E000);
plot(E000);
hold on;
plot(y1);
legend('airflow signal','filtered airflow signal');
xlabel ('Time');
ylabel('Frequency');
title('Filtered airflow signal of a healthy subject');

subplot(2,1,2);
y2=filtfilt(lpFilt,e000);
plot(e000);
hold on;
plot(y2);
legend('airflow signal','filtered airflow signal');
xlabel ('Time');
ylabel('Frequency');
title('Filtered airflow signal of a sick subject');

%-----------------------------------------------------------------------------------------------------------------------
% Filtering of Tracheal signals

bpFilt = designfilt('bandpassfir','FilterOrder',200, ...
         'CutoffFrequency1',150,'CutoffFrequency2',4500, ...
         'SampleRate',10000);
fvtool(bpFilt)

figure;
subplot(2,1,1);
dataOut1 = filtfilt(bpFilt,E002);
plot(e002);
hold on;
plot(dataOut1);
legend('Tracheal signal','filtered tracheal signal');
xlabel ('Time');
ylabel('Frequency');
title('Filtered tracheal signal of a healthy subject');


subplot(2,1,2);
dataOut2 = filtfilt(bpFilt,e002);
plot(e002);
hold on;
plot(dataOut2);
legend('Tracheal signal','filtered tracheal signal');
xlabel ('Time');
ylabel('Frequency');
title('Filtered tracheal signal of a sick subject');
%-----------------------------------------------------------------------------------------------------------------------
% Plotting the filtered outputs

figure;
subplot(4,1,1);
plot(y1);
xlabel ('Time');
ylabel('Magnitude');
title('Filtered airflow signal of a healthy subject');

subplot(4,1,2);
plot(dataOut1);
xlabel ('Time');
ylabel('Magnitude');
title('Filtered tracheal signal of a healthy subject');

subplot(4,1,3);
plot(y2);
xlabel ('Time');
ylabel('Magnitude');
title('Filtered airflow signal of a sick subject');

subplot(4,1,4);
plot(dataOut2);
xlabel ('Time');
ylabel('Magnitude');
title('Filtered tracheal signal of a sick subject');

%-----------------------------------------------------------------------------------------------------------------------










