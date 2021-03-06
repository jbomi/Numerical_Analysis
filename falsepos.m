function [root,ea,iter]=falsepos(func,xl,xu,es,maxit,varargin)
% falsepos: root location zeroes
% [root,ea,iter]=falsepos(func,xl,xu,es,maxit,p1,p2,...):
% uses false position to find the root of func
% input:
% func = name of function
% xl, xu = lower and upper guesses
% es = desired relative error (default = 0.0001%)
% maxit = maximum allowable iterations (default = 50)
% p1,p2,... = additional parameters used by function
% output:
% root = real root
% ea = approximate relative error (%)
% iter = number of iterations
if nargin<3,error('at least 3 input arguments required'),end
test = func(xl,varargin{:})*func(xu,varargin{:});
if test>0,error('no sign change'),end
% if necessary, assign default values
if nargin<4 || isempty(es), es=0.0001;end
if nargin<5 || isempty(maxit), maxit=50;end
iter = 0; xr = xl;
while (1)
    iter = iter + 1;
    xrold = xr;
    fl=func(xl,varargin{:});fu=func(xu,varargin{:});
    xr = xu - fu*(xl - xu)/(fl - fu);
    if xr ~= 0,ea = abs((xr - xrold)/xr) * 100;end
    test = fl*func(xr,varargin{:});
    if test < 0
        xu = xr;
    elseif test > 0
        xl = xr;
    else
        ea = 0;
    end
    if ea <= es || iter >= maxit,break,end
end
root = xr;
end