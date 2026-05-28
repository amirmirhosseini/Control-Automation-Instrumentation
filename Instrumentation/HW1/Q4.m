%% alef
clc; close all; clear;
data = readtable('SensorDataQ4.csv');

x = data.X_mm_;
Vinc = data.V_inc_Volt_;
Vdec = data.V_dec_Volt_;

figure; hold on; grid on;
plot(x, Vinc, 'r', 'LineWidth', 2);
plot(x, Vdec, 'b', 'LineWidth', 2);
xlabel('x (mili-meter)');
ylabel('Voltage');
legend('V_{inc}', 'V_{dec}');
title('Hysteresis curve of sensor');

%% b
dead_zone_indices = find(Vinc == 0);
dead_zone_x = x(dead_zone_indices);

dead_zone_min = min(dead_zone_x);
dead_zone_max = max(dead_zone_x);
dead_zone_length = dead_zone_max - dead_zone_min;

fprintf('Dead Zone Range: %.2f mm to %.2f mm\n', dead_zone_min, dead_zone_max);
fprintf('Dead Zone Length = %.2f mm\n', dead_zone_length);
%% jim
eh = abs(Vinc - Vdec);

[eh_max, idx] = max(eh);
x_at_max = x(idx);

FS = max(Vinc) - min(Vinc);  % 8.4 volt taghriban
eh_percentFS = (eh_max / FS) * 100;

fprintf('Max hysteresis error = %.3f V at x=%.2f mm\n', eh_max, x_at_max);
fprintf('Max hysteresis as %%FS = %.2f %%\n', eh_percentFS);
%% dal
% Zero drift:
V25_zero = 0.4 * 0;
V45_zero = 0.36 * 0 + 0.16;

ZeroDrift = V45_zero - V25_zero;
ZeroDrift_perC = ZeroDrift / (45 - 25);

fprintf('Zero Drift = %.3f V (%.4f V per C)\n', ZeroDrift, ZeroDrift_perC);
% Sensivity drift
S25 = 0.4;
S45 = 0.36;

SensitivityDrift = S45 - S25;
SensitivityDrift_perC = SensitivityDrift / (45 - 25);

fprintf('Sensitivity Drift = %.3f V/mm (%.5f V/mm per C)\n', SensitivityDrift, SensitivityDrift_perC);
