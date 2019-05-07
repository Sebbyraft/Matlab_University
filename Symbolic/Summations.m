clear all; close all; clc;

syms k x

symsum(((-1)^k)*(x^(2*k+1))/factorial(2*k+1), k, 0, inf)