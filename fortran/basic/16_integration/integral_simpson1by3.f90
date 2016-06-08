!integration using simpsons 1/3 method
program main
    implicit none
    real::fun,a,b
    real(16)::simpson1by3
    a=-20.0;b=20.0
    print*,simpson1by3(a,b)
end program main

!function that has to be integrated
function fun(x) result(resul)
implicit none
    real::x,resul
    resul=exp(x)
end function fun

!simpson 1/3 method.
 function simpson1by3(a,b) result(resul)
 implicit none
    real::a,b,x,fun,h=0.001
    real(16)::resul,s1,s2! ,F(0:1000)
    integer::i,n
    real(16), allocatable :: F(:)
    x=a
    n=nint((b-a)/h)
    allocate(F(0:n))
    resul=0.0;s1=0.0;s2=0.0
    do i = 0, n
        F(i)=fun(-1.0*x**2)
        x=x+h
    end do
    do i = 1,n-1,2
        s1=s1+F(i)
    end do
    do i = 2,n-2,2
        s2=s2+F(i)
    end do
    resul=(h/3.0)*(F(0)+4.0*s1+2.0*s2+F(n))
     
 end function simpson1by3
