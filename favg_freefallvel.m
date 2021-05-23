function favg = favg_freefallvel(a,b,n)
% favg=favg_freefallvel: compute the average value of
%      function of freefallvel over a range
% input: a=lower bound of range
%        b=upper bound of range
%        n=number of iintervals
% output: favg=average value of function
x=linspace(a,b,n);
g=9.81;m=68.1;cd=0.25;
y=sqrt(g*m/cd)*tanh(sqrt(g*cd/m)*x);
% velocity of freefall body with m68.1 kg, cd=0.25 kg/m
favg=mean(y);
end

