clear;
clc;
d=1; %diameter of the base
x=3; %number of lattice points 
xy=zeros(x,x);
for i=1:x
    for j=1:x
        xy(i,j)=-1*x+d*i;
    end
end