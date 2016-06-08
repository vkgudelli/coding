!program to find the roots of a function using newton rapson method.

program main
use functions
    implicit none
    integer::i
    real::f,df,x,E=1e-6
    print*,"enter the initial guess"
    read*,x
    do while(abs(fun(x))>=E)
        if (d5point(x)==0) then
            x=x+E
        end if
        x=x-(fun(x)/d5point(x))
    end do
    print*,x
end program main
