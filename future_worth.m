function future_worth(P,i,n)
nn=0:n;
F=P*(1+i).^nn;
y=[nn;F];
fprintf('\n')
fprintf('year \t future worth \n');
fprintf('%3d \t %10.2f \n',y);
end

