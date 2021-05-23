function [s,e]=squartroot(a,eps)
ind=1;
if a~=0
    if a<0
        a=-a;ind=1j;
    end
    x0=a/2;
    while (1)
        x1=(x0+a/x0)/2;
        e=abs((x1-x0)/x1);
        if e<eps, break, end
        x0=x1;
    end
    s=x1;
else
    s=0;
end
s=s*ind;
end
