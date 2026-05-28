clc; clear; close all;

% reading data
M = readmatrix('C:\Users\alimi\Desktop\data_A.csv');
xs = M(:,1);
ys = M(:,2);
n=10;
theta_RLS = [-0.0186556864299943
6.14285668937994
0.290733366522744
-38.4770036171884
-1.13489440755334
67.7009882060634
1.64532008808357
-48.0882089196443
-0.830431145567471
12.7266526778510];
% theta_RLS = transpose(theta_RLS);

theta_LS = [-0.0196822331368272
6.20070435488596
0.314821533646214
-39.2789201225512
-1.25489293491710
70.6687162745867
1.83862287943232
-52.1497728052691
-0.927746605595268
14.5795781952488];
% theta_LS = transpose(theta_LS);

fxs = linspace(min(xs), max(xs), 300)';

fphi = zeros(length(fxs), n);
for i = 1:n
    fphi(:,i) = fxs.^(i-1);
end

% outputs
fys_RLS = fphi * theta_RLS;
fys_LS  = fphi * theta_LS;

figure
plot(xs, ys, 'k.', 'MarkerSize', 12); hold on
plot(fxs, fys_RLS, 'r', 'LineWidth', 2)
plot(fxs, fys_LS, 'b--', 'LineWidth', 2)

title('LS vs RLS Polynomial Fit (Degree 9)')
legend('Data','RLS','LS')
grid on