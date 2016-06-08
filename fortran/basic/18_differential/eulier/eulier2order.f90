program main
    implicit none
    real::ti,xi,vi,d1x,d2x,tf,h=0.001
    real,allocatable::t(:),x(:),v(:)
    integer::i,n
    ti=0.0;xi=0.0;vi=1.0;tf=4*3.14
    n=nint((tf-ti)/h)
    allocate(t(n),x(n),v(n))
    t(1)=ti;v(1)=vi;x(1)=xi
    do i = 1, n
        t(i+1)=t(i)+h
        x(i+1)=x(i)+h*d1x(t(i),x(i),v(i))
        v(i+1)=v(i)+h*d2x(t(i),x(i),v(i))
    end do
    open(1,file="data")
    do i = 1, n
        write(1,*)t(i),x(i),v(i)
    end do
end program main

function d2x(t,x,v) result(resul)
implicit none
    real::k,m,t,x,v,resul
    k=1.0;m=1.0
    resul=-1.0*(k/m)*x
end

function d1x(t,x,v) result(resul)
implicit none
    real::t,x,v,resul
    resul=v
end
