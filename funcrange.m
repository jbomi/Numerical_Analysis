function fr=funcrange(f,a,b,n,varargin)
x=linspace(a,b,n);
y=f(x,varargin{:});
fr=max(y)-min(y);
fplot(f,[a b],varargin{:})
end