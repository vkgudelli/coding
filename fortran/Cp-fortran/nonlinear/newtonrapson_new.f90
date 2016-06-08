real function dif(x)
real::f,x,h=10e-6
dif=(f(x+h)-f(x))/h
end function dif

real function f(y)
real::y
f=y**2-5*y+4
end function f

program main
real::x1,x0,dif,f
integer::i
10 print*,'enter the initial value'
read*,x1
do

if(f(x0)<=10e-6)exit
x0=x1-(f(x1)/dif(x1))
if(f(x1)<=10e-6)then
x0=x1
else
x1=x0
end if
cycle
end do
print 1,x0,'is the root'
1 format(f8.4,a12)
end program