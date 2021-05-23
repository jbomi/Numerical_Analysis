function average_dtemp(strt_mont,fini_mont)
city=input('Enter city name: ','s')
switch city
    case 'Seoul'
        Tm=12.5;Tp=17.0;
    case 'Busan'
        Tm=14.7;Tp=18.9;
    case 'Daegu'
        Tm=14.1;Tp=19.5;
    case 'Gwangju'
        Tm=13.8;Tp=19.1;
    case 'Daejeon'
        Tm=13.0;Tp=18.4;
    otherwise 
        disp('Enter again')
end
t=strt_mont:fini_mont;
T=Tm+(Tp-Tm)*cos((2*pi/365).*(t-205));
averge_dtp=mean(T);
disp(averge_dtp)
end
% 21811957 정보미 hw_7
