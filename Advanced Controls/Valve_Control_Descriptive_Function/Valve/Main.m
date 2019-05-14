clear all; close all; clc;

%%----------------------------- Parameters ------------------------------%%

pr = input('Do you want to update the simulation parameters [1/0]? ');

if pr == 1
    Parameters2;
else 
    Parameters;
end

%%-------------------------- Controller design --------------------------%%
clc;
cd = input('Do you want to design a new controller [1/0]? ');

if cd == 1
    Controller2;
    clc;
    k_i = input('New ki: ');
else
    Controller;
end

%%------------------------------- Nyquist -------------------------------%%

Plot_Nyquist;

%%----------------------------- Simulation ------------------------------%%

sim(model);
Plot_Response;
