!Program to find factorial of a number using subroutine
program main
    implicit none
    integer(8)::fact
    integer::n
    print*,"Enter the integer for which you want to find the factorial"
    read*,n
    call factorial(n,fact)
    print*,"Factorial of", n, "is =",fact
contains
subroutine factorial(n,fac)
    implicit none
    integer::n,i
    integer(8)::fac
    fac=1
    do i = 1, n
        fac=fac*i
    end do
    end subroutine factorial
end program main
