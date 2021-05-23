function watervel(n,S,B,H)
U=(sqrt(S)./n).*(B.*H./(B+2*H)).^(2/3);
A=[n;S;B;H;U]';
fprintf('\t\t n \t\t S \t\t B \t\t H \t\t U \n');
fprintf('\t %4.3f \t %5.4f \t %2d \t %2.1f \t %5.5f \n',A');
end
%21811957 jeongbomi hw_6
