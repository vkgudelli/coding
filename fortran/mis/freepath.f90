program freepath
implicit none
real::l,f,x,s,av
integer::i,n,c
integer,dimension(12)::seed
print*,'Give l & n'
read*,l,n
open(1,file='free.dat')
call system_clock(c)
seed=c
call random_seed(put=seed)
do i=1,n
  call random_number(f)
  x=-(l*log(f))
  s=s+x
  write(1,*)x,f/l
end do
av=s/n
print*,av
end program freepath
  