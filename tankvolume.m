function Vol=tankvolume(R,d)
if d<R
    r=d;
    Vol=pi*r^2*d/3;
elseif d<=3*R
    V1=pi*R^2*R/3;
    V2=pi*R^2*(d-R);
    Vol=V1+V2;
else
    Vol='Overtop';
end
end