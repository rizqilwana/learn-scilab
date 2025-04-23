clear;clc;clf;
s=%s;
tf1=syslin('c',1/((s^2)+(0.8)*(s)+(16)));
x=0.5;
y=0.2;
nyquist([tf1],0.5,100,["tf1"]);
hallchart(colors=color('gold')*[1 1]);
leg = gca().children(1);
set(leg,"legend_location","in_upper_left");
title('$Nyquist Plot\ of\ G(s)=\frac{1}{s^2+0.8s+16}$','fontsize',3)

