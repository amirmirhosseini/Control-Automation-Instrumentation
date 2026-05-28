%% بخش الف

clear; clc; close all;

Ws = logspace(-1, 3, 40); 
nPeriodsTotal = 30;  
nPeriodsDiscard = 15;
ptsPerPeriod = 200;   
magAll  = zeros(4, numel(Ws));
phAll   = zeros(4, numel(Ws));

for idx = 1:4
    fprintf('checking system %d .', idx);

    for k = 1:numel(Ws)
        w = Ws(k);

        T = 2*pi/w;
        dt = T/ptsPerPeriod;

        tEnd = nPeriodsTotal*T;
        t = (0:dt:tEnd).';              
        u = sin(w*t);          

        y = sys_b(u, t, idx);  % System output

        y = y(:);
        N = min(numel(t), numel(y));
        t = t(1:N);
        u = u(1:N);
        y = y(1:N);

        tSS_start = nPeriodsDiscard*T;
        ssMask = (t >= tSS_start);
        tss = t(ssMask);
        yss = y(ssMask);

        X = [sin(w*tss), cos(w*tss)];   
        ab = X \ yss;                  
        a = ab(1);
        b = ab(2);

        Rout = sqrt(a^2 + b^2);
        phi  = atan2(b, a);      
        Gmag = Rout ;
        Gph  = phi;               

        magAll(idx,k) = Gmag;
        phAll(idx,k)  = Gph;
    end

    phAll(idx,:) = unwrap(phAll(idx,:));  
end

%% نمودار بود
for idx = 1:4
    figure('Name', sprintf('Bode system %d', idx));

    subplot(2,1,1);
    semilogx(Ws, 20*log10(magAll(idx,:)), '-o', 'LineWidth', 1.8, 'Color', [0.6, 0, 0]);
    grid on;
    xlabel('Frequency (w) [rad/s]', 'FontSize', 12);
    ylabel('Magnitude [dB]', 'FontSize', 12);
    title(sprintf('Bode Magnitude system %d', idx), 'FontSize', 14, 'FontWeight', 'bold', 'Color', [0.1, 0.2, 0.8]); 

    subplot(2,1,2);
    semilogx(Ws, rad2deg(phAll(idx,:)),'-o', 'LineWidth', 1.8, 'Color', [0, 0, 0.6]); 
    grid on;
    xlabel('Frequency (w) [rad/s]', 'FontSize', 12);
    ylabel('Phase [degrees]', 'FontSize', 12);
    title(sprintf('Bode Phase system %d', idx), 'FontSize', 14, 'FontWeight', 'bold', 'Color', [0.1, 0.2, 0.8]); 
end
