!program to create sin(x)/x using module
program main
      use mod_fac_sin, only:pi,factorial,sinxByx
      implicit none
      integer::i
      real::x=-2.0*pi
      open(1,file="data.dat")
      do while(x<=2*pi)
            write(1,*)x,sinxByx(x)
            x=x+0.1
      end do
end program


