function fav=fa3(f,a,b,n)
t=linspace(a,b,n);
y=f(t);
fav=mean(y);
end