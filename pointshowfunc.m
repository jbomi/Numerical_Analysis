function [mini,maxi]= pointshowfunc(func,strt,fini)
term=strt:fini;
result=func(term);

maxi=max(result);
mini=min(result);

plot(term,result);hold on;
plot(maxi,'r+','markersize',30);hold on;
plot(mini,'g+','markersize',30);hold on;
end
% 21811957 jeongbomi hw_12


