A = [1 0 Ts 0;
     0 1 0 Ts;
     0 0 1  0;
     0 0 0  1];

B = zeros(4,1);

% KF measures only [x_radar; y_radar]
C = [1 0 0 0;
     0 1 0 0];

D = zeros(2,1);

sysKF = ss(A,B,C,D,Ts);

x0kf = [2000; 500; -80; 15];
P0kf = diag([100^2 100^2 50^2 50^2]);

Qkf = diag([1 1 5 5]);

% Convert radar polar noise into approx Cartesian noise
r0 = 4000; % typical range (change if your target is far different)
sigma_xy = sqrt( sigma_r^2 + (r0*sigma_th_radar)^2 );

Rkf = diag([sigma_xy^2 sigma_xy^2]);
