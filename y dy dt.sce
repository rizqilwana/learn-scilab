clear;clc;clf();
function ydot=f(t, y, a)
ydot(1)=y(2);
ydot(2)=-3*y(2)+a*y(1);;
endfunction

y0=[1;34];
t0=0;
a= 10;
t=0:0.05:5;
a=8;
y=ode(y0,t0,t,f);
plot(t',[y(2,:)' y(1,:)']);
xgrid();

a=gca();a.x_label.text = "$time$";a.x_label.font_size = 5;
ylabel("$f(t,y)$", "FontSize",5);

title('$solution\ of \ \frac{d^2y}{dt^2}+3\frac{dy}{dt}-10y=0$','fontsize',4);
legend(["$\LARGE{y}$" "$\LARGE{dy/dt}$"],2)
