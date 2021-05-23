function x = GaussPivot(A,b)
% GaussPivot(A,b): Gauss elimination pivoting
% x = GaussPivot(A,b) : Gauss elimination with pivoting
% input:
% A = coefficient matrix
% b = right hand side vector
% output:
% x = solution vector
% forward elimination with pivoting
[U,b2] = ForwElimiPivot(A,b);
% back substitution
x = BackSub(U,b2);
end