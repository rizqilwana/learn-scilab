clear;clc;clf;
t=0:0.01:4*%pi;
y=[sin(t);cos(t);sin(t)+cos(t)];
plot2d(t',y');
xgrid();
xlabel("$t$", "FontSize",5);
ylabel("$y(t)$", "FontSize",5);
title('$waveforms\ of\ sin(t),\ cos(t)\ and\ sin(t)+cos(t)$','fontsize',4);
legend(["$\large{sin(t)}$" "$\large{cos(t))}$" "$\large{sin(t)+cos(t)}$"] ,1) 
