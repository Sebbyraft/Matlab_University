clear all, close all, clc

syms x

eq = 'y - sin(x) + 1/2';
ezplot(eq, [-6, 6, -2, 1]);
hold on; eq0 ='0'; ezplot(eq0); hold off;


clear;
x = -4:0.01:4; plot(x, func2(x));
fzero('func2', [2, 3]);

function out = func2(x)
    out = sin(x)-1/2;
end

%% Numerical solution of two or more equations in implicit form

fminsearch('test_func4',[25, 3]);

function out = test_func(guesses)
    x=guesses(1); y=guesses(2);
    
    
    eq1 = 0.5 - (200+3*x+4*y)^2/(20+2*x+3*y)^2/x;
    eq2 = 10 - (20+2*x+3*y)*y/x

    out = eq1^2+eq2^2;
end

