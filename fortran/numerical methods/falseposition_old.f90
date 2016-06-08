!the false position methord

        real function f(x)
        implicit none
        real,intent(in)::x
        f=sin(x)-x**(3)-1
        end function f
 
      program main
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
20        x0=x1-f(x1)*((x2-x1)/(f(x2)-f(x1)))
        if(abs(f(x0))<=1e-06) goto 30
        if(f(x1)*f(x0)<0) then
        x2=x0
        goto 20
        else
        x1=x0
        goto 20
        endif
30        print*,'The root is',x0

40        end program main