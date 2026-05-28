clear; clc; close all;
s = tf('s');

G1 = 20*(s+2) / ( s*(s^2 + 6*s + 25) );
G2 = 40*(1 - 0.5*s) / ( s*(1+s)*(1+0.1*s) );
G3 = 20 / ( (1+0.2*s)*(1+0.4*s)*(1+s) );
G4 = 2 / ( s^2*(1+0.1*s)*(1+0.4*s) );

G = {G1,G2,G3,G4};

w = logspace(-2, 4, 2500);

for i = 1:4
    figure;
    bode(G{i}, w);
    grid on;
    title(['Bode Plot of System ', num2str(i)]);
end
