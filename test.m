clc
t=0:0.0001:0.2;
Am=1;
fm=20;
m=Am*cos(2*pi*fm*t);
subplot(5,3,1:3);
plot(t,m);
Ac=1;
fc=500;
c=Ac*cos(2*pi*fc*t);
subplot(5,3,4:6);
plot(t,c);
k=Am/Ac;
u=0.5*k;
ms=Ac*(1+u*cos(2*pi*fm*t)).*cos(2*pi*fc*t);
subplot(5,3,7:9);
plot(t,ms);
v=(ms)+(ms).*(ms);
subplot(5,3,10:12);
plot(t,v);
f=fir1(100,0.001,"low");
dm=filter(f,2,v);
subplot(5,3,13:15);
plot(t,dm);
