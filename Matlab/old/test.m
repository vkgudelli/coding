clear all;
t = (1/16:1/8:1)'*2*pi;
x = sin(t);
y = cos(t);
h = fill(x,y,'r');
% Choose a number between 0 (invisible) and 1 (opaque) for facealpha.  
set(h,'facealpha',.5)