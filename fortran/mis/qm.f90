program finite_square_well
implicit none
real,parameter::pi=3.14
real :: z0,rad,y1,y,y2
integer,dimension(13)::seed
real,dimension(1):: z
integer:: c,n,i
read*,z0
read*,n
call system_clock(c)
seed=c
call random_seed(put=seed)
do i=0,n
call random_number(z)
open(1,file='abc.dat')
rad=(pi*(z(1)*360))/180
y1=tan(rad)
y=(z(1)/z0)
y2=sqrt((y**2)-1)
write(1,*) z(1),rad,y1,y2
end do
end
 
