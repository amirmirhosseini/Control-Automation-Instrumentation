clc; clear; close all;
syms x y;
M = readmatrix('data_A.csv');
M;
xs = M(:,1);
ys = M(:,2);
%%
% 9th order
phi_n = zeros(1,10);
phi = zeros(200,10);
r = 1;
for j = 1:200
    for i = 1:10
        phi_n(1,i) = (xs(j))^(i-1);
    end
    phi(j,:) = phi_n;
end

phi_t = transpose(phi);
theta = (inv(phi_t*phi))*phi_t*ys;
theta;
fxs = -1:0.01:1;
syms x;
fys = 0;
for i = 1:10
    fys = fys+theta(i)*fxs.^(i-1);
end
figure;
plot(fxs,fys);
hold on
plot(xs,ys,'.');
%%
% 3rd order
phi_n = zeros(1,4);
phi = zeros(200,4);
r = 1;
for j = 1:200
    for i = 1:4
        phi_n(1,i) = (xs(j))^(i-1);
    end
    phi(j,:) = phi_n;
end

phi_t = transpose(phi);
theta = (inv(phi_t*phi))*phi_t*ys;
theta;
fxs = -1:0.01:1;
syms x;
fys = 0;
for i = 1:4
    fys = fys+theta(i)*fxs.^(i-1);
end
figure;
plot(fxs,fys);
hold on
plot(xs,ys,'.');
%%
% 1st order
phi_n = zeros(1,2);
phi = zeros(200,2);
r = 1;
for j = 1:200
    for i = 1:2
        phi_n(1,i) = (xs(j))^(i-1);
    end
    phi(j,:) = phi_n;
end

phi_t = transpose(phi);
theta = (inv(phi_t*phi))*phi_t*ys;
theta;
fxs = -1:0.01:1;
syms x;
fys = 0;
for i = 1:2
    fys = fys+theta(i)*fxs.^(i-1);
end
figure;
plot(fxs,fys);
hold on
plot(xs,ys,'.');
