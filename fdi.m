function f= fdi(E,T)
ef=0.55;
kb=8.617*10^-5;

f=1./(1+exp((E-ef)/(kb*T)));
plot(E,f,'-k')
title('5,100,200,300 degree fermi-dirac')
hold on;
end
% 21811957 정보미