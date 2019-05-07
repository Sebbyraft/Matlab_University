%%matrice
A= sym('a',[1 3])

%% Esempio 1
syms x
assume(x >= 0)
assumeAlso(x,'integer')
assumptions

sym x
solve(x^2+1==0,x)

syms x a c
g=int(exp(sin(x)),0,10)

g2= exp(-a*x)*sin(c*x)
int_g=int(g2,x)

h=exp(-x)*sin(x)
int_def_h=int(h,x,-pi,pi)
int_def_h_double=double(int_def_h)

%% Esempio 2
syms a b x y
a=3
b=5
fun=@(x,y) a*x.^2+b*y.^2
q=integral2(fun,0,5,-5,0,'Method','iterated','AbsTol',0,'RelTol',1e-10)

%% Esempio 3
lhs= 'x^2+y^2-4'
ezplot(lhs,[-3,3,-2.5,2.5])

ex1='sqrt(4-x^2-y^2)';
figure(1)
ezsurf(ex1,[-2,2,-2,2])

%% 
syms z y
eq=z*x^2+y*x+c
pretty(eq)
[x]=solve(eq,x)

%%
clear x y
syms x y
f=exp(2*x)-3*y
[x]=solve(eq,x)

%%
syms x y z
eq1=2*x-3*y+4*z-5
eq2=y+4*z+x-10
eq3=-2*z+3*x+4*y
[x,y,z]=solve(eq1,eq2,eq3,x,y,z)

x_d=double(x)
y_d=double(y)
z_d=double(z)

%%

close all
clear all
syms x y 
eq1=y-2*exp(x)
eq2=y-3+x^2
[x,y]=solve(eq1,eq2,x,y)
ezplot(eq1)
hold on
ezplot(eq2)