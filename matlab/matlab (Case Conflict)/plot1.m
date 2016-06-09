clear all;
load New112.dat;
load New113.dat;
data=cat(2,New112(:,3),New112(:,5));
data2=cat(2,New113(:,3),New113(:,5));
data(16:31,1)=-1*data(16:31,1);
data2(16:31,1)=-1*data2(16:31,1);
data3=cat(1,data, data2);
x=data3(:,1);
E=data3(:,2);
x62=zeros(62,62);
y62=zeros(62,62);
E62=zeros(62,62);
x62(:,1)=x;
y62(:,1)=x;
E62(:,1)=E;
for i=2:62
    for j=1:62
        resl=rot(x62(j,i-1),y62(j,i-1),E62(j,i-1),0.055);
        x62(j,i)=resl(1);
        y62(j,i)=resl(2);
        E62(j,i)=resl(3);
    end
end
surf(x62,y62,E62);
xlabel('X');
ylabel('Y');