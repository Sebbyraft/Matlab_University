%%------------------------- Descriptive function ------------------------%%

D = [-(pi)/(4*output_when_on) -(pi)/(4*output_when_on)];
x = [-1 0];
 
%%-------------------------------- Model --------------------------------%%

G = tf(1,[1 0]);

%%-------------------------- Controller example -------------------------%%

C = tf(3,[1 0]);

%%-------------------------------- Delay --------------------------------%%

H = tf([time_delay/2 time_delay 2],1);

%%-------------------------------- Input --------------------------------%%

reference_value = 3;
F = 2*reference_value;