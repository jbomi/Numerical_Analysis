 function vol=cylinvol(R,d)
if d > 3*R
    error("Overtop")
elseif d <= R
    vol=(1/3)*pi*(R^2)*d;
else
    vol=(1/3)*pi*(R^3)+(R^2)*pi*d;
end
end
% 21811957 jeongbomi hw_5
