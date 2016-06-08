!ploting x vs r i.e the orbit diagram
!created by Anoop Chandran
program orbit
implicit none
	!f=xn+1,x=xn and Y1 is the array that stores the points
	real::x,f,r,Y1(300)
	integer::i,j
	!initial values of x and r
	x=0.1
	r=2.8
	!the data (r and x or f) will be stored in the file orbit.txt
	open(1,file="orbit.txt")
	!since r has to run from 3.3 to 4 and the incrimental step is 0.001 we have to run \\
	!the first loop from 1 to 700
	do j=1,700
		r=r+0.001 !incrimenting the value of r
		do i=1,600
			f=r*x*(1-x)
			!neglecting the values befor transiant state ie upto 300
			if(i>300) then
				Y1(i-300)=f
				write(1,*) r,Y1(i-300)
			end if
			x=f !re-assigning the new x value as f
		end do
	end do
end program
