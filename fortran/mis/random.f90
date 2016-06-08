program problem7
implicit none
real,dimension(20)::x
integer,dimension(12)::seed
integer,dimension(0:20)::pm
integer::c,i,j,n,m,k,l
open(1,file='rnd.dat')
pm = 0
print*,'Give n'
read*,n
call system_clock (c)
 seed=c
 call random_seed (put=seed)
 do i=1,n
 m = 0
  do j=1,20
    call random_number(x(j))
    if(x(j).ge.0.7) then
    m=m+1
    endif
  enddo
  do k=0,20
    if(m==k)then
    pm(k)=pm(k)+1
    endif
    end do
    end do
  do l=0,20
  write(1,*) l,pm(l)
  end do
 end program