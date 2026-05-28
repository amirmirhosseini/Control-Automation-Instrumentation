%% قسمت ب شناسایی تابع تبدیل و نمودار بود
clear; clc; close all;

w = logspace(-1, 3, 30);       
Nper = 12;                    
Nspp = 200;                    
nb = 3;   % مرتبه صورت
na = 3;   % مرتبه مخرج

for idx = 1:4
    fprintf('System index: %d\n ' , idx);

    Hjw = zeros(size(w));   

    for k = 1:numel(w)
        wk = w(k);
        Ts = (2*pi/wk)/Nspp;
        t  = 0:Ts:(Nper*(2*pi/wk));
        u  = sin(wk*t);

        y = sys_b(u, t, idx);

        Tper = 2*pi/wk;
        t0 = t(end) - 4*Tper;
        ii = find(t >= t0);

        tt = t(ii).';
        uu = u(ii).';
        yy = y(ii).';
        yy = yy(:);          

        X = [sin(wk*tt) cos(wk*tt)];
        ab = X \ yy;                      % (2x1)
        a = ab(1); b = ab(2);

        Ay = sqrt(a^2 + b^2);
        phiy = atan2(b, a);              

        Hjw(k) = (Ay) * exp(1j*phiy);
    end

    [b_estimated, a_estimated] = invfreqs(Hjw, w, nb, na);   
    G_estimated = tf(b_estimated, a_estimated);

    [mag_fit, ph_fit] = bode(G_estimated, w);
    mag_fit = squeeze(mag_fit);
    ph_fit  = squeeze(ph_fit);

    mag_est = abs(Hjw);
    ph_est  = angle(Hjw) * 180/pi;

    figure('Name', sprintf('System %d - TF Estimation', idx), 'Color', 'w');
    subplot(2,1,1);
    semilogx(w, 20*log10(mag_est),'-o', 'LineWidth', 2, 'Color', [0.8, 0.2, 0]); hold on;  
    semilogx(w, 20*log10(mag_fit), '--', 'LineWidth', 2, 'Color', [0, 0.6, 0]);  
    grid on; xlabel('Frequency [rad/s]', 'FontSize', 12);
    ylabel('Magnitude [dB]', 'FontSize', 12);
    legend('Estimated', 'Fitted TF', 'Location', 'Best');
    title(sprintf('Magnitude - System %d', idx), 'FontSize', 14, 'FontWeight', 'bold');

    subplot(2,1,2);
    semilogx(w, ph_est,'-o', 'LineWidth', 2, 'Color', [0, 0, 0.8]); hold on;  
    semilogx(w, ph_fit, '--', 'LineWidth', 2, 'Color', [0.8, 0, 0]); 
    grid on; xlabel('Frequency [rad/s]', 'FontSize', 12);
    ylabel('Phase [°]', 'FontSize', 12);
    legend('Estimated', 'Fitted TF', 'Location', 'Best');
    title(sprintf('Phase - System %d', idx), 'FontSize', 14, 'FontWeight', 'bold');

    disp('Estimated Transfer Function:');
    G_estimated
end
