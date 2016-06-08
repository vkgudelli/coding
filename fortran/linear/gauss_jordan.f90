program gauss_jordan_method
	!soves a given system of linear equation by gauss-jordan method using 		pivoting
	
	use modgauss
	implicit none
	integer::n,piv=0,i,j
	real,allocatable::a(:,:),b(:)
	real::temp,summ

	print*,'enter the no. of equations'
	read*,n
	allocate(a(n,n))
	allocate(b(n))
	print*,'enter the coefficient matrix:'
	call readmat(a,n,n)
	print*,'enter the vector '
	call readmat(b,n,1)
	call writemat(a,n,n)
	call writemat(b,n,1)
	outt: do i=1,n
		call pivot(a(:,i),n,i,piv)
		call swaparray(a,b,i,piv,n)
		temp=a(i,i)
		a(i,:)=a(i,:)/a(i,i)
		b(i)=b(i)/temp
		inn: do j=1,n
			if (j==i) cycle
			temp=a(j,i)
			a(j,:)=a(j,:)-a(i,:)*a(j,i)
			b(j)=b(j)-b(i)*temp
		end do inn
	end do outt

	print*,'the roots are:'
	call writemat(b,n,1)		

end program
