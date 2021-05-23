function favg = favg_freefallvel2(a,b,n)
x=linspace(a,b,n);
y=freefallvel(9.81,68.1,0.25,x);
favg=mean(y);
end

