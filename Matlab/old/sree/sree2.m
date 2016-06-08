load ('La_26.dat') ;
A = transpose (La26);
B = reshape (A, 46656,1); 
C = zeros (1296,36);
i=1;
for k=1:1296
    for j=1:36
        C(k,j)=B(i);
        i=i+1;
    end
end
D=reshape(C,36,36,36);
dkx = 0.11/35 ;
dky = 0.11/35;
kx = 0: dkx: 0.11;
ky = 0:dky :0.11;

for i=1:36
contour(kx,ky,D(:,:,i));
hold on;
end

%     D = C (:,1);
%     E = transpose(D);
%     G = reshape (E,[36,36]);
%     
%     contour(kx, ky, G)
%     xlabel('kx') % x-axis label
%     ylabel('ky') % y-axis label




