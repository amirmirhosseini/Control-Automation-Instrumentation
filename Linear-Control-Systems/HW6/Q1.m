clc; clear; close all;
% الف
syms s;
s = tf('s');
k_c = 0.242;
G = k_c*10/(s*(s+1));
G_C = (s+0.1)/(s+0.5);
figure;
margin(G);
grid("on");
hold on;
margin(G_C);
hold on;
margin(series(G,G_C));
legend();
%%
% ب
G = 10/(s*(s+4));
G_C = (s+0.2)/(s+0.01);
figure;
rlocus(G);
title('without G_c');
figure;
rlocus(series(G,G_C));
title('with G_c')
%%
figure;
bode(s*G);
hold on;
bode(s*series(G,G_C));
legend();
%%
figure;
step(series(G,G_C)*s);
hold on
step(G*s);
%%
% پ
G_openloop = 1/((s^2)*(0.1*s+1));
k_c=2.24;
G_C = (s+1.78);
figure;
rlocus(G_openloop);
figure;
rlocus(G_C*G_openloop);
%%
figure;
G_closedloop = (k_c*G_C/s^2)/(1+k_c*G_C/((s^2)*(0.1*s+1)));
step(G_closedloop);
%%
G_C1 = s+3.88;
k_c = 0.422;
G_C2 = s+3.88;
G_C = G_C2*G_C1;
% G_1 = (G_C1/s^2)/(1+G_C1/((s^2)*(0.1*s+1)));
% G_openloop = G_C2 * G_1;
G_closedloop = (k_c*G_C)/(s^2+k_c*G_C/(0.1*s+1));
G_openloop = G_C/((0.1*s+1)*(s^2));
%G_closedloop = G_openloop/(1+G_openloop);
figure;
rlocus(G_openloop);
figure;
step(G_closedloop);
%%
pole(G_closedloop)
%% ت
G = 40/(s*(s+2)*(s+8));
figure;
margin(G);
G_C=(0.61*s+1)/(0.3545*s+1);
hold on;
margin(G_C);
hold on;
margin(series(G,G_C));
%%
figure;
margin(series(G,G_C));
%% ث
G=1/(s*(s+0.6)*(s+2));
figure;
margin(G);
G_C1 = (2.286*s+1)/(0.595*s+1);
margin(series(G_C1,G));
G_C2 = 18*(5.88*s+1)/(31.6*5.88*s+1);
G_C = G_C1 * G_C2;
margin(series(G_C,G))