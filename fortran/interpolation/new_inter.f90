program newton_interpolation
	! finds interpolated value using newton's interpolation formula
	implicit none
	integer::n,i,j
	real,allocatable::x(:),f(:),a(:)
	real::prod,point,summ=0
	print*,'Enter the no. of datapoints'
	read*,n
	allocate(x(n))
	allocate(f(n))
	allocate(a(n))
	open(1,file='newton_data')
	do i=1,n
		read(1,*)x(i),f(i)
	end do
	print*,'enter the value of unknown x'
	read*,point
	a(1)=f(1)
	outt: do i=2,n
		prod=1
		inn: do j=1,i-1
			prod=prod*(x(i)-x(j))
		end do inn
		a(i)=(f(i)-f(i-1))/prod
	end do outt
	summ=summ+a(1)
	outt1: do i=2,n
		prod=1
		inn1: do j=1,i-1
			prod=prod*(point-x(j))
		end do inn1
		summ=summ+a(i)*prod
	end do outt1		
	
	print*,'at',point,'interpolated value=',summ
	
end program
