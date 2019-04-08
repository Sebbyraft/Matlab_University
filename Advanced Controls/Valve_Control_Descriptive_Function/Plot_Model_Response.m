close all; clc;

%% Simulink simulation
model = 'Simulink_Model';
sim(model);

%% Plot

figure;
plot(time, reference_signal, 'LineWidth', 2); hold on;
plot(time, model_output, 'LineWidth', 2); grid on;
legend({'Reference Signal', 'Model output'}, 'FontSize', 16);
xlabel("Time [s]", 'FontSize', 16);
ylabel("Pressure [bar]", 'FontSize', 16);
title("Output Pressure", 'FontSize', 18);

figure;
plot(time, controller_output, 'LineWidth', 2); grid on;
xlabel("Time [s]", 'FontSize', 16);
ylabel("Controller output", 'FontSize', 16);
title("Controller output", 'FontSize', 18);

figure;
plot(time, valve_output, 'LineWidth', 2); grid on;
xlabel("Time [s]", 'FontSize', 16);
ylabel("Valve output", 'FontSize', 16);
title("Valve output", 'FontSize', 18);