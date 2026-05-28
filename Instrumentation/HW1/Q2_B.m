clc; clear; close all;

% reading data
M = readmatrix('C:\Users\alimi\Desktop\data_A.csv');
xs = M(:,1);
ys = M(:,2);

N = length(xs);
n = 10;  % degree = 9

% INITIAL VALUES
theta = zeros(n,1);
P = 1e5 * eye(n);   % P(0)=10^5 I

% RUNNING RLS
for k = 1:N
   
    phi = zeros(n,1);
    for i = 1:n
        phi(i) = xs(k)^(i-1);
    end

    % error
    y_hat = phi' * theta;
    e = ys(k) - y_hat;

    % K vector
    denom = 1 + phi' * P * phi;
    K = (P * phi) / denom;

    % updating theta
    theta = theta + K * e;

    % updating P
    P = (P - K * phi' * P);
end

% THETA
disp('FINAL θ VECTOR:');
theta

% PLOT
fxs = linspace(min(xs), max(xs), 300)';
fphi = zeros(length(fxs), n);
for i = 1:n
    fphi(:,i) = fxs.^(i-1);
end

fys = fphi * theta;

figure;
plot(xs, ys, '.', 'MarkerSize', 12); hold on;
plot(fxs, fys);
title('RLS Fit (Degree 9)');
grid on;
