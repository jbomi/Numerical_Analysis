function [root,ea,iter] = secant(func,xr_1,xr0,es,maxit,varargin)
% secant: Secant root location zeroes
% [root,ea,iter] = secant(func,xrold,xr,es,maxit,p1,p2,...):
% uses secant method to find the root of a func
% input:
% func = name of function
% xr_1, xr0 = initial guesses
% es = desired relative error (default = 0.0001%)
% maxit = maximum allowable iterations (default = 50)
% p1, p2,... = additional parameters used by func
% output:
% root = real root
% ea = approximate relative error (%)
% iter = number of iterations
% if necessary, assign default values
if nargin < 3,error('at least 3 input arguments required'),end
if nargin < 4 || isempty(es),es=0.0001;end
if nargin < 5 || isempty(maxit),maxit=50;end
 % Secant method
iter = 0;
while (1)
    iter = iter + 1;
    xr1 = xr0 - func(xr0, varargin{:})*(xr0 - xr_1)/(func(xr0,varargin{:}) - func(xr_1, varargin{:}));
    if xr1 ~= 0, ea = abs((xr1 - xr0)/xr1) * 100; end
    if ea <= es || iter >= maxit, break, end
    xr_1 = xr0;
    xr0 = xr1;
end
root = xr1;
end