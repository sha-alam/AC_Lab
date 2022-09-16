% Amplitude Modulation
clc;
close all;
fm=20;
Am=1;
t= 0: 0.0001: .1 ;
m=Am*cos(2*pi*fm*t);
subplot(4,3,1:3);
plot(t,m);
title('Modulating or Message signal(fm=20Hz)');
xlabel('t--->'); ylabel('Amplitude');
Ac=1;
fc=500;
c=Ac*cos(2*pi*fc*t);
subplot(4,3,4:6);
plot(t,c);
title('Carrier signal(fc=500Hz)');
xlabel('t--->'); ylabel('Amplitude');
k= Am / Ac;
u = 0.5 * k; %u is modulation index 
s1=Ac*(1+u*cos(2*pi*fm*t)).*cos(2*pi*fc*t);
subplot(4,3,7);
plot(t,s1);
title('Under Modulated signal(Modulation index = 0.5)');
xlabel('t--->'); ylabel('Amplitude');
u = 1 * k; %u is modulation index 
s2=Ac*(1+u*cos(2*pi*fm*t)).*cos(2*pi*fc*t);
subplot(4,3,8);
plot(t,s2);
title('Critical Modulated signal(Modulation index =1)');
xlabel('t--->'); ylabel('Amplitude');
u = 2.5 * k; %u is modulation index 
s3=Ac*(1+u*cos(2*pi*fm*t)).*cos(2*pi*fc*t);
subplot(4,3,9);
plot(t,s3);
title('Over Modulated signal(Modulation index =2.5)');
xlabel('t--->'); ylabel('Amplitude');