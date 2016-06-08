!program to find the determinant of a matrix

program determinant_find
	use mod_gauss
	implicit none
	integer::n,piv=0,i,j
	real,allocatable::a(:,:)
	real::prod=1

	print*,'enter the order of the determinant'
	read*,n
	allocate(a(n,n))
	print*,'enter the matrix:'
	call readmat(a,n,n)
	print*,'the matrix is:'
	call writemat(a,n,n)
	
	do i=1,n
		call pivot(a(:,i),n,i,piv)
		call swaparray1(a,i,piv,n)
	 do j=i+1,n
			a(j,:)=a(j,:)-(a(i,:)/a(i,i))*a(j,i)
		end do
	end do

	do i=1,n
		prod=prod*a(i,i)
	end do

	print*,'the determinant is : ',prod		

end program
