! Module of useful functions
module functions
implicit none
contains
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
    do m = 1,30
        k=m+n
        Jnx=Jnx+((-1.0*x**2/4.0)**m)/(factorial(m)*factorial(k))
    end do
    Jnx=Jnx*(x/2.0)**n
    end function besselj
end module functions
