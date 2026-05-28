clear; clc; close all;
s = tf('s');

GH1 = (s+1)*(s+10) / (s^3);
GH2 = 5*(s+1) / ( s^2*(s^2 + s + 3) );
GH3 = (1-s/2) /((1+s/2)*(s));

GH = {GH1, GH2, GH3};

for i = 1:3
    figure;
    title('Q4 - Nyquist of GH_%d',i)
    nyquist(GH{i});
    grid on;
    hold on;
    plot(-1, 0, 'kx', 'MarkerSize', 10, 'LineWidth', 2); 
    title(['Nyquist Plot of System ', num2str(i)]);

end


