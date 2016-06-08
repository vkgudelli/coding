program main
    implicit none
    real::x0,y0,x,y,dy,h=0.0001
    integer::i
    print*,"enter initial x and initial y and x"
    read*,x0,y0,x
    do while(x0<=x)
        y=y0+h*dy(x0,y0)
        y0=y
        x0=x0+h
    end do
    print*,y0
    
end program main

function dy(x,y) result(resul)
implicit none
    real::x,y,resul
    resul=x**2+1.0
end function dy
function d2y(x,y) result(resul)
implicit none
    real::x,y,resul
    resul=2.0*x
end function d2y
