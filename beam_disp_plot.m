function beam_disp_plot(xi,xf)
xx=linspace(xi,xf);
n=length(xx);
for i=1:n
    uy(i)=-5/6*(sing(xx(i),0,4)-sing(xx(i),5,4))+15/6*sing(xx(i),8,3)+75*sing(xx(i),7,2)+57/6*xx(i)^3-238.25*xx(i);
end
plot(xx,uy,'--')
end