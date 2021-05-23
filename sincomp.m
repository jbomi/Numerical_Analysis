function sincomp(x,n)
i=1;
ser=0;
tru=sin(x);
fprintf('\n order \t true value \t approximation \t error \n');
while (1)
if i>n,break,end
ser=ser+(-1)^(i-1)*x^(2*i-1)/factorial(2*i-1);
er=(tru-ser)/tru*100;
fprintf('%3d \t %11.10f \t %11.10f %12.7f \n',i,tru,ser,er);
i=i+1;
end
end