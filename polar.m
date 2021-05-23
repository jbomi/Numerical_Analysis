function [r,th]=polar(x,y)
r=sqrt(x^2+y^2);
if x>0
    th=atan(y/x);
elseif x<0
    if y>0
        th=atan(y/x)+pi;
    elseif y<0
        th=atan(y/x)-pi;
    else
        th=pi
    end
else
    if y>0
        th=pi/2;
    elseif y<0
        th=-pi/2;
    else 
        th=0;
    end
end
th=th*180/pi;
end

        
        