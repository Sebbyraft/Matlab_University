%% Feedback delay
Time_Delay = input("Feedback delay [s]: ");

%% Simulink Parameters
SAMPLE_TIME = 0.01;
T_sim = input("Simulation time [s]: ");

%% Model Parameters
SWITCH_POINT = 1;
OUTPUT_WHEN_ON = 78;
MODEL_INITIAL_CONDITION = 0;

%% Forcing input (Step Function)
Step_Time = T_sim/2;

Initial_Step_Value = input("Initial Step Value [bar]: ");
Final_Step_Value = input("Final Step Value [bar]: ");

% Valve conversion costants
CONVERSION_COSTANT_1 = 0.341159914008612;
CONVERSION_COSTANT_2 = 0.000416568624689888;

%% Controller 
k_p = 3;
k_i = 0;
CONTROLLER_INITIAL_CONDITION = 0;