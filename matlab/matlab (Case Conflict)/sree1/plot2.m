clear all;
load New112.dat;
data=cat(2,New112(:,3),New112(:,5));
data(16:31,1)=-1*data(16:31,1);
x_112=data(:,1);
E_112=data(:,2);
x112=zeros(31,62);
y112=zeros(31,62);
E112=zeros(31,62);
x112(:,1)=x_112;
y112(:,1)=x_112;
E112(:,1)=E_112;
for i=2:62
    for j=1:31
        resl=rot(x112(j,i-1),y112(j,i-1),E112(j,i-1),0.0515);
        x112(j,i)=resl(1);
        y112(j,i)=resl(2);
        E112(j,i)=resl(3);
    end
end
%%
load New113.dat;
data2=cat(2,New113(:,3),New113(:,5));
data2(16:31,1)=-1*data2(16:31,1);
x_113=data2(:,1);
E_113=data2(:,2);
x113=zeros(31,62);
y113=zeros(31,62);
E113=zeros(31,62);
x113(:,1)=x_113;
y113(:,1)=x_113;
E113(:,1)=E_113;
for i=2:62
    for j=1:31
        resl=rot(x113(j,i-1),y113(j,i-1),E113(j,i-1),0.0515);
        x113(j,i)=resl(1);
        y113(j,i)=resl(2);
        E113(j,i)=resl(3);
    end
end
%%
surf(x113,y113,E113);
hold on
surf(x112,y112,E112);
xlabel('X');
ylabel('Y');