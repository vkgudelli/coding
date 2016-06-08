module cofactor
	implicit none
contains
function cofact(a,n,k,l)
	!calculates the cofactor matrix of a given element of the given matrix
	implicit none
	integer,intent(in)::n,k,l
	integer::cofact(n-1,n-1)	!definition of function type
	integer,intent(in):: a(n,n)
	integer::c(n-1,n-1)
	integer:: i,j
	
	outt1: do i=1,k-1
		inn1: do j=1,l-1
			c(i,j)=a(i,j)
		end do inn1
		inn2: do j=l,n-1
			c(i,j)=a(i,j+1)
		end do inn2
	end do outt1
	
	outt2: do i=k,n-1
		inn3: do j=1,l-1
			c(i,j)=a(i+1,j)
		end do inn3
		inn4: do j=l,n-1
			c(i,j)=a(i+1,j+1)
		end do inn4 
	end do outt2
	
	cofact=c

end function
end module
