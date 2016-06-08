! Module of useful functions
module functions
implicit none
contains

!test function of  single variable
function fun(x) result(resul)
implicit none
    real,intent(in)::x
    real::resul
    resul=exp(x)
end function fun


!function to find the factorial of a number
    function factorial(n) result(fact)
    implicit none
        integer::i,n
        real(16)::fact
        fact=1.0
        if (n==0) then
            fact=1.0
        else
            do i = 1, n
                fact=fact*i
            end do
        end if
    end function factorial


!functipon to find the solution of a bessel equation of first kind
    function besselj(n,x) result(Jnx)
    implicit none
    integer::n,m,k
    real(8)::x
    real(16)::Jnx
     if (n==0) then
         Jnx=1.0
     else
         Jnx=0.0
     end if
    do m = 1, 50
        k=m+n
        Jnx=Jnx+((-1.0*x**2/4.0)**m)/(factorial(m)*factorial(k))
    end do
    Jnx=Jnx*(x/2.0)**n
    end function besselj


!function to find the differential of a mathematical function at 'x0' 
function d5point(x0) result(resul)
implicit none
    real::x0,x1,x2,x3,x4,resul,h=0.00001
    integer::i
    x1=x0-h
    x2=x0+h
    x3=x0-2*h
    x4=x0+2*h
    resul=(fun(x3)-8*fun(x1)+8*fun(x2)-fun(x4))/(12*h)
end function d5point

!function to find the integral using sipsons 3/8 metod.
function simpson3by8(a,b) result(resul)
implicit none
    real::a,b,x,h=0.00001
    real(16)::resul,s1,s2,s3
    integer::i,n
    real(16), allocatable :: F(:)
    x=a
    n=nint((b-a)/h)
    allocate(F(0:n))
    resul=0.0 
    s1=0.0 
    s2=0.0
    s3=0.0
    do i = 0, n
        F(i)=fun(-1.0*x**2)
        x=x+h
    end do
    do i = 1,n-2,3
        s1=s1+F(i)
    end do
    do i = 2,n-1,3
        s2=s2+F(i)
    end do
    do i = 3,n-3,3
        s3=s3+F(i)
    end do
    resul=(3.0*h/8.0)*(F(0)+3.0*s1+3.0*s2+2.0*s3+F(n))
end function simpson3by8
    
end module functions
