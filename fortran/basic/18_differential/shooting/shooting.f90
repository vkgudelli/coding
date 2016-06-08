program main
    implicit none
        real::x0,xn,dy,dv,h=0.001 
        real,allocatable::x(:),y(:),v(:)
        integer::i,n
        x0=0.0;xn=5
        n=nint((xn-x0)/h)
        open(1,file="shoot")
        allocate(x(n),y(n),v(n))
        x(1)=x0;x(n)=xn;y(1)=0.0;y(n)=7.0;v(1)=6.0;v(2)=8.0
        call shoot(h,n,x,y,v)
        do i = 1, n
            write(1,*)x(i),y(i),v(i)
        end do
end program main

subroutine shoot(h,n,x,y,v)
implicit none
    real,parameter::eps=0.00001
    integer::n,i
    real::x(n),y(n),v(n),h,yn,vold1,vold2,yold1
    yn=y(n)
    call rk4(h,n,x,y,v)
    yold1=y(n)
    do while(abs(y(n)-yn)<=eps)
        call rk4(h,n,x,y,v)
        vold1=v(1)
        vold2=v(2)
        v(2)=v(2)-((y(n)-yn)*(v(2)-v(1))/(y(n)-yold1))
        v(1)=vold2
        yold1=y(n)
    end do
    
end subroutine shoot


function dy(x,y,v) result(resul)
implicit none
    real::x,y,v,resul
    resul=v
end function dy

function dv(x,y,v) result(resul)
implicit none
    real::x,y,v,resul
    resul=(-1.0)*y
end function dv


subroutine rk4(h,n,x,y,v)
implicit none
    real::h,dy,dv,k11,k12,k21,k22,k31,k32,k41,k42
    integer::i,n
    real:: x(n),y(n),v(n)
    do i = 1, n
        k11=dy(x(i),y(i),v(i))
        k12=dv(x(i),y(i),v(i))
        k21=dy(x(i)+h/2.0,y(i)+h*k11/2.0,v(i)+h*k12/2.0)
        k22=dv(x(i)+h/2.0,y(i)+h*k11/2.0,v(i)+h*k12/2.0)
        k31=dy(x(i)+h/2.0,y(i)+h*k21/2.0,v(i)+h*k22/2.0)
        k32=dv(x(i)+h/2.0,y(i)+h*k21/2.0,v(i)+h*k22/2.0)
        k41=dy(x(i)+h,y(i)+h*k31,v(i)+h*k32)
        k42=dv(x(i)+h,y(i)+h*k31,v(i)+h*k32)
        
        y(i+1)=y(i)+(h/6.0)*(k11+2.0*(k21+k31)+k41)
        v(i+1)=v(i)+(h/6.0)*(k12+2.0*(k22+k32)+k42)
        x(i+1)=x(i)+h
    end do
        
end subroutine rk4


