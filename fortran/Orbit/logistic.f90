!logistic map (function xn+1=r*xn(1-xn))
!created by Anoop Chandran
program logistic
    implicit none
    real::r,f,x !f=xn+1 and x=xn
    integer::n,i !n=number of points in the x axis
    real,allocatable,dimension(:)::X1,Y1 !allocatable arrays for storing x and y datas
    x=0.1
    !asking the values of r and n
    print*,"enter the value of r and n"
    read*,r,n
    allocate(X1(n),Y1(n))
    !the data to be written on the file logistic.txt
    open(1,file="logistic.txt")
    !running a loop from 1 to n such that each time the x value is the f value
    do i=1,n
    	f=r*x*(1-x)
    	X1(i)=x
    	Y1(i)=f
    	x=f !re-assigning the value of x to be f for the next iteration
    	!print*,X1(i),Y1(i)
    end do
    ! writing the datas stored in X1 and Y1 to file logistic.txt
    do i=1,n
    	write(1,*) X1(i),Y1(i)
    end do
end program

