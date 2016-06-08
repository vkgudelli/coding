program jacobi
	!soves a given system of linear equation by Jacobi's iteration method
	
	use mod_iter_jacobi
	implicit none
	integer::n,i,j,flag,countt=0,k
	real,allocatable::a(:,:),b(:),xold(:),xnew(:)
	real::summ

	print*,'enter the no. of equations'
	read*,n
	allocate(a(n,n))
	allocate(b(n))
	allocate(xold(n))
	allocate(xnew(n))
	print*,'enter the coefficient matrix:'
	call readmat(a,n,n)
	print*,'enter the vector '
	call readmat(b,n,1)
	call writemat(a,n,n)
	call writemat(b,n,1)
	
	do i=1,n
		xold(i)=b(i)/a(i,i)
	end do
	
	outt: do k=1,50
		flag=0
		loop1: do i=1,n
			summ=0
			
			loop2: do j=1,n
				if (i/=j) summ=summ+a(i,j)*xold(j)
			end do loop2
			
			xnew(i)=(b(i)-summ)/a(i,i)
			if (abs((xnew(i)-xold(i))/xnew(i))>1e-3) flag=1
		end do loop1
		if (flag==0) exit
		xold=xnew
		countt=countt+1
	end do outt
	
	if (countt==50) then
		print*,'no convergence in 50 iterations'
	else
		print*,'the roots are:'
		call writemat(xnew,n,1)		

	end if
	
end program
