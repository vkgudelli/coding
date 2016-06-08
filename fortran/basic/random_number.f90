program  random
implicit none
integer:: i,n,c
real,allocatable, dimension(:)::R
integer,dimension(12)::seed
print*,'enter the value of n'
read*, n
allocate(R(n))
call system_clock(c)
c=seed(1)
call random_seed(put=seed)
do i=1,n
 call random_number(R(i))
print*, R(i)
end do
end program