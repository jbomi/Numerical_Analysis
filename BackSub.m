function x = BackSub(U,b)
% backsub(U,b): back substitution
% x = backsub(U,b) : back substitution
% input:
% U = upper triangular matrix
% b = right hand side vector
% output:
% x = solution vector
n=length(b);
x = zeros(n,1);
x(n) = b(n)/U(n,n);
for j = n-1:-1:1
x(j) = (b(j)-U(j,j+1:n)*x(j+1:n))/U(j,j);
end
end
