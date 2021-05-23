function fav=fa4(f,a,b,n,varargin)
t=linspace(a,b,n);
y=f(t,varargin{:});
fav=mean(y);
end
