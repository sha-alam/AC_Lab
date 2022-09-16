t=0:0.0001:0.2;
Am=1;
fm=20;
Ac=1;
fc=500;
m=20;

%Message signal

ms=Am*cos(2*pi*fm*t);
subplot(7,3,1:3);
plot(t,ms);
title('Message Signal');

%Carrier Signal

c=Ac*cos(2*pi*fc*t);
subplot(7,3,4:6);
plot(t,c);
title('Carrier Signal');

%Amplitude Modulation

a=Ac*(1+m*cos(2*pi*fm*t)).*cos(2*pi*fc*t);
subplot(7,3,7:9);
plot(t,a);
title('Amplitude Modulated Signal');

% Frequency Modulation

f=Ac*sin((2*pi*fc*t)+m.*sin(2*pi*fm*t));
subplot(7,3,10:12);
plot(t,f);
title('Frequency Modulated signal')

% Phase Modulation

p=Ac*sin((2*pi*fc*t)+(m.*ms));
subplot(7,3,13:15);
plot(t,p);
title('Phase Modulated Signal');

%Amplitude Demodulation

v=(a)+(a).*(a);
fl=fir1(100,0.001,"low");
adm=filter(fl,2,v);
subplot(7,3,16:18);
plot(t,adm);
title('Amplitude Demodulated Signal');

% Freuency Demodulation


x = diff(f); 
y = abs(x);
[b,a]=butter(4, 0.07);
fdm = filter(b, a, y);
subplot(7,3,19:21);
plot(fdm);
title('Frequency Demodulated Signal');




