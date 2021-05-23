function [root,ea,iter]=bisect(func,xl,xu,es,maxit,varargin)
if nargin<3,error('at least 3 input arguments required'),end
test=func(xl,varargin{:})*func(xu,varargin{:});
if test > 0, error('no sing change'),end
% if necessary, assing default value
if nargin<4 || isempty(es), es=0.0001;end
if nargin<5 || isempty(maxit), maxit=50;end
% Bisection method
iter=0;xr=xl;
while(1)
    iter=iter+1;
    xrold=xr;
    xr=(xl+xu)/2;
    if xr ~=0, ea=abs((xr-xrold)/xr)*100;end
    test=func(xl,varargin{:})*func(xr,varargin{:});
    if test <0
        xu=xr;
    elseif test>0
        xl=xr;
    else
        ea=0; % case with test=0, i.e., func(xr,varargin{:})=0
    end
    if ea <=es || iter >=maxit,break,end
end
root=xr;
end
    