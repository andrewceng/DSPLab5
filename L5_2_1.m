load X
N = 128;
T = 1/10000;
k = 0:127;
X = abs(X);
figure;
stem(X)
title('Stem Plot of |X_k| vs DFT Index')
xlabel('|X_k|')
ylabel('DFT Index')
[Xk, K] = sort(abs(X), 'descend');

f =@(k) (2*pi)*k/(N*T*2*pi);
k1 = K(1)-1
f1 = f(k1)

k2 = K(3)-1
f2 = f(k2)

f =@(k) (2*pi)*(k-N)/(N*T*2*pi);
k3 = K(2)-1
f3 =f(k3)

k4 = K(4)-1
f4 =f(k4)
