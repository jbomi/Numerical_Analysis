function Ta=avgtemp(Tm,Tp,ts,te)
t=ts:te;
T=Tm+(Tp-Tm)*cos(2*pi/365*(t-205));
Ta=mean(T);
end