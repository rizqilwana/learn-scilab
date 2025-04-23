clear;clc;clf;
function ydot=f(t, y)
ydot=10-y
endfunction
y0=0;t0=0;t=0:0.1:2*%pi;
y=ode(y0,t0,t,f);
plot2d(t,y);
a=gca();a.x_label.text = "time";a.y_label.text = "y(t)";
title('$solution\ of \ \dot{y}=10-y$','fontsize',7);
