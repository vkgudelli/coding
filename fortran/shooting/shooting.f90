Program shooting

implicit none

integer, parameter :: n=201
double precision, external :: f
double precision, dimension(1:n) :: x, y, dy   ! x, y, y'
integer i

open (2,file="shoot2")

x(1) =  0.0
y(1) =  10.0
x(n) =  10.0
y(n) =  6.0

dy(1) =  0.50
dy(2) =  2.0

call shoot2(f,x,y,dy,n)

!write(*,1)
do i=1,n
  write (2,*) x(i), y(i)  !, dy(i)
end do

2	format(3(1pe12.4))
stop
end program shooting

  subroutine shoot2(f,x,y,dy,n)
implicit none
integer, parameter :: it=21                    ! max numer of iterations
double precision, parameter :: eps = 0.000001  ! target tolerance
integer n
double precision, external:: f
double precision, dimension(1:n) :: x, y, dy
integer i,j
double precision dx, yn
double precision, dimension(1:it):: g, c

g(1) = dy(1)
g(2) = dy(2)

yn = y(n)
dx = (x(n)-x(1))/float(n-1)
do i=2,n
  x(i) = x(i-1)+dx
end do

! shooting iterations
do j=1,it
  dy(1) = g(j)
  call rk(f,x,y,dy,n)      ! solves initial value ODE on n-base points
  c(j) = y(n)
  if(abs(yn-c(j)) <= eps) exit
  if(j.ge.2) g(j+1)=g(j)-(c(j)-yn)*(g(j)-g(j-1))/(c(j)-c(j-1)) 
end do
end subroutine shoot2

 function f(x,y,dy)
  implicit none
  double precision f, x, y, dy
    f = -(0.2*dy)-(16*y)+2.5
 end function f

subroutine rk(f,x,y,dy,n)
implicit none
double precision f
integer n
double precision, dimension(1:n) :: x, y, dy
integer i
double precision h,k11,k12,k21,k22,k31,k32,k41,k42

do i=2,n
   h   = x(i)-x(i-1)
   k11 = h*dy(i-1)
   k12 = h*f(x(i-1),y(i-1),dy(i-1))
   k21 = h*(dy(i-1)+k12/2.0)
   k22 = h*f(x(i-1)+h/2.0, y(i-1)+k11/2.0, dy(i-1)+k12/2.0)
   k31 = h*(dy(i-1)+k22/2.0)
   k32 = h*f(x(i-1)+h/2.0, y(i-1)+k21/2.0, dy(i-1)+k22/2.0)
   k41 = h*(dy(i-1)+k32)
   k42 = h*f(x(i-1)+h,y(i-1)+k31,dy(i-1)+k32)

   y(i) = y(i-1) + (k11 + 2.0*(k21+k31) + k41)/6.0
  dy(i) = dy(i-1)+ (k12 + 2.0*(k22+k32) + k42)/6.0
end do 
end subroutine rk
