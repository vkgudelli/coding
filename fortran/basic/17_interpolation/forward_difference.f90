!program to produce forward difference table.
program main
    implicit none
    integer::ios,i,j,n=0
    real::junk
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
    do i = 1, n
            write(2,*)X(i),(F(i,j),j=1,n)
    end do
end program main
