program cofact
	!calculates the cofactor matrix of a given element of the given matrix
	implicit none
	integer::n
	real,allocatable,dimension(:,:):: a,c
	integer:: i,j,k,l	
	print*,'enter the dimension of the square matrix'
	read*,n
	allocate(a(n,n))
	print*,'enter the matrix'
	call readmat(a,n,n)
	call writemat(a,n,n)
	print*,'enter the position of the desired element'
	read*,k,l
	allocate(c(n-1,n-1))

	outt1: do i=1,k-1
		inn1: do j=1,l-1
			c(i,j)=a(i,j)
		end do inn1
		inn2: do j=l,n-1
			c(i,j)=a(i,j+1)
		end do inn2
	end do outt1
	
	outt2: do i=k,n-1
		inn3: do j=1,l-1
			c(i,j)=a(i+1,j)
		end do inn3
		inn4: do j=l,n-1
			c(i,j)=a(i+1,j+1)
		end do inn4 
	end do outt2
	print*,'cofactor matrix is:'
	call writemat(c,n-1,n-1)
end program 
