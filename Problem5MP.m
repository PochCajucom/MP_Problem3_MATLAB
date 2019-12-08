%% Number 5
for n = 0:199
    X = sin(((3*pi)/100)*n);
     b = plot(n,X, '-or', 'markersize',3,'markerfacecolor','b');
    hold on
end

for n = 0:199
    if n == 0
        y1 = (-1.5*(sin(((3*pi)/100)*n)))+(2*(sin(((3*pi)/100)*(n+1))))-(0.5*(sin(((3*pi)/100)*(n+2))))
        plot(n,y1,'-or', 'markersize',3,'markerfacecolor','g')
        hold on
    elseif (n>0) && (n<=198)
        y2 = 0.5*(sin(((3*pi)/100)*(n+1)))-(0.5*(sin(((3*pi)/100)*(n-1))))
        plot(n,y2,'-or', 'markersize',3,'markerfacecolor','r')
        hold on
    elseif n == 199
        y3(n) = (1.5*(sin(((3*pi)/100)*n)))-(2*(sin(((3*pi)/100)*(n-1))))+(0.5*(sin(((3*pi)/100)*(n-2))))
        plot(n,y3,'-or', 'markersize',3,'markerfacecolor','k')
        hold on
    end
end

xlabel 'Number of iterations'
ylabel 'x(n) & y(n)'
grid on
axis tight