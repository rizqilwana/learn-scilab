clear;clc;
A=[0 1; -1 -2];
B=[1;-1];
C=[1 0];
CM=[B A*B A^2*B];
if rank(CM)==rank(A) then
disp("系統可控制");
else
disp("系統不可控制");
end
OM=[C; C*A; C*A^2];
n=rank(OM);
if n==rank(A) then
disp("系統可觀察");
else
disp("系統不可觀察");
end
