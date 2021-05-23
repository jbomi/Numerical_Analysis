function [theta,c,cmag]=vector(a,b)
amag=norm(a);
bmag=norm(b);
adotb=dot(a,b);
theta=acos(adotb/amag/bmag)*180/pi;
c=cross(a,b);
cmag=norm(c);
end