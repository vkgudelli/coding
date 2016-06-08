subroutine pivot(x,n,piv)
	!searches the pivot element of the given column and denotes its position 
	integer,intent(in)::n
	integer,intent(inout)::piv
	real,intent(in)::x(n)
	integer::i
	real::big
	big=abs(x(1))
	piv=1
	
	do i=2,n
			print*,piv	
			if(abs(x(i))>big) then
			big=abs(x(i))
			piv=i
		else 
			cycle
		end if
	end do
end subroutine
