x =[1,1,1,1,-1,-1,-1,-1,1,1,1,1,-1,-1,-1,-1,1,1,1,1,-1,-1,-1,-1,1,1,1,1,-1,-1,-1,-1,1,1,1,1,-1,-1,-1,-1];
y = filter(b1,a1,x);
n = 0:length(x)-1;
figure;
stem(n,x,'blue','Marker','none')
axis([-1 40 -2 2])
grid on;
title('input')
xlabel('time samples, n')
ylabel('x(n)')

figure;
stem(n,y,'blue','Marker','none')
axis([-1 40 -2 2])
grid on;
title('output')
xlabel('time samples, n')
ylabel('y(n)')