clc
close all

t=1:0.1:10;
y=0;
for i=1:1:100
    y=y+((-1)*power(-1,i)*sin(i*t)/i);
    subplot(3,4,1:4);
    plot(t,2*y)
    title("Sawtooth Wave")
end
x=0;
for i=1:1:100
    y=y+sin(i*t)/i;
    subplot(3,4,5:8);
    plot(t,y)
    title("Square Wave")
end

z=0;
for i=1:2:100
    z=z+(cos(i*t)/(i*i));
    subplot(3,4,9:12);
    plot(t,(8/(pi*pi))*z)
    title("Triangle Wave")
end

