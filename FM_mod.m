%Frequency Modulation
clc;
%for modulating signal
Vm=5; %amplitude of modulating signal
fm=30; %frequency of modulating signal
t= 0 : 0.0001 : 0.2;
Sm=Vm*cos(2*pi*fm*t);
subplot(3,1,1)
plot(t,Sm)
title('Frequency modulating signal')
xlabel('t --->>'); ylabel(' Amplitude');
% for carrier signal
Vc=5;
fc=fm*15;
Sc=Vc*sin(2*pi*fc*t);
subplot(3,1,2)
plot(t,Sc)
title('Carrier signal')
xlabel('t --->>'); ylabel(' Amplitude');
%for modulated signal
mi=5; %modulation index
V=Vc*sin( 2* pi* fc* t+ mi.* sin(2 *pi *fm *t));
subplot(3,1,3)
plot(t,V)
title('Modulated signal (FM)')
xlabel('t --->>'); ylabel(' Amplitude');