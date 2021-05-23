function nd = test_d(mo, da, year)
% input: 
%   mo - the month (1-12)
%   da - the day (1-31)
%   year - the year 
% output:
%   nd - number of elapsed days from the start of the year

% determining whether the year is leap year
if mod(year,4)
    leap = 0;
elseif mod(year,100)
    leap = 1;
elseif mod(year, 400)
    leap = 0;
else 
    leap = 1;
end

months = [31 28 31 30 31 30 31 31 30 31 30 31];
if leap 
    months(2) = 29;
end

switch mo
    case  1
        nd = da;
    otherwise
        nd = sum(months(1: mo-1))+da;
end

end