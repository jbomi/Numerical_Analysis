function sinfunc(x,term)
sinx=0;
e=0;
truv=sin(x);
for t=1:term
    sinx=sinx+((-1)^(t-1))*(x^(2*t-1))/factorial(2*t-1);
    e=((truv-sinx)/truv)*100;
    fprintf(' term\t series approximation\t true value\t error\n');
    fprintf('\t%d\t\t %10.4f\t\t  %10.4f\t %10.4f\n',t,sinx,truv,e);
end
end
% 21811957 jeongbomi hw_10

