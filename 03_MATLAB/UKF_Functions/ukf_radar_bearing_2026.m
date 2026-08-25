function [z, bounds] = ukf_radar_bearing_2026(x)
px = x(1);
py = x(2);
z = atan2(py, px);
bounds = [-pi pi];
end