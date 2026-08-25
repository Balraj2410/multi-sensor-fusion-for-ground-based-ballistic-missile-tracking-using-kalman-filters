function xk1 = ukf_state_transition_2026(xk)
Ts = 0.05;

F = [1 0 Ts 0;
     0 1 0 Ts;
     0 0 1  0;
     0 0 0  1];

xk1 = F*xk;
end
