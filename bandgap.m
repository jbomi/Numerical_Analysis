function ans=bandgap(t)
eg=1.11;alp=4.73*10^(-4);beta=636;egz=1.17;
ans=egz-alp*(t^2)/(t+beta)-eg;
end//21811957 정보미