!program to find the factorial of a number(writing a function outside of program-end block)
program main
    implicit none
    integer(8)::factorial !declaring the function
    integer::n
    print*,"Enter the number which you want to find the factorial for."
    read*,n
    print*,factorial(n)
end program main

function factorial(n) result(mul)
    integer::n,i
    integer(8)::mul
    mul=1
    do i = 1, n
        mul=mul*i
    end do
end function factorial
    


