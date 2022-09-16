t=0:0.0001:0.2;
fs=10000;
Am=1;
fm=20;
Ac=1;
fc=500;
m=20;
ms=Am*cos(2*pi*fm*t);
c=Ac*cos(2*pi*fc*t);
a=Ac*(1+m*cos(2*pi*fm*t)).*cos(2*pi*fc*t);
f=Ac*sin((2*pi*fc*t)+m.*sin(2*pi*fm*t));
p=Ac*sin((2*pi*fc*t)+(m.*ms));
ad=demod(a,fc,fs,"am");
fd=demod(f,fc,fs,"fm");
pd=demod(p,fc,fs,"pm");
subplot(8,1,1);
plot(t,ms);
subplot(8,1,2);
plot(t,c);
subplot(8,1,3);
plot(t,a);
subplot(8,1,4);
plot(t,ad);
subplot(8,1,5);
plot(t,f);
subplot(8,1,6);
plot(t,fd);
subplot(8,1,7);
plot(t,p);
subplot(8,1,8);
plot(t,pd);






%v=(a)+(a).*(a);
%fl=fir1(100,0.001,"low");
%adm=filter(fl,2,v);
%x = diff(f); 
%y = abs(x);
%[b,a]=butter(4, 0.07);
%fdm = filter(b, a, y);