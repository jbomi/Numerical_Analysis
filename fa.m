function fav=fa(a,b,n)
t=linspace(a,b,n);
g=9.81;m=68.1;cd=0.25;
vel=sqrt(g*m/cd).*tanh(sqrt(g*cd/m)*t);
fav=mean(vel);
end