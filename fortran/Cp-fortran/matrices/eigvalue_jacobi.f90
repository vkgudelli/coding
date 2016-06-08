 Program Main
 implicit none
integer:: n
double precision,allocatable :: a(:,:), x(:,:)
double precision, parameter:: abserr=1.0e-09
integer i, j
print*,'enter the dimension'
read*,n
allocate(a(n,n),x(n,n))

print*,'enter the matrix'
call readmat(a,n,n)
call Jacobi(a,x,abserr,n)

! print solutions
  write (*,11)
  write (*,10) (a(i,i),i=1,n)
  write (*,12)
  do i = 1,n
     write (*,10)  (x(i,j),j=1,n)
  end do

10 format (6f12.6)
11 format (/,' Eigenvalues')
12 format (/,' Eigenvectors')
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

subroutine Jacobi(a,x,abserr,n)
implicit none
integer i, j, k, n
double precision a(n,n),x(n,n)
double precision abserr, b2, bar
double precision beta, coeff, c, s, cs, sc
x = 0.0
do i=1,n
  x(i,i) = 1.0
end do
b2 = 0.0
do i=1,n
  do j=1,n
    if (i.ne.j) b2 = b2 + a(i,j)**2
  end do
end do
if (b2 <= abserr) return
bar = 0.5*b2/float(n*n)
do while (b2.gt.abserr)
  do i=1,n-1
    do j=i+1,n
      if (a(j,i)**2 <= bar) cycle 
      b2 = b2 - 2.0*a(j,i)**2
      bar = 0.5*b2/float(n*n)
      beta = (a(j,j)-a(i,i))/(2.0*a(j,i))
      coeff = 0.5*beta/sqrt(1.0+beta**2)
      s = sqrt(max(0.5+coeff,0.0))
      c = sqrt(max(0.5-coeff,0.0))
      do k=1,n
        cs =  c*a(i,k)+s*a(j,k)
        sc = -s*a(i,k)+c*a(j,k)
        a(i,k) = cs
        a(j,k) = sc
      end do
      do k=1,n
        cs =  c*a(k,i)+s*a(k,j)
        sc = -s*a(k,i)+c*a(k,j)
        a(k,i) = cs
        a(k,j) = sc
        cs =  c*x(k,i)+s*x(k,j)
        sc = -s*x(k,i)+c*x(k,j)
        x(k,i) = cs
        x(k,j) = sc
      end do
    end do
  end do
end do
return
end

