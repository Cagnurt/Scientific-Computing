%%
clc; clear; close all;

%%
f = @(x)sqrt(log(1+sin(x^2)));

h = 0.000001;
a = 1.7;

%% a. First order forward diff
df_ileri = ( f(a + h) - f(a) ) / h

disp('-------------------------------------------');
%% b. First order backward diff
df_geri = ( f(a) - f(a-h) ) / h

disp('-------------------------------------------');
%% c. First order central diff
df_merkezi = ( f(a+h) - f(a-h) ) / (2*h)

disp('-------------------------------------------');
%% extra. First order analytical derivative
df_analitik = imag( f(a+h*i) ) / h

%% d. Second order 3 point forward diff
df2_ileri_3 = ( f(a + 2*h) - 2*f(a + h) + f(a) ) / (h^2)

disp('-------------------------------------------');
%% d. Second order 5 point forward diff
df2_ileri_5 = ( -3*f(a + 4*h) + 16*f(a + 3*h) - 36*f(a + 2*h) + 48*f(a + h) - 25*f(a)) / (12*(h^2))

disp('-------------------------------------------');
%% d. Second order 5 point central diff
df2_ileri_5 = ( -1*f(a + 2*h) + 16*f(a + h) - 30*f(a) + 16*f(a - h) -1*f(a - 2*h)) / (12*(h^2))

disp('-------------------------------------------');


