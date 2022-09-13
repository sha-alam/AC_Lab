clc
close all;

f1=10;
for f=1:50
    x(f)=(1/sqrt(1+(f1/f)^2));
    f2(f)=f;
    subplot(2,1,1);
    plot(f2,x);
    title('pre emphasis waveform');
end



