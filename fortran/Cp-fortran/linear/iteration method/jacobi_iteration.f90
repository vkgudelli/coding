!progam to solve the system of linear equations by jacobi iteration method
program main
use mod_jacobi_iteration
implicit none
integer::n,i,j,flag,countt=0,k
real,allocatable::a(:,:),b(:),xold(:),xnew(:)
real::summ
print*,'enter te no of equations'
read*,n
allocate(a(n,n),b(n),xold(n),xnew(n))
print*,'enter the coefficent matrix'
call readmatrix(a,n,n)
print*,'enter the vector'
call readmatrix(b,n,1)

do i=1,n
xold(i)=b(i)/a(i,i)
end do
do k=1,50
flag=0
	do i=1,n
	summ=0
		do j=1,n
		if(i/=j) summ=summ+a(i,j)*xold(j)
		end do
	xnew(i)=(b(i)-summ)/a(i,i)
	if(abs((xnew(i)-xold(i))/xnew(i))>1e-3)flag=1
	end do
	if(flag==0)exit
	xold=xnew
	countt=countt+1
enddo
	if (countt==50) then
		print*,'no convergence in 50 iterations'
	else
		print*,'the roots are:'
		call writematrix(xnew,n,1)	
		print 1,'no of iterations=',countt
		1 format(a18,i2)
	end if
	end program
	