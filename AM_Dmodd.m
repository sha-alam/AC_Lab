%Amplitude demodulation
clc;
close all;
t= 0: 0.0001 : 0.2;
fm=20; %Frequency of message signal
m_t = cos(2*pi*fm*t); %For message signal
subplot(5, 1, 1);
plot(t,m_t);
title('Message signal');
xlabel('Time-->>'); ylabel('Amplitude-->');
fc=500; %Frequency of carrier signal
m_c = cos(2*pi*(fc*t)); %For carrier signal
subplot(5, 1, 2);
plot(t,m_c);
title('Carrier signal');
xlabel('Time-->>'); ylabel('Amplitude-->');
ka = 1; %Modulation index
v_1 = (1 + ka* m_t).*m_c; %For AM wave
subplot(5, 1, 3);
plot(t, v_1);
title('AM wave');
xlabel('Time-->>'); ylabel('Amplitude-->');
%For Square-Law Demodulator
v =( v_1 )+ ((v_1) .* ( v_1)); %Output's equation of the square-law device.
subplot(5, 1, 4);
plot(t, v);
title('Output of the square law device');
xlabel('Time-->>'); ylabel('Amplitude-->');
%For low pass filtering
F = fir1(100, 0.001, 'low');
am_demodulation = filter(F , 2, v);
subplot(5, 1, 5);
plot(t, am_demodulation );
title('Demodulated signal, after using low pass filter');
xlabel('Time-->>'); ylabel('Amplitude-->');