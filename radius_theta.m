function radius_theta(x,y)
r=sqrt(x^2+y^2);

if x<0 && y>0
    theta=atand(y/x)+pi;
elseif x<0 && y<0
    theta=atand(y/x)-pi;
elseif x<0 && y==0
    theta=pi;
elseif x==0 && y>0
    theta=pi/2;
elseif x==0 && y<0
    theta=-pi/2;
elseif x==0 && y==0
    theta=0;
else
    fprintf('only print radius %2.2d\t',r)
    error('Enter again')
end

fprintf('\n');
fprintf('\tx\t y\t r\t\t  theta\t\n');
fprintf('\t%d\t %d\t %2.2f\t %3.2f degree\n',x,y,r,theta);
end
% 21811957 정보미 hw_8
