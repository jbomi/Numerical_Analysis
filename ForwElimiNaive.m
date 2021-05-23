function [U,b2] = ForwElimiNaive(A,b)
% forwelimi(A,b): naive forward elimination
% [U,b2] = forwelimi(A,b) : forward elimination without pivoting
% input:
% A = coefficient matrix
% b = right hand side vector
% output:
% U = upper triangular matrix
% b2 = right hand side vector
[m,n] = size(A);
if m ~= n, error('Matrix A must be square'); end
if n ~= length(b), error('dimension of A & b must be consistent'); end
nb = n+1;
Aug =[A b];
for j = 1:n-1
for i = j+1:n
factor = Aug(i,j)/Aug(j,j);
Aug(i,j:nb) = -factor*Aug(j,j:nb)+Aug(i,j:nb);
end
end
U=Aug(:,1:n);
b2=Aug(:,nb);
end