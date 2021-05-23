function v = velocity(t)
%ROCKET VELOCITY computes the velocity of the rocket according to the given
%piecewise function
% input:
%   t - time at which velocity is computed
if 0<=t && t<=8
    v = 10*t^2-5*t;
elseif 8<=t && t<=16
    v = 624-3*t;
elseif 16<=t && t<=26
    v = 36*t +12*(t-16)^2;
elseif t>26
    v = 2136*exp(-0.1*(t-26));
else
    v = 0;
end

end
