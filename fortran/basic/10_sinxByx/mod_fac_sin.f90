!module defining pi, factorial function and sin(x)/x function which uses factorial function
module mod_fac_sin
implicit none
real, parameter::pi=4.0*atan(1.0)
contains

real(16) function factorial(n)
    implicit none
    integer::n,i
    factorial=1.0
    if (n==0) then
        factorial=1.0
    else
        do i = 1, n
            factorial=factorial*i
        end do
    end if
end function factorial

real(16) function sinxByx(x)
    implicit none
    integer::k,n
    real::x
    sinxByx=0.0
    if (x==0) then
        sinxByx=1
    else
        do k=0,10
            n=(2*k)+1
            sinxByx=sinxByx+(((-1.0)**k)*(x**n)/factorial(n))
        end do
            sinxByx=sinxByx
    end if
end function sinxByx

end module mod_fac_sin
