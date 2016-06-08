program main
    implicit none
    real::x0,y0,f,xn,h=0.1
    real,allocatable::x(:),y(:)
    integer::i,n
    x0=0.0;y0=0.0;xn=10.0
    n=nint((xn-x0)/h)
    allocate(x(n),y(n))
    x(1)=x0;y(1)=y0
    do i=1,n
        x(i+1)=x(i)+h
        y(i+1)=y(i)+f(x(i),y(i))*h
    end do
    open(1,file="data")
    do i = 1, n
        write(1,*)x(i),y(i)
    end do
end program main
function f(x,y) result(resul)
implicit none
    real::x,y,resul
    resul=x+2.0*y
end function f
