program eigen_value
	use modeigen
	implicit none

	integer::n,i,j
	real,allocatable::a(:,:)
	real::prod,x1,x2,x0

	print*,'enter the order of the determinant'
	read*,n
	allocate(a(n,n))
	print*,'enter the matrix:'
	call readmat(a,n,n)
	print*,'the matrix is:'
	call writemat(a,n,n)
	prod=deter(a,n)
	x1=-prod
	x2=prod
	!print*,prod
	x0=(x1+x2)/2
	
end program
	
