program matrix	! basic features of matrix
	implicit none
	integer,dimension(10,10)::a,b,c	!three matrices
	integer:: m1,n1,m2,n2,i,j,k
	print*,'enter the order of the matrix A'
	read*,m1,n1
	print*,'write the matrix A'
	do 10 i=1,m1
	10 read*,(a(i,j),j=1,n1)
	print*,'enter the order of the matrix B'
	read*,m2,n2
	print*,'write the matrix B'
	do 11 i=1,m2
	11 read*,(b(i,j),j=1,n2)
	print*,'matrix A:'
	do 12 i=1,m1
	12 print*,(a(i,j),j=1,n1)
	print*,'matrix B:'
	do 13 i=1,m2
	13 print*,(b(i,j),j=1,n2)
	if (n1==m2) then
	loop1: do i=1,m1
	loop2: do j=1,n2
		c(i,j)=0
        loop3: do  k=1,n1
		c(i,j)=c(i,j)+a(i,k)*b(k,j)
		end do loop3
		end do loop2
		end do loop1
		print*,'matrix C:'
	do 14 i=1,m1
	14 print*,(c(i,j),j=1,n2)
	else
	print*,'orders mismatch'
	end if
end program matrix
	
