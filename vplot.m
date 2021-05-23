function vplot(ti,tf)
k=0;
for i=ti:0.1:tf
    k=k+1;
    t(k)=i;
    v(k)=vpiece(t(k));
end
plot(t,v)
end