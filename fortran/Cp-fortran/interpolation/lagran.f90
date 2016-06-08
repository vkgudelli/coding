!lagrangean interpolation
program lagran
implicit none
	real,allocatable::x(:),f(:),b(:)
	integer::i,j,n
	real::summ=0,y,prod
	print*,'enter the no of data points'
	read*,n
	allocate(x(n),f(n),b(n))
	!print*,'ente the data points first points then corresponding function value'
	!do i=1,n
	!read*,x(i),f(i)
	!end do
	open(1,file='data')
	do i=1,n
		read(1,*) x(i),f(i)
	end do
	print*,'enter the value of unknown x'
	read*,y
	do i=1,n
	prod=1
			do j=1,n
				if (j==i)cycle
				prod=prod*((y-x(j))/(x(i)-x(j)))
			end do
			b(i)=prod
	end do
	do i=1,n
	summ=summ+f(i)*b(i)
	end do
	print 1,'at',y,'interpolated value=',summ
	1 format(a2,f8.4,2x,a19,f8.4)
	end program
	