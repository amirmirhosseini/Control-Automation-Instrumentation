%% alef
clc; close all; clear;

t = 0:0.1:5;          

data = readtable('Data.csv');

y1 = data.output_1; 
y2 = data.output_2; 
y3 = data.output_3;   
figure;

subplot(3,1,1);
plot(t, y1, 'r-o', 'LineWidth', 1.5);
grid on; ylabel('output\_1');

subplot(3,1,2);
plot(t, y2, 'k--', 'LineWidth', 1.5);
grid on; ylabel('output\_2 (=1.5)');

subplot(3,1,3);
plot(t, y3, 'b-s', 'LineWidth', 1.5);
grid on; ylabel('output\_3');
xlabel('Time (s)');
