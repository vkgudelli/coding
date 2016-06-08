program inverse
	!determines the inverse of a matrix using gauss-jordan method
	
	use mod_inverse
	implicit none
	integer::n,piv=0,i,j
	real,allocatable::a(:,:),b(:,:)
	real::temp,summ

	print*,'enter the dimension of the matrix: '
	read*,n
	allocate(a(n,n))
	allocate(b(n,n))
	print*,'enter the matrix:'
	call readmat(a,n,n)
	print*,'the matrix is:'
	call writemat(a,n,n)
	outt2: do i=1,n
		inn2: do j=1,n
			if (i==j) then
				b(i,j)=1
			else
				b(i,j)=0
		end if
		end do inn2
	end do outt2
	
	outt: do i=1,n
		call pivot(a(:,i),n,i,piv)
		call swaparray(a,b,i,piv,n)
		temp=a(i,i)
		a(i,:)=a(i,:)/a(i,i)
		b(i,:)=b(i,:)/temp
		inn: do j=1,n
			if (j==i) cycle
			temp=a(j,i)
			a(j,:)=a(j,:)-a(i,:)*a(j,i)
			b(j,:)=b(j,:)-b(i,:)*temp
		end do inn
	end do outt
	print*,'The inverse of the given matrix:'
	call writemat(b,n,n)
	deallocate(a)
	deallocate(b)
end program
