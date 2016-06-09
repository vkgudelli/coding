%%
function res= rot(x,y,z,th)
    rotmat=[cos(th) -1*sin(th) 0;sin(th) cos(th) 0; 0 0 1];
    vec1=[x;y;z];
    res=rotmat*vec1;
end