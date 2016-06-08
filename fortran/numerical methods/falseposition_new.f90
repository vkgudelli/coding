   !falseposition new guss -2 -1 for this function
   
   real function f(x)
        implicit none
        real,intent(in)::x
        f=sin(x)-x**(3)-1
        end function f
   program main
     implicit none
        real x1,x2,x0,f
10	print*,'enter the initial guesses'
        read*,x1,x2
        do
        x0=x1-f(x1)*((x2-x1)/(f(x2)-f(x1)))
        if(abs(f(x0))<=1e-06)exit 
        if(f(x1)*f(x2)>0) then 
        print*,'Cannot find any root! try again';goto 10
        elseif(abs(f(x1))<=1e-06) then
        print*,x1,'is a root'
        x0=x1
        elseif(abs(f(x2))<=1e-06) then
        print*,x2,'is a root'
        x0=x2
        elseif(f(x1)*f(x0)<0) then
        x2=x0
        else
        x1=x0
        end if
        end do
        print*,'The root is',x0
end program main
        