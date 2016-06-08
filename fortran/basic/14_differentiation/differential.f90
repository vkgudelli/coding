!program to find the differential of a function using 3 point and 5 point method
program main
    use functions
    implicit none
    real::x
    open(1,file="data")
    x=0.0
    do while(x<=10.0)
        write(1,*)x,sin(x),d3point(x),d5point(x)
        x=x+0.01
    end do
end program main
