!program to evaluate the bessel equation.
program main
    use functions 
    implicit none
    real(8)::x
    real(16)::Jn
    x=0.0
    open (1,file="data")
    do while(x<20.0)
           write(1,*)x,besselj(0,x)
           x=x+0.05
    end do
    call system('gnuplot plot.gpl')
end program main
