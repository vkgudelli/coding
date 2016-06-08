program lagrange
	! finds interpolated value using lagrange's interpolation formula
	implicit none
	integer::n,i,j
	real,allocatable::x(:),f(:),b(:)
	real::prod,point,summ=0
	
	print*,'enter the no. of datapoints'
	read*,n
	allocate(x(n))
	allocate(f(n))
	allocate(b(n))
	!print*,'enter data points, one set in each row'
	!print*,'in order: x , f'
	open(1,file='lagdata')
	do i=1,n
		read(1,*)x(i),f(i)
	end do
	!do i=1,n
	!	print*,x(i),f(i)
	!end do
	print*,'enter the value of unknown x'
	read*,point
	outt: do i=1,n
		prod=1
		inn: do j=1,n
			if(j==i) cycle
			prod=prod*(x(i)-x(j))
		end do inn
		b(i)=f(i)/prod
	end do outt
	
	outt1: do i=1,n
		prod=1
		inn1: do j=1,n
			if (j==i) cycle
			prod=prod*(point-x(j))
		end do inn1
		summ=summ+prod*b(i)
	end do outt1
	
	print*,'at',point,'interpolated value=',summ
	
end program
