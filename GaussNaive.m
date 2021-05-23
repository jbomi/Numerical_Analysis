function x = GaussNaive(A,b)
% GaussNaive (A,b): naive Gauss elimination
% x = GaussNaive(A,b) : Gauss elimination without pivoting
% input:
% A = coefficient matrix
% b = right hand side vector
% output:
% x = solution vector
% naive forward elimination
[U,b2] = ForwElimiNaive(A,b);
% back substitution
x = BackSub(U,b2);
end