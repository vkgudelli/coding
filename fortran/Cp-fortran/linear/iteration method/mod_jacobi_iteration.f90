module mod_jacobi_iteration
implicit none
 contains
 
 subroutine readmatrix(x,m,n)
 implicit none
	integer,intent(in)::m,n
	real,dimension(m,n)::x
	integer::i,j
	do 20 i=1,m
	20 read*,(x(i,j),j=1,n)
 end subroutine
 
 subroutine writematrix(x,m,n)
 implicit none
	integer,intent(in)::m,n
	real,dimension(m,n)::x
	integer::i,j
	do 21 i=1,m
	21 print*,(x(i,j),j=1,n)
 end subroutine
 end module