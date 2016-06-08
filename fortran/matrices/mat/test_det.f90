program test_determinat
	integer::a(2,2),det
	print*,'enter the matrix elements'
	call readmat(a,2,2)
	det=a(1,1)*a(2,2)-a(1,2)*a(2,1)
	print*,det

end program
