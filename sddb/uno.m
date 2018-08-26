clear all

ppg=load('30m.mat');

ppgSignal = ppg.val;

ppgSignalNoise = 1*randn(1,ppgSignal(1));

d = ppgSignal(1,:)+ppgSignalNoise;

plot(d)
