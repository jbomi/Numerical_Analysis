function x = Tridiag(e, f, g, r)
% Tridiag : Tridiagonal equation solver banded system
% x = Tridiag(e, f, g, r) : Tridiagonal system solver
% input:
% e = subdiagonal vector [0;e2;e3;…;en]
% f = diagonal vector [f1;f2;…;fn]
% g = superdiagonal vector [g1;g2;…;gn-1]
% r = right hand side vector [r1;r2;…rn]
% output
% x = solution vector
n = length(r);
% forward elimination
for i = 2:n
factor = e(i)/f(i-1);
f(i) = -factor*g(i-1)+ f(i);
r(i) = -factor*r(i-1)+ r(i);
end
% back substitution
x = zeros(n,1);
x(n) = r(n)/f(n);
for i = n-1:-1:1
x(i) = (r(i)-g(i)*x(i+1))/f(i);
end
end