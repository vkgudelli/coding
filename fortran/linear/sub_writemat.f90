subroutine writemat(x,m,n)
	implicit none	
	integer,intent(in)::m,n
	real,dimension(m,n)::x
	integer::i,j
	do 21 i=1,m
	21 print*,(x(i,j),j=1,n)
	end subroutine
