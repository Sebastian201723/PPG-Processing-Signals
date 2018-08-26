clear all

%% CONVERSION A VARIABLES F�SICAS: (Signal-base)/Gain

figure(1)

ppg=load('iaf1_afwm.mat');
ppgSignal = ppg.val;
%Frecuencia de Muestreo
Fs = 1000;
signal = ppgSignal/3277;
%[tm,signal,Fs,siginfo]=rdmat('iaf1_afw')
t = (0:length(signal)-1)/Fs;
plot(t,signal(1,:))
title('Se�al Original')
grid on

figure(2)

Noise = 5*randn(8,length(ppgSignal))+1100;
plot(Noise(1,:),'b:')
title('Ruido')
d = signal+ Noise;

figure(3)

plot(d(1,:),'g-')
title('Ruido + Se�al original')
figure(4)

subplot(8,1,1)
plot(d(1,:))
title('Se�al 1: Ruido + Se�al original')

subplot(8,1,2)
plot(d(2,:))
title('Se�al 2: Ruido + Se�al original')

subplot(8,1,3)
plot(d(3,:))
title('Se�al 3: Ruido + Se�al original')

subplot(8,1,4)
plot(d(4,:))
title('Se�al 4: Ruido + Se�al original')

subplot(8,1,5)
plot(d(5,:))
title('Se�al 5: Ruido + Se�al original')

subplot(8,1,6)
plot(d(6,:))
title('Se�al 6: Ruido + Se�al original')

subplot(8,1,7)
plot(d(7,:))
title('Se�al 7: Ruido + Se�al original')

subplot(8,1,8)
plot(d(8,:))
title ('Se�al 8: Ruido + Se�al original')

figure(5)
plotATM('iaf1_afwm')



