
clear; clc; close all;
s = tf('s');

G1 = 50 / ((1-0.2*s)*(1+0.01*s));
G2 = 50 / ((1+0.2*s)*(1+0.01*s));
G3 = (224*(1+0.1*s)) / ((1+s)*(1+0.005*s));

G = {G1, G2, G3};

labels = {'H1','H2','H3'};

w = logspace(-2, 4, 2500);

for i = 1:3
    figure;
    bode(G{i}, w);
    grid on;
    title(['Bode Plot of System ', num2str(i)]);
end

