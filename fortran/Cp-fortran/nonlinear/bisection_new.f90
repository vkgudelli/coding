!the bisection methord new
        real function f(x)
        implicit none
        real,intent(in)::x
        f=x**2-1
        end function f
 
      program main
        implicit none
        real x1,x2,x0,f
10 	print*,'enter the initial guesses'
        read*,x1,x2
        do
		if(abs(f(x0))<=1e-06)exit
		x0=(x1+x2)/2
		if(abs(f(x1))<=1e-06) then
		print*,x1,'is a root'
		x0=x1
		elseif(abs(f(x2))<=1e-06) then
		print*,x2,'is a root'
		x0=x2
		elseif(f(x1)*f(x2)>0) then
		print*,'Cannot find any root!';goto 10
		elseif(f(x1)*f(x0)<0) then
		x2=x0
		else
		x1=x0
		endif
        end do
	print*,'The root is',x0
   end program main
