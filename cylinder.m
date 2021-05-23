function cylinder (r,L,plot_title)
% volumn of horizontal cylinder
% input:
% r=radius
% L=length
% plot_title=string holding plot title
h=linspace(0,2*r);
V=(r^2*acos((r-h)/r)-(r-h).*sqrt(2*r*h-h.^2))*L;
plot(h,V);title(plot_title)
end

