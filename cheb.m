clc;
clear all;

 E1=dlmread('ECG.ASC');

 figure(1);
 plot(E1);
 
 
 Fs=100;
 [NUMd,DENd] = bilinear([1.1025],[0.0318 0.034 1.1025],Fs);
 f=fvtool(NUMd,DENd);
 
 disp(NUMd);
  disp(DENd);
 