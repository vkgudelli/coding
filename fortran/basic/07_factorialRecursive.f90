!program to find the factorial of an integer using recursive function
program main
    implicit none
    integer(8),external::factorial
    integer::n
    print*,"enter the integer which you want to find the factorial for"
    read*,n
    print*,"The factorial of ",n," is = ",factorial(n)
end program main

recursive function factorial(n) result(mul)
    integer(8)::mul
    integer::n
    if (n==1) then
        mul=mul*1 
    else
        mul=n*factorial(n-1)
    end if
end function factorial
