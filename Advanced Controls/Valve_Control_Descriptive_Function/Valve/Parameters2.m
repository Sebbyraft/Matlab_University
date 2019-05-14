%%-------------------------- Simulation params --------------------------%%

% Simulink settings
simulation_time = input('Simulations time (ex. 5000 [s]): ');         % s
sample_time = input('Simulation time (ex. 0.01 [s]): ');              % s

% Transport delay
time_delay = input('Time delay (ex. 10 [s]): ');                      % s

% Input (Step function)
step_time = input('Step time (ex. 2500 [s]): ');                      % s
initial_step_value = input('Initial step value (ex. 0 [bar]): ');     % bar
final_step_value = input('Final step value (ex. 3 [bar]): ');         % bar

% Simulator reference
model = 'simulator';

%%-------------------------- Controller params --------------------------%%

k_i = input('Ki (ex. 3): ');
PI_initial_condition = input('PI initial condition (ex. 0): ');

%%-------------------------- Conversion params --------------------------%%

c_1 = 0.000416568624689888;
c_2 = 0.341159914008612;

%%---------------------------- Model params -----------------------------%%

% Relè
switch_on_point = 1;
output_when_on = 78;

% Integrator
model_initial_condition = input('Model initial condition (ex. 0): ');