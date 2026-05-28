%%
clc; clear; close all;
s = tf('s');
G = 1/(s^2+0.2*s+5);
G_CL = 1/(s^2+0.2*s+6);
pole(G_CL)
figure;
step(G_CL);
pole(G)
%%
G_C = (s+6.5)^2;
G_OL = G_C*G;
figure;
rlocus(G_OL);
%%
G_OL = 0.421*G_OL;
G_CL = G_OL/(1+G_OL);
figure;
step(G_CL);