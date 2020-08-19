Err512 = norm(abs(X1')-abs(DFT1))
Err1024 = norm(abs(X2')-abs(DFT2))
Err2048 = norm(abs(X3')-abs(DFT3))
Err4096 = norm(abs(X4')-abs(DFT4))

N= [512 1024 2048 4096];
Tmat = [Tmat512 Tmat1024 Tmat2048 Tmat4096];
Tdft = [Tdft512 Tdft1024 Tdft2048 Tdft4096];
Tfft = [Tfft512 Tfft1024 Tfft2048 Tfft4096];
E = [Err512 Err1024 Err2048 Err4096];

Table =[N; Tmat; Tdft; Tfft; E];
fprintf('N      Tmat       Tdft       Tfft       Error\n')
fprintf('--------------------------------------------------\n')
fprintf('%4i %10.6f %10.6f %10.6f %12.4e\n', Table)