function favg=faverage2(f,a,b,n,varargin)
% favg=faverage2(f,a,b,n,varagin)
%       :compute the average value of function over a range
% input: varargin=additional argument(s) of f
x=linspace(a,b,n)
y=f(x,varargin{:});
favg=mean(y);
end

