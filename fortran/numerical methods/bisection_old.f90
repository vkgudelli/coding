!the bisection methord initial guss 1 or 0
        real function f(x)
        implicit none
        real,intent(in)::x
        f=cos(x)-1.3*x
        end function f
 
      program problem1
        implicit none
        real x1,x2,x0,f
10        print*,'enter the initial guesses'
        read*,x1,x2
        if(abs(f(x1))<=1e-06) then
        print*,x1,'is a root';goto 40
        elseif(abs(f(x2))<=1e-06) then
        print*,x2,'is a root';goto 40
        else
        endif
        if(f(x1)*f(x2)>0) then
        print*,'Cannot find any root!';goto 10
        endif
20        x0=(x1+x2)/2
        if(abs(f(x0))<=1e-06) goto 30
        if(f(x1)*f(x0)<0) then
        x2=x0
        goto 20
        else
        x1=x0
        goto 20
        endif
30        print*,'The root is',x0
40        end program problem1
