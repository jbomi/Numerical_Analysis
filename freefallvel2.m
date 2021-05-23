function v=freefallvel2(g,m,cd,t)
if nargin <4,error('at least 4 input arguments required'),end
v=sqrt(g*m/cd)*tanh(sqrt(g*cd/m)*t);
end
