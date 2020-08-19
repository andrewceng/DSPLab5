S =@(w) (1-exp(-5*j.*w)).^2./(1-exp(-j.*w));
w = linspace(0,2*pi,201);
sw = @(w)((1 - exp(-5.*i.*w)).^2)./(1 - exp(-i.*w));
sw_Abs = abs(sw(w));
figure();
sw_Abs(1) = 0;
plot(w./(pi),sw_Abs,'blue')
grid on;
title('DTFT and DFT')
xlabel('w/pi')
ylabel('|S(w)|')
axis([0 2 0 8])
k = 0:9
wk = (2.*pi.*k)./10;
sk = 2.*((1-(-1).^k)./(1-exp((-i.*pi.*k)./5)))
hold on
sk(1) = 0;
plot(wk./pi,abs(sk),'r.','markers',14);
legend('DTFT','DFT')


w = linspace(0,2*pi,201);
sw = @(w)((1 - exp(-5.*i.*w)).^2)./(1 - exp(-i.*w));
k1 = (10.*w)./(2.*pi);
sw1_Abs = abs(sw(w));
sw1_Abs(1) = 0;
figure();
plot(k1,sw1_Abs,'blue')
grid on;
title('DTFT and DFT')
xlabel('DFT index, k')
ylabel('|S(w)|')
axis([0 10 0 8])
wk1 = (2.*pi.*k)./10;
sk1 = 2.*((1-(-1).^k1)./(1-exp((-i.*pi.*k1)./5)));
hold on
sk1(1) = 0;
plot(k,abs(sk),'r.','markers',14);
legend('DTFT','DFT')