function v=rocketvel(t)
if 0<=t && t<=8
    v=10*t^2-5*t;
elseif 8<=t && t<=16
    v=624-5*t;
elseif 16<=t && t<=26
    v=36*t+12*(t-16)^2;
elseif t>=26
    v=2136*exp((-0.1)*(t-26));
else 
    v=0;
end
end
% 21811957 jeongbomi

