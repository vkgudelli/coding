!program to find the solutions of a quadratic equation.
program main
      implicit none
      real::a,b,c,d
      print*,"enter the values of coefficents a, b, c"
      read*, a,b,c
      d=b**2-4*a*c
      if(a/=0)then
        if(d==0)then
            print*,"the solution is real and unique which is = ", -b/(2*a)
        elseif(d>0)then
            print*,"the toots are real and distict which are x=",-b/(2*a)+sqrt(d)/(2*a),"and x= ",-b/(2*a)-sqrt(d)/(2*a)
        elseif(d<0)then
            print*,"the roots are imaginary and distinct they are x=",-b/(2*a),"+i",sqrt(-d)/(2*a),"and",-b/(2*a),"-i",sqrt(-d)/2*a
        else
            print*,"Couldn't recogonize your quadratic equation, try again"
        end if
    else
        print*,"this is not a quadratic equation"
    end if
end program main
