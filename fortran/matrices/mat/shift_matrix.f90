program shift_matrix		!shifts rows and columns of a matrix
	implicit none
	integer,dimension(3,3)::a,b,c	!three matrices
	integer::i,j,d 	
	a=reshape((/1,2,3,4,5,6,7,8,9/),(/3,3/),order=(/2,1/))
	print*,'matrix A:'
	do 12 i=1,3
	12 print*,(a(i,j),j=1,3)
	b=cshift(a,1,1)	
	print*,'matrix B:'
	do 13 i=1,3
	13 print*,(b(i,j),j=1,3)
	c=matmul(a,b)
	do 14 i=1,3
	14 print*,(c(i,j),j=1,3)
	d=dot_product(a(1,:),a(:,2))
	print*,d
end 
	
