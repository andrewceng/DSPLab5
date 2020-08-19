load X
n = 0:127;
x1 = ifft((X));
xEstimated_1 =@(n) (1/N).*(X(K(1)).*exp(j*2*pi*k1.*n./N)+X(K(2)).*exp(j*2*pi*k3.*n./N));
xEstimated_2 =@(n) (1/N).*(X(K(3)).*exp(j*2*pi*k2.*n./N)+X(K(4)).*exp(j*2*pi*k4.*n./N));
xTotalEstimated =@(n) xEstimated_1(n) + xEstimated_2(n);

figure;
plot(n,xTotalEstimated(n),'b-');
axis([0 128 -3 3]);
grid on;
title('Reconstructed Signal');
xlabel('time samples, n');
ylabel('x(n)');
legend('estimated','true','Location','northeast');
hold on;
plot(n, x1,'r:');