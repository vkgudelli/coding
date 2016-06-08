!program to find the solution of x-cos(x).
program main
    implicit none
    real::x,y
    integer::i,n
    x=1.0;n=0
    y=x-cos(x)
     do while (abs(y)>=1e-4)
        y=x-cos(x)
        x=cos(x)
        n=n+1
     end do
     print*,x,n
end program main
