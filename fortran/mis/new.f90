! newton rapson methord
real function g(x) !g(x) is the derivative of f(x)
implicit none
real,intent(in)::x
real,parameter::h=0.001
real::f
g=1-0.2*cos(x)
end function

real function f(y)
implicit none
real,intent(in)::y
f=y-0.2*sin(y)-0.5
end function f

program main
implicit none
      real::g,f,x1,x0 !x1 is the initial guss
      print*,'enter the initial guss'
      read*,x1
      do
      if(f(x0)<=10e-6)exit
      x0=x1-(f(x1)/g(x1))
      if(g(x0)==0)then
      print*,'derivative is zero'
      elseif(f(x1)==0)then
      print*,x1,'is a root'
      elseif(abs((x0-x1)/x0)>10e-6)then
      x1=x0
      else
      end if
end do
print*,'the root is=',x0
end program main