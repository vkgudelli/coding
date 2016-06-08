!program to find the factorial using a subroutine in a different file
program main
    implicit none
    integer::n
    real(kind=16)::fac
    print*,"Enter the integer for which you want to find the factorial"
    read*,n
    call factorial(n,fac)
    print*,"Factorial of", n, "is =",fac
end program main
