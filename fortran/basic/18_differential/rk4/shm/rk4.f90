program main
    implicit none
    real::x0,xn,y0,v0,dy,dv,h=0.001
    real, allocatable::x(:),y(:),v(:)
    integer::i,n
    x0=0.0;y0=0.0;v0=1.0;xn=5*3.14
    n=nint((xn-x0)/h)
    open(1,file="data")
    allocate(x(n),y(n),v(n))
    call rk4(h,n,x0,y0,v0,x,y,v)
    do i = 1, n
        write(1,*)x(i),y(i),v(i)
    end do
end program main

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

