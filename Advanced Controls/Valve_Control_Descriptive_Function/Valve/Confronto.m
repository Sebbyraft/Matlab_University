close all;
T_sim = 6000;
figure,
plot(t,  y_3, 'LineWidth', 2); grid on; hold on;
t2 = linspace(3000,T_sim,length(N1_P1));
t2=t2';
plot(t2, N1_P1, 'LineWidth', 2); grid on; hold on;
legend({'Simulazione', 'Comportamento Reale'}, 'FontSize',16);