t = [1:1:1000]
x = [t];
y = [t];
g = x*y  %Error using mtimes, Inner matrix dimensions must agree
g = x.*y; %Doðru yazým þekli böyledir.
