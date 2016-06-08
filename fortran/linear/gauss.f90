program gauss_method
	!soves a given system of linear equation by gauss method using pivoting
	
	use modgauss
	implicit none
	integer::n,piv=0,i,j
	real,allocatable::a(:,:),b(:),x(:)
	real::temp,summ

	print*,'enter the no. of equations'
	read*,n
	allocate(a(n,n))
	allocate(b(n))
	allocate(x(n))
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
		inn: do j=i+1,n
			temp=a(j,i)
			a(j,:)=a(j,:)-a(i,:)*a(j,i)
			b(j)=b(j)-b(i)*temp
		end do inn
	end do outt

	outt1: do i=n,1,-1
		summ=0
		inn1: do j=i+1,n,1
			summ=summ+a(i,j)*x(j)
		end do inn1
		x(i)=b(i)-summ
	end do outt1	
	print*,'the roots are:'
	call writemat(x,n,1)		

end program
