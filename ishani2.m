clc;
clear all;

 E1=dlmread('ECG.ASC');

 figure(1);
 plot(E1);
 
 
 Fs=100;
 [NUMd,DENd] = bilinear([1],[0.01 0.351 1],Fs);
 fvtool(NUMd,DENd);
 disp(NUMd);
  disp(DENd);
 