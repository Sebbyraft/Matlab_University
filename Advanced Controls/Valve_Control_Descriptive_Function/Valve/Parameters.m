%%-------------------------- Simulation params --------------------------%%

% Simulink settings
simulation_time = 5000;             % s
sample_time = 0.01;                 % s

% Transport delay
time_delay = 10;                    % s

% Input (Step function)
step_time = simulation_time/2;      % s
initial_step_value = 0;             % bar
final_step_value = 3;               % bar

% Simulator reference
model = 'simulator';

%%-------------------------- Controller params --------------------------%%

k_i = 3;
PI_initial_condition = 0;

%%-------------------------- Conversion params --------------------------%%

c_1 = 0.000416568624689888;
c_2 = 0.341159914008612;

%%---------------------------- Model params -----------------------------%%

% Relè
switch_on_point = 1;
output_when_on = 78;

% Integrator
model_initial_condition = 0;