%%
clear all;
clear;
load('sree.mat');
A=transpose(Fr);
B=reshape(A,504,1);
C=zeros(63,8);
i=1;
for k=1:63
    for j=1:8
        C(k,j)=B(i);
        i=i+1;
    end
end
Kmax=0.11086700;nx=7;ny=8;nz=9;
hx=Kmax/nx;hy=Kmax/ny;hz=Kmax/nz;
Kx=transpose(0:hx:Kmax);
Ky=transpose(0:hy:Kmax);
Kz=transpose(0:hz:Kmax);
surf(C,'LineStyle', 'none', 'FaceColor', 'interp');
% colormap(parula)
% camlight right;
% set(gca, 'CameraPosition', [45 35 9.8]);

