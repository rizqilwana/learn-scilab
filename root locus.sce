clear;clc;clf;
s=%s;
num=s^2-4*s+20;
den=s^2+6*s+8;
str=msprintf("num = %s\nden = %s",string(num),pol2str(den));
disp(str);
tf1=syslin('c',num,den);
disp("tf1 = ",tf1);
zeros=clean(roots(num), 1e-5);
poles=clean(roots(den), 1e-5);
disp(msprintf("零點: %d 個",length(zeros)));
if length(zeros)>0 then, disp(zeros), end
disp(msprintf("極點: %d 個",length(poles)));
if length(poles)>0 then, disp(poles), end
positiveCount=0;
negativeCount=0;
imagCount=0;
for i=1:length(poles)
x=real(poles(i));
y=imag(poles(i));
if x==0 && y<>0 then
imagCount=imagCount+1;
elseif x>=0 then
positiveCount=positiveCount+1;
else
negativeCount=negativeCount+1;
end
end
disp(msprintf("左半平面的極點有: %d 個",negativeCount));
disp(msprintf("右半平面的極點有: %d 個",positiveCount));
disp(msprintf("虛軸上的極點有: %d 個",imagCount));
evans(tf1);
sgrid();
xlabel("$\sigma$", "FontSize",5);
ylabel("$j\omega$", "FontSize",5);
title('$root\ locus\ of\ G(s)=\frac{s^2-4s+20}{{s^2+6s+8}$','fontsize',3);

