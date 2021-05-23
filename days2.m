function nd = days2(mo,da,year)
% mo=the month, da=the day, year=the year
nd=0;leap=0;
if mod(year,4)==0 
    leap=1;
elseif mod(year,100)==0
    leap=0;
elseif mod(year,400)==0
    leap=1;
else 
    leap=0;
end
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

% 21811957 jeongbomi hw_9
