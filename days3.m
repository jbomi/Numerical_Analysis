function nd=days3(mo,da,year)
leap=0;
nd=0;
if year/4-fix(year/4)==0, leap=1;end
if year/100-fix(year/100)==0, leap=0;end;
if year/400-fix(year/400)==0, leap=1;end;
for m=1:mo-1
    switch m
        case {1,3,5,7,8,10,12}
            nday=31;
        case {4,6,9,11}
            nday=30;
        case 2
            nday=28+leap;
    end
    nd=nd+nday;
end
nd=nd+da;
end