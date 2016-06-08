!program to calculate sin(x)/x and write it to an external file
program main
      implicit none
      real, parameter::pi=4.0*atan(1.0)
      real::x=-5.0*pi
      open(1,file="data.dat")
      do while(x<=5.0*pi)
        write(1,*)x,sinn(x)
        x=x+0.1
      end do
contains
    real function sinn(x)
        real::x
        if(x/=0)then
           sinn=sin(x)/x
        else
            sinn=1.0
        end if
    end function sinn
end program
