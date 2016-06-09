clear all;
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
    D = C (:,1);
    E = transpose(D);
    G = reshape (E,[36,36]);
    dkx = 0.11/35 ;
    dky = 0.11/35;
    kx = 0: dkx: 0.11;
    ky = 0:dky :0.11;
    %plot(G);
    %xlabel('kx') % x-axis label
    %ylabel('ky') % y-axis 0000label
    contour(kx, ky, G)
    %H= transpose(G);
    %contour(H);
    xlabel('kx') % x-axis label
    ylabel('ky') % y-axis label
    
    %dkx = 0.11/35 ;
    %dky = 0.11/35;
    %kx = 0: dkx: 0.11;
    %ky = 0:dky :0.11;
    %D1= C(:,2);
    %E1= transpose(D1);
    %G1 = reshape(E1,[8,7]);
    %H1 = transpose(G1);
    %contour(kx,ky,G1);
    %xlabel('kx') % x-axis label
    %ylabel('ky') % y-axis label
    %D2=C(:,3);
    %E2= transpose(D2);
    %G2 = reshape(E2,[8,7]);
    %H2 = transpose(G2);
    %contour(kx,ky,G2);
    %xlabel('kx') % x-axis label
    %ylabel('ky') % y-axis label
    %D3=C(:,4);
    %E3= transpose(D3);
    %G3 = reshape(E3,[8,7]);
    %H3 = transpose(G3);
    %contour(kx,ky,G3)
    %xlabel('kx') % x-axis label
    %ylabel('ky') % y-axis label
    %D4=C(:,5);
    %E4= transpose(D4);
    %G4 = reshape(E4,[8,7]);
    %H4 = transpose(G4);
    %contour(kx, ky, G4);
    %xlabel('kx') % x-axis label
    %ylabel('ky') % y-axis label
    
    %D6=C(:,7);
    %E6= transpose(D6);
    %G6 = reshape(E6,[8,7])
    %H6 = transpose(G6)
    %contour(kx, ky, G6);
    %xlabel('kx') % x-axis label
    %ylabel('ky') % y-axis label
    %contour(G5);
    %xlabel('kx') % x-axis label
    %ylabel('ky') % y-axis label
    %D7=C(:,8);
    %E7= transpose(D7);
    %G7 = reshape(E7,[8,7]);
    %H7 = transpose(G7);
    %contour(G7);
    %xlabel('kx') % x-axis label
    %ylabel('ky') % y-axis label
    %D8=C(:,9);
    %E8= transpose(D8);
    %G8 = reshape(E8,[8,7]);
    %H8 = transpose(G8);
    %contour(G8);
    
    %xlabel('kx') % x-axis label
    %ylabel('ky') % y-axis label
  %  for k=1:7
   % for j=1:8
    %    plane1(k,j)=H(k,j);
    %end 
    %end
%surf(plane1);
%plot::Matrixplot(H)




