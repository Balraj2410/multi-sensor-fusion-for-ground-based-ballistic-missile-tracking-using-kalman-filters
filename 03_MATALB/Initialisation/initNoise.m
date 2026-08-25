Ts = 0.05;

% standard deviations
sigma_r = 10;                % m
sigma_th_radar = 0.5*pi/180; % rad
sigma_th_ir    = 0.3*pi/180; % rad
sigma_th_ac    = 2.0*pi/180; % rad

% variances (used everywhere)
r_range    = sigma_r^2;
r_th_radar = sigma_th_radar^2;
r_th_ir    = sigma_th_ir^2;
r_th_ac    = sigma_th_ac^2;