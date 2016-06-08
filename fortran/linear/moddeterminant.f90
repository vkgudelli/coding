module moddeterminant
	implicit none
contains

subroutine pivot(x,n,k,piv)
	!searches the pivot element of the given column and denotes its position 
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

subroutine readmat(x,m,n)
	implicit none	
	integer,intent(in)::m,n
	real,dimension(m,n)::x
	integer::i,j
	do 20 i=1,m
	20 read*,(x(i,j),j=1,n)
end subroutine
	
subroutine writemat(x,m,n)
	implicit none	
	integer,intent(in)::m,n
	real,dimension(m,n)::x
	integer::i,j
	do 21 i=1,m
	21 print*,(x(i,j),j=1,n)
	end subroutine

	subroutine swaparray(x,i,j,n)
		implicit none
		integer,intent(in)::i,j,n
		real,intent(inout)::x(n,n)
		real::temp(n),tempo
		integer::k
		do k=1,n
			temp(k)=x(i,k)
			x(i,k)=x(j,k)
			x(j,k)=temp(k)
		end do
	
	end subroutine



end module
