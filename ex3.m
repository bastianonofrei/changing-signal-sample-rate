f=50;
fs=411;
N=441;
cmmc=lcm(441,480);
t=0:1/fs:(N-1)/fs;
x=sin(2*pi*f*t);
y=zeros(1,cmmc);
y(1:160:cmmc)=x;
[b a] =cheby1(5,0.5,1/160);
yfil=filter(b,a,y);
ydecimate=yfil(1:147:cmmc);
subplot(4,1,1),plot(x),
subplot(4,1,2),plot(y),
subplot(4,1,3),plot(yfil),
subplot(4,1,4),plot(ydecimate)

