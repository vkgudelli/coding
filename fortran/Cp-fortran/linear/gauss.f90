!gauss elimination methord to solve a system of linear equations with pivoting
program main
use mod_gauss
implicit none
integer::n,i,j,piv=0
real,allocatable::a(:,:),b(:),x(:)
real::tmp,tot

  print*,'enter the number of equations'
  read*,n
  allocate(a(n,n),b(n),x(n))
  print*,'enter the coefficent matrix'
  call readmat(a,n,n)
  call writemat(a,n,n)
  print*,'enter the constant vector matrix'
  call readmat(b,n,1)
  call writemat(b,n,1)
  do i=1,n
    call pivot(a(:,i),n,i,piv)
    call swaparray(a,b,i,piv,n)
    tmp=a(i,i)
    a(i,:)=a(i,:)/tmp
    b(i)=b(i)/tmp
      do j=i+1,n
	tmp=a(j,i)
	a(j,:)=a(j,:)-a(i,:)*a(j,i)
	b(j)=b(j)-b(i)*tmp
    end do
 end do
 
 do i=n,1,-1
 tot=0
  do j=i+1,n,1
    tot=tot+a(i,j)*x(j)
   end do
   x(i)=b(i)-tot
  end do
  print*,'the roots are'
  call writemat(x,n,1)
  
  end program