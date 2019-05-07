syms x a b c

f = exp(-a*x)*x^(3*b)*sin(c*x);
diff_f = diff(f, x);

%% Derivata
diff_f_simp = simplify(diff_f);
pretty(diff_f_simp)

%% Derivata seconda

diff2_f_simp = simplify(diff(f, x, 2));
pretty(diff2_f_simp)