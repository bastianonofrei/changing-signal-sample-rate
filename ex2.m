f=10;
fs=500;
N=fs;
t=0:1/fs:(N-1)/fs;
x=sin(2*pi*f*t);
subplot(4,1,1),plot(x);
y=zeros(1,2000);
y(1:4:2000)=x;
subplot(4,1,2),plot(y);
[b a]=cheby1(5,0.5,0.25);
yfill=filter(b,a,y);
subplot(4,1,3),plot(yfill);
