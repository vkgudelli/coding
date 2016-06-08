clear;
load('data.txt');
A=reshape(transpose(data),504,1);
B=transpose(reshape(A,9,56));
C=reshape(B,7,8,9);
kxmax=0.116;
kymax=0.116;
kzmax=0.116;
dkx=kxmax/6;
dky=kymax/7;
dkz=kzmax/8;
kx=0:dkx:kxmax;
ky=0:dky:kymax;
kz=0:dkz:kzmax;
% surf(kx,ky,kz,C);
for i=1:9
contour(kx,ky,C(:,:,i));
end
