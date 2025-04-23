clear;
clc;
clf;
A=[0 4;-2.25 -2]; 
B=[0;3]; 
C=[0.75 0]; 
D=0;
ss1=syslin('c',A,B,C,D);
ssprint(ss1);
tf1=clean(ss2tf(ss1));
disp(tf1);
t=0:0.05:5;
ss1step=csim('ste',t,ss1)
plot2d(t,ss1step,5)
xgrid(); xlabel("$time$", "FontSize",5); ylabel("$y(t)$", "FontSize",5);
title('$step\ response\ of\ G(s)=\frac{9}{s^2+2s+9}\ using\ state-space\ system$','fontsize',4);
