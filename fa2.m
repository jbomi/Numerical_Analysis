function fav=fa2(a,b,n)
t=linspace(a,b,n);
y=freefallvel(9.81,68.1,0.25,t);
fav=mean(y);
end