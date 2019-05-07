%% Limitis
clear all; close all; clc

syms x a

%% lim x->0 of sin(a*x)/x

value = limit(sin(a*x)/x, x, 0)


%% lim x->pi/2 of tan(x)
clear all, close all, clc

syms x

figure,
ezplot('tan(x)');

tanhalfpiright = limit(tan(x), x, pi/2, 'right')
tanhalfpileft = limit(tan(x), x, pi/2, 'left')

%% lim x->inf (1+a/x)^x
clear all, close all, clc

syms x a

value = limit(((1+(a/x))^x), x, inf)