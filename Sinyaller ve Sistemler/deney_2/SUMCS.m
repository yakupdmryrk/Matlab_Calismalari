function[xs]= SUMCS(t,A,omega);
M = length(A);
xs = 0;
for i = 1:M
    xs = xs + A(i)*exp(j*omega(i)*t);
end