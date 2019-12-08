function A = Problem3MP(n)
X=n(:,1);
Y=n(:,2);
if length(X)>=11
    l=10;
else
    l=length(X)-1;
end
zero=zeros(1,l);
for i=(1:l)
    pf=polyfit(X,Y,i);
    pv=polyval(pf,X);
    zero(i)=norm(Y-pv);
end
[~,I]=min(zero);
coefficient=polyfit(X,Y,i);
disp(coefficient)
    