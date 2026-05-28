clc; clear; close all;

% Load data
train = readmatrix('data_B_train.csv');
test  = readmatrix('data_B_test.csv');

xs_train = train(:,1);
ys_train = train(:,2);

xs_test = test(:,1);
ys_test = test(:,2);

% initial values and settings (we set max_degree to 12 to stop the loop
% eventually)
max_degree = 12;
rmse_train = zeros(max_degree,1);
rmse_test  = zeros(max_degree,1);

% running the loop
for d = 1:max_degree
    
    Phi = zeros(length(xs_train), d+1);
    for j = 1:length(xs_train)
        for i = 1:(d+1)
            Phi(j,i) = xs_train(j)^(i-1);
        end
    end
    
    % LS solution
    theta = (Phi' * Phi) \ (Phi' * ys_train);
    
    % Prediction on train data
    y_pred_train = Phi * theta;
    rmse_train(d) = sqrt(mean((ys_train - y_pred_train).^2));
    
    % building Phi matrix for test data
    Phi_test = zeros(length(xs_test), d+1);
    for j = 1:length(xs_test)
        for i = 1:(d+1)
            Phi_test(j,i) = xs_test(j)^(i-1);
        end
    end
    
    % Prediction on test data
    y_pred_test = Phi_test * theta;
    rmse_test(d) = sqrt(mean((ys_test - y_pred_test).^2));
    
end

%% Find best degree (based on test data's error)
[best_rmse, best_degree] = min(rmse_test);

disp(['Best Degree = ', num2str(best_degree)])
disp(['RMSE (test) = ', num2str(best_rmse)])

%% Plot RMSE
figure;
plot(1:max_degree, rmse_train,'-o','LineWidth',2); hold on;
plot(1:max_degree, rmse_test ,'-o','LineWidth',2);
xlabel('Polynomial degree'); ylabel('RMSE');
legend('Train error','Test error');
grid on; title('Model selection with LS');

%% Plotting the final model (best degree)
d = best_degree;

Phi = zeros(length(xs_train), d+1);
for j = 1:length(xs_train)
    for i = 1:(d+1)
        Phi(j,i) = xs_train(j)^(i-1);
    end
end
theta = (Phi' * Phi) \ (Phi' * ys_train);

fx = -1:0.01:1;
fy = zeros(size(fx));

for i = 1:(d+1)
    fy = fy + theta(i)*fx.^(i-1);
end

figure;
plot(fx, fy, 'LineWidth',2 ); hold on;
plot(xs_train, ys_train, 'ro'); 
plot(xs_test, ys_test, 'bo'); 
legend('Fitted model','Train','Test');
title(['Final polynomial model']);
grid on;
