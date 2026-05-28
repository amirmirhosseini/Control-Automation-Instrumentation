clc; clear; close all;
C=[1 0 0];
A=[-2 3 1; 0 -1 2; 0 0 -2;];
B=[-1; 0; 1];
syms s;
U = eye(3);
G = C*(inv(s*U-A))*B;
disp(G);