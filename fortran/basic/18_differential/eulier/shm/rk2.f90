program main
    implicit none
    real::x0,xn,y0,v0,xmid,ymid,vmid,dy,dv,h=0.001
    real, allocatable::x(:),y(:),v(:)
    integer::i,n
    x0=0.0;y0=0.0;v0=1.0;xn=5*3.14
    n=nint((xn-x0)/h)
    open(1,file="data2")
    allocate(x(n),y(n),v(n))
    x(1)=x0;y(1)=y0;v(1)=v0
    do i = 1, n
        xmid=x(i)+(h/2.0);
        ymid=y(i)+(h/2.0)*dy(x(i),y(i),v(i))
        vmid=v(i)+(h/2.0)*dv(x(i),y(i),v(i))
        v(i+1)=v(i)+h*dv(xmid,ymid,vmid)
        y(i+1)=y(i)+h*dy(xmid,ymid,vmid)
        x(i+1)=x(i)+h
    end do
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
