function favg=faverage(f,a,b,n)
% input: f= function to be evaluated
x=linspace(a,b,n);
y=f(x)
favg=mean(y);
end

