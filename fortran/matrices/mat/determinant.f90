program determinantt
	!calculates the determinant of a matrix
	use cofactor
	implicit none
	integer,allocatable,dimension(:,:)::a,c
	integer::n,k,l,j
	print*,'enter the dimension of the square matrix'
	read*,n
	allocate(a(n,n))
	allocate(c(n-1,n-1))
	print*,'enter the matrix'
	call readmat(a,n,n)
	!print*,'enter the desired element'
	!read*,k,l
	!print*,'the cofactor matrix:'
	!call writemat(cofact(a,n,k,l),n-1,n-1)
	print*,'determinanat: ', deter(a,n)
	contains 
	recursive function deter(x,n) result(det)
		integer:: det,s=0,s1=0
		integer,intent(in)::n
		integer,intent(in)::x(n,n)
		if (n==2) then
			det=x(1,1)*x(2,2)-x(1,2)*x(2,1)
		else
			
			do j=1,n			
			s=s+(-1)**(1+j)*x(1,j)*deter(cofact(x,n,1,j),n-1)
			end do
			det=s
		end if
	end function

end program