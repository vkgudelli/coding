! Program to find the roots of a polynomial using BISECTION-METHOD.
program main
      implicit none
      real::a,b,x0=0,E,root
      print*,"Enter initial guess a,b in the interwell [a,b] and the convergence E"
      read*,a,b,E
      do while(abs(f(x0))>=E)
      x0=(a+b)/2
        if(f(x0)==0.or.abs(f(x0))<=E)then
            root=x0
        elseif(f(x0)*f(b)<0)then
            a=x0
        elseif(f(x0)*f(a)<0)then
            b=x0
        end if
      end do
      print*,"the root is",root

contains
      real function f(x)
          real::x
          f=x**2-4*x-10
end function
end program main
