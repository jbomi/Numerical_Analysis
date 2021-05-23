function [U,b2] = ForwElimiPivot(A,b)
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
% partial pivoting
[big, k] = max(abs(Aug(j:n,j)));
% [y,i]= max(x) where y is the largest element in the
% vector x, and i is the index corresponding that element
ipr = k + j -1;
if ipr ~= j
Aug([j,ipr],:) = Aug([ipr,j],:); % pivot the row
% A([i,j],k)[A(i,k);A(j,k)] column vector
% A(i,[j,k])[A(i,j) A(i,k)] row vector
end
for i = j+1:n
factor = Aug(i,j)/Aug(j,j);
Aug(i,j:nb) = -factor*Aug(j,j:nb)+Aug(i,j:nb);
end
end
U=Aug(:,1:n);b2=Aug(:,nb);
end