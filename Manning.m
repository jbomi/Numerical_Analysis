function Manning(A)
U=sqrt(A(:,2))./A(:,1).*(A(:,3).*A(:,4)./(A(:,3)+2*A(:,4))).^(2/3);
A(:,5)=U;
fprintf('\n %5c \t %6c \t %4c \t %4c \t %7c \n','n','S','B','H','U');
fprintf('%6.3f \t %8.4f \t %4.0f \t %4.1f \t %8.4f \n',A');
end