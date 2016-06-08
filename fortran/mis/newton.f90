!program newton-rapson methord

real function dif(x,cn)
real :: x,f,h=0.001
character :: cn
!print*,f(x+h)
dif=(f(x+h,cn)-f(x,cn))/h
!print*,"dif = ",dif
end function dif

real function f(y,c)
real :: y,q=2
character :: c
if(c=='a')f=y**2-5*y+4
if(c=='b')f=y-0.2*sin(y)-0.5
end function f

program newton
real :: g,p,m,dif,f
character :: ch
50 print*,"Enter correct choice a/b/c/d!!"
read*,ch
if(ch/='a'.and.ch/='b'.and.ch/='c'.and.ch/='d') goto 50
30 print*,"Enter initial value : "
read*,g
!print*,dif(g)
10 if(dif(g,ch)==0) goto 30
m=g-f(g,ch)/dif(g,ch)
print*,m
print*,(m-g)/m
if(abs((m-g)/m)<=0.00000000001) then
goto 20
else
g=m
goto 10
end if
20 print 1,"Root = ",m
1 format(a8,F8.4)
end program newton