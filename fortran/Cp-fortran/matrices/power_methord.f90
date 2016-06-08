Program Main
implicit none
integer :: n
double precision, parameter:: eps=1.0e-07
double precision,allocatable :: a(:,:), y(:)
double precision lambda
integer i, j, iter

print*,'enter the dimension'
read*,n
allocate(a(n,n),y(n))
print*,'enter the matrix'
call readmat(a,n,n)
! guess vector 
do i=1,n
 y(i)=1.0
 end do

! print a header and the original matrix
  write (*,200)
  do i=1,n
     write (*,201) (a(i,j),j=1,n)
  end do
! print: guess vector x(i)
  write (*,204) 
  write (*,201) (y(i),i=1,n)

  call Power(a,y,lambda,eps,n,iter)

! print solutions
  write (*,202)
  write (*,201) lambda
  write (*,203)
  write (*,201)  (y(i),i=1,n)
  write (*,205) iter

200 format (' The largest eigenvalues (Power method) ',/, &
            ' Matrix A')
201 format (6f12.6)
202 format (/,' The largest eigenvalue')
203 format (/,' Eigenvector')
204 format (/,' Initial vector')
205 format (/,' iterations = ',i5)
end program main


subroutine readmat(x,m,n)
	implicit none	
	integer,intent(in)::m,n
	double precision,dimension(m,n)::x
	integer::i,j
	do 20 i=1,m
	20 read*,(x(i,j),j=1,n)
end subroutine
	
subroutine writemat(x,m,n)
	implicit none	
	integer,intent(in)::m,n
	double precision,dimension(m,n)::x
	integer::i,j
	do 21 i=1,m
	21 print*,(x(i,j),j=1,n)
end subroutine

subroutine Power(a,y,lambda,eps,n,iter)
implicit none
integer n, iter
double precision a(n,n),y(n),lambda, eps 
double precision yp(n),lambda0, norm
integer k, i, j
integer, parameter::kmax=1000

lambda0=0.0

do k=1,kmax
  do i=1,n
    yp(i)=0.0
    do j=1,n
      yp(i) = yp(i)+a(i,j)*y(j)
    end do
  end do
  norm = 0.0
  do i=1,n
    norm = norm + yp(i)*yp(i)
  end do
  norm = sqrt(norm)
  do i=1,n
    y(i)=yp(i)/norm
  end do
  lambda = norm
  if (abs(lambda-lambda0) < eps) exit
  lambda0 = lambda
end do
iter = k
if(k == kmax) write (*,*)'The eigenvlue failed to converge'

end subroutine Power
