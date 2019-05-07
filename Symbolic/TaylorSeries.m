clear all, close all, clc

syms x

tay_expx = taylor(exp(x), x, 'ExpansionPoint',3, 'Order', 5)

figure,
ezplot(exp(x), [-20 20]); hold on;
ezplot(tay_expx, [-20 20]);
legend({'Real', 'Taylor'});