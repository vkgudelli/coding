!secant method   initial guss for the function 5 6
     
 real function f(x)
        implicit none
        real,intent(in)::x
        f=x**2-4*x-10
        end function f
 
      program main
        implicit none
        real x1,x2,x0,f
10        print*,'enter initial guesses'
        read*,x1,x2
        if(abs(f(x1))<=1e-06) then
        print*,x1,'is a root';goto 40
        elseif(abs(f(x2))<=1e-06) then
        print*,x2,'is a root';goto 40
        else
        endif

20        x0=(f(x2)*x1-f(x1)*x2)/(f(x2)-f(x1))
        if(abs(f(x0))<=1e-06) goto 30
        if(abs((x0-x2)/x0)>1e-06) then
        x1=x2
	x2=x0
        goto 20
	else
        endif
30        print*,'The root is',x0

40        end program main