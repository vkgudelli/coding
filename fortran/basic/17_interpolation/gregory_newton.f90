!program to produce forward difference table.
program main
    implicit none
    integer::ios,i,j,n=0
    real::junk,xn,fn,h=1.0,s,comb
    real(16)::factorial
    real,allocatable::X(:),F(:,:)
    open(1,file="data_in")
    open(2,file="data_out")
    !to calculate the number of lines in a file(n)
    do
        read(1,*,iostat=ios)junk
        if(ios/=0)exit
        n=n+1
    end do
    rewind(1)
    !allocating the array legth according to n
    allocate(F(n,n),X(n))
    !reading the input file
    do i = 1, n
        read(1,*)X(i),F(i,1)
    end do
    !calculating the forward difference
    do j = 2, n
        do i = 1, n-j+1
            F(i,j)=F(i+1,j-1)-F(i,j-1)
        end do
    end do
    !writing the table to output file
    do i = 1,n
            print*,F(1,i)
    end do

    !Gregory_Newton method
    ! print*,"enter the value of x"
    ! read*,xn
    ! s=(xn-X(1))/h
    ! fn=0.0;comb=1.0
    ! do i = 0, n-2
    !     comb=(comb*(s-i)/factorial(i))*F(1,i+2)
    !     fn=fn+comb
    ! end do
    ! print*,fn

end program main

function factorial(n) result(fact)
implicit none
    integer::i,n
    real(16)::fact
    fact=1.0
    if (n==0) then
        fact=1.0
    else
        do i = 1, n
            fact=fact*real(i)
        end do
    end if
end function factorial


