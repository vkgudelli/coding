!gauss -sedel methord
program gauss_seidel
	use mod_iter_jacobi
	implicit none
	integer::n,i,j,flag,countt=0,k
	real,allocatable::a(:,:),b(:),x(:)
	real::temp
	double precision:: summ
	intrinsic abs	

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
	
	do i=1,n
		x(i)=b(i)/a(i,i)
	end do
	
	outt: do k=1,100
		flag=0
		loop1: do i=1,n
			summ=0
			
			loop2: do j=1,n
				if (i/=j) summ=summ+a(i,j)*x(j)
			end do loop2
			
			temp=(b(i)-summ)/a(i,i)
			if (abs((temp-x(i))/temp)>1e-3) flag=1
			x(i)=temp
		end do loop1
		countt=countt+1		
		if (flag==0) exit
	end do outt
	
	if (countt==100) then
		print*,'no convergence in 1000 iterations'
	else
		print*,'the roots are:'
		call writemat(x,n,1)		

	end if
	
end program
