clear all;
t=[0.15;0];
[x,y,z]=cylinder(t,180);
figure;
surf(x+0.15,y+0.15,z);
hold all;
surf(x+0.45,y+0.15,z);
% surf(x+0.3,y+0.41,z);
surf(x+0.15,y+0.45,z);
surf(x+0.45,y+0.45,z);
colormap(summer);
% box tfsf
p1 = [0 0 0];
p2 = [0.6 0 0];
p3 = [0.6 0.6 0];
p4 = [0 0.6 0]; 

x = [p1(1) p2(1) p3(1) p4(1)];
y = [p1(2) p2(2) p3(2) p4(2)];
z = [p1(3) p2(3) p3(3) p4(3)];

h=fill3(x, y, z, 1);
set(h,'facealpha',.5);

p5 = [0 0 1.5];
p6 = [0.6 0 1.5];
p7 = [0.6 0.6 1.5];
p8 = [0 0.6 1.5];

 
x = [p5(1) p6(1) p7(1) p8(1)];
y = [p5(2) p6(2) p7(2) p8(2)];
z = [p5(3) p6(3) p7(3) p8(3)];

h=fill3(x, y, z, 2);
set(h,'facealpha',.5);

x = [p2(1) p6(1) p7(1) p3(1)];
y = [p2(2) p6(2) p7(2) p3(2)];
z = [p2(3) p6(3) p7(3) p3(3)];
h=fill3(x, y, z, 3);
set(h,'facealpha',.5);


x = [p1(1) p4(1) p8(1) p5(1)];
y = [p1(2) p4(2) p8(2) p5(2)];
z = [p1(3) p4(3) p8(3) p5(3)];
h=fill3(x, y, z, 4);
set(h,'facealpha',.5);

x = [p1(1) p2(1) p6(1) p5(1)];
y = [p1(2) p2(2) p6(2) p5(2)];
z = [p1(3) p2(3) p6(3) p5(3)];
h=fill3(x, y, z, 4);
set(h,'facealpha',.5);

x = [p3(1) p4(1) p8(1) p7(1)];
y = [p3(2) p4(2) p8(2) p7(2)];
z = [p3(3) p4(3) p8(3) p7(3)];
h=fill3(x, y, z, 4);
set(h,'facealpha',.5);


%spacce









% set(gca,'Visible','off');