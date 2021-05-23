function v=freefallvel(g,m,cd,t)
% freefallvel: velocity of the free falling body with
% 2nd-order drag
% v=freefallvel(g,m,cd,t) computes the velocity of the free
% falling body with 2nd-order drag
% input: g=acceleration of gravity(m/s^2)
%       t=time(s)
%       m=mass(kg)
%       cd=second order drag coefficient (kg/m)
% output: v=downward velocity (m/s)
v=sqrt(g*m/cd)*tanh(sqrt(g*cd/m)*t);
end

