!newtons iteration methord-computing technique is difference table
program main
implicit none
	real,allocatable::x(:),a(:),d(:,:)
	integer::i,j,n
	real::prod,summ,y,tot
	print*,'enter the number of data points'
	read*,n
	allocate(x(n),a(n),d(n,n))
	open(1,file='data')
	!print*,'enter the value of x and f(x) one set in each line'
	!do i=1,n
	!read*,x(i),f(i)
	!end do
	do i=1,n
		read(1,*) x(i),d(i,1)
	end do
	print*,'enter the value of unknown'
	read*,y
	do j=2,n
	 do i=1,n-j+1
	 d(i,j)=(d(i+1,j-1)-d(i,j-1))/(x(i+j-1)-x(i))
	 end do
	end do
	do j=1,n
		a(j)=d(1,j)
	end do
	summ=a(1)
	do i=2,n
	prod=1.0
		do j=1,i-1
		prod=prod*(y-x(j))
		end do
		summ=summ+(prod*a(i))
	end do
	tot=summ
	print 1,'at',y,'interpolated value= ',tot
	1 format(a2,f8.4,2x,a19,f8.4)
	end program