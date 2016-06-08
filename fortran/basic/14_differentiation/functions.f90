! Module of useful functions
module functions
implicit none
contains

!test function of  single variable
function fun(x) result(resul)
implicit none
    real,intent(in)::x
    real::resul
    resul=sin(x)
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

!finding first derivative using 3 point
function d3point(x0) result(resul)
implicit none
    real::x0,x1,x2,resul,h=0.00001
    integer::i
    x1=x0-h
    x2=x0+h
    resul=(fun(x2)-fun(x1))/(2*h)
end function d3point
    
end module functions
