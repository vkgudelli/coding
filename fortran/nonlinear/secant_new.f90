!secant method  new guss 5,6
     
 real function f(x)
        implicit none
        real,intent(in)::x
        f=x**2-4*x-10
        end function f
 
program main
        implicit none
        real x1,x2,x0,f
	print*,'enter initial guesses'
        read*,x1,x2
        do 
	      x0=(f(x2)*x1-f(x1)*x2)/(f(x2)-f(x1))
	      if(abs(f(x0))<=1e-06)exit
	      if(abs((x0-x2)/x0)>1e-06) then
	      x1=x2
	      x2=x0
	      else
	      endif
	end do
	print*,'The root is',x0
end program main