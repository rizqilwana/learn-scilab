clear;clc;
t=0:0.01:4*%pi;
y1=sin(t);
y2=cos(t);
y3=sin(t)+cos(t);

plot2d(t',y1',1);
plot2d(t',y2',3);
plot2d(t',y3',5);

