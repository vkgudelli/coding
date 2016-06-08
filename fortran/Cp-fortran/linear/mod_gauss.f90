module mod_gauss
  implicit none
  contains

  !************************************************************************************************************!
  !*     subroutine to find the pivot in the given matrix x with n elements k is the loop element from the               
  !*     main program piv is set to zero at the begining from the main program                                                   
  !************************************************************************************************************!
subroutine pivot(x,n,k,piv) 
	integer,intent(in)::n,k
	integer,intent(inout)::piv
	real,intent(in)::x(n)
	integer::i
	real::big
	big=abs(x(k))
	piv=k
	
	do i=k+1,n	
			if(abs(x(i))>big) then
			big=abs(x(i))
			piv=i
		else 
			cycle
		end if
	end do
end subroutine

!***********************************************************************************************************!
!*    subroutine to read an mXn matrix m and n from the main program                                                         *
!***********************************************************************************************************!

subroutine readmat(x,m,n)
	implicit none	
	integer,intent(in)::m,n
	real,dimension(m,n)::x
	integer::i,j
	do 20 i=1,m
	20 read*,(x(i,j),j=1,n)
end subroutine

!***********************************************************************************************************!
!*    subroutine to write a mXn matrix m and n from the main program                                                         *
!***********************************************************************************************************!

	
subroutine writemat(x,m,n)
	implicit none	
	integer,intent(in)::m,n
	real,dimension(m,n)::x
	integer::i,j
	do 21 i=1,m
	21 print*,(x(i,j),j=1,n)
end subroutine

!***********************************************************************************************************!
!*    subroutine to swap/interchange 2 arrys in a matrix  x is the nxn coefficent matrix and y is then
!*    constant vector matrix of dimension n(arry of dim n)
!***********************************************************************************************************!


	
subroutine swaparray(x,y,i,j,n)
	implicit none
	integer,intent(in)::i,j,n
	real,intent(inout)::x(n,n),y(n)
	real::temp(n),tempo
	integer::k
	do k=1,n
		temp(k)=x(i,k)
		x(i,k)=x(j,k)
		x(j,k)=temp(k)
	end do
	tempo=y(i)
	y(i)=y(j)
	y(j)=tempo
end subroutine

end module
