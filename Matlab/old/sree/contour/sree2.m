clear all;
clear;
load ('La_26.dat') ;
A = transpose (La_26);
B = reshape (A, 46656,1); 
C = zeros (1296,36);
i=1;
for k=1:1296
    for j=1:36
        C(k,j)=B(i);
        i=i+1;
    end
end
%reshaping matrix to matrix(nkx,nky,nkz) matrix
D=reshape(C,36,36,36);
dkx = 0.11/35 ;
dky = 0.11/35;
dkz = 0.11/35;
kx = 0: dkx: 0.11;
ky = 0:dky :0.11;
kz = 0:dkz:0.11;

% For ploting 2D slices separately
%----------------------------------
for i=1:36
num=num2str(i);
filename=strcat('D',num,'.png');
contourf(kx,ky,D(:,:,i));
saveas(gca,filename);
end

%For plotting separate 2D slices in 3D
%-------------------------------------
% for i=1:36
% [~,h]=contour(kx,ky,D(:,:,i));
% set(h,'LevelStep',dkz);
% hold on;
% end
% hold off;
% view(3); axis vis3d; grid on

% For ploting 2D slices as a surface
%----------------------------------
% for i=1:36
% contour3(kx,ky,D(:,:,i),[dkz dkz]);
% hold on;
% end

xlabel('kx') % x-axis label
ylabel('ky') % y-axis label
zlabel('kz') % z-axis label





