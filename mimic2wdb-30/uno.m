clear all

%% CONVERSION A VARIABLES FÍSICAS: (Signal-base)/Gain

figure(1)

ppg=load('3000154m.mat');
ppgSignal = ppg.val;
%Frecuencia de Muestreo
Fs = 125;
s1 = (ppgSignal(1,:)-128)/255;
%s2 = (ppgSignal(2,:)+81)/161;
%s3 = (ppgSignal(3,:)+41)/81;

t = (0:length(ppgSignal)-1)/Fs;
subplot(2,1,1)
plot(s1)
axis([0 100000 -5 0.5 ])
noise = 1*randn(1,length(ppgSignal)) + 0;
subplot(2,1,2)
n2 = awgn(s1,10,'measured');

plot(n2)
d = s1 + noise;
figure(2)
plot(d)
axis([0 100000 -200 200 ])




