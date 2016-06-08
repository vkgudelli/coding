module modeigen
	
	implicit none
	contains
	
	real function deter(a,n)	
		integer,intent(in)::n	
		real,intent(in)::a(n,n)
		real::prod=1
		integer::piv=0,i,j
	
		outt: do i=1,n
			call pivot(a(:,i),n,i,piv)
			call swaparray(a,i,piv,n)
			inn: do j=i+1,n
				a(j,:)=a(j,:)-(a(i,:)/a(i,i))*a(j,i)
			end do inn
		end do outt

		do i=1,n
			prod=prod*a(i,i)
		end do

		deter=prod
	end function		



	subroutine pivot(x,n,k,piv)
		!searches the pivot element of the given column and denotes its 			position 
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

subroutine bisect(a,b)
	
	!solution of nonlinear equation using bisection method
	
	real,intent(in):: a,b
	real:: x1,x2,x0
	
	x1=a
	x2=b
	outt: if (abs(func(x1))<1e-6) then
		print*,'root = ',x1
	else if (abs(func(x2))<1e-6) then
		print*,'root = ',x2
	else if (func(x1)*func(x2)>0) then
		print*,'no root in this range'
	else
		do
			x0=(x1+x2)/2
			if ((func(x0))*(func(x1))<0) then
				x2=x0
			else
				x1=x0
			end if

			if (abs(x1-x2)<1e-6) then
				exit
			else
				cycle
			end if
		end do
	print*,'the root is: ',x1
	end if outt
	print*,func(3.0999)
end subroutine


	real function func(a,b,n,x)
		implicit none
		integer,intent(in)::n
		real,intent(in)::a(n,n),b(n,n),x
		real::c(n,n)
		c=a-x*b
		func=deter(c,n)
	end function

end module
