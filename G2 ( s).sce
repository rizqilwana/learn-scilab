clear;clc;
s=%s;
G1=syslin('c',5*s+12,s+2);
G2=syslin('c',s,s^2+s+4);
H1=syslin('c',1,1);
H2=syslin('c',3,s+3);

B1=(G1)/.H1;
B2=(G2*B1)/H2;

Tf1=B2;
disp(msprintf("依圖形化簡的轉移函式:T(s)=(%s)/(%s)",pol2str(Tf1.num),pol2str(Tf1.den)));
Tf2=(G2)*(G1/.H1)/(H2);
disp(msprintf("依公式化簡的轉移函式:T(s)=(%s)/(%s)",pol2str(Tf2.num),pol2str(Tf2.den)));
