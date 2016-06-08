program Thomson
implicit none
real,allocatable::pos(:,:)!stores the position of the charge points
real::a,b !box dimensions
real::phi!energy of configuration
real::d_phi!change in energy
real,parameter::T=0.0003!temperature prameter
real,parameter::k = 2.304E-28!electrostatic parameter
real,parameter::kb = 1.38E-23!botzmann constant
real,parameter::epsln = 1.0!power law
integer::N!number of charges
integer:: i,j,cnt,cntrl
integer,dimension(12) :: seed
real::R
real::tx,ty,phi_new,beta,dtx,dty !program write_time variables
!assigning box dimensions
a = 4.0
b = 2.0

print*,'Enter number of charges in system'
read*,N

allocate(pos(N,2))!two dimensional system

call random_assign(a,b)

!calculating intial electrostatic energy
phi = 0.5*energy(N)
print*,'initial energy',phi
!-----------------------------------------------------------------------------------------------------------------------------------
open(1,file='prac')
do i=1,N
write(1,*)pos(i,1),pos(i,2)
end do
!-----------------------------------------------------------------------------------------------------------------------------------


!overall convergence to global minimum
do cntrl = 1 ,500000
!___________________________________________________________________________________________________________________________________
!displacement run
do i=1,N
 tx = pos(i,1)!temporarily storing the co-ordinates of the charges to be moved
 ty = pos(i,2)

10 do j=1,2
    call system_clock(cnt)
    seed=cnt
    call random_seed(put=seed)
    call random_number(R)
    pos(i,j)=pos(i,j) + .05*(R-.5)
    call random_seed(get=seed)
   end do

!checking for boundaries,reassign displacement if limit exceeded by reflection
if(pos(i,1)>a)then
dtx = pos(i,1)-tx
pos(i,1) = tx-dtx
elseif(pos(i,1)<0.0)then
dtx = pos(i,1)-tx
pos(i,1) = tx-dtx
elseif(pos(i,2)>b)then
dty = pos(i,2)-ty
pos(i,2) = ty-dty
elseif(pos(i,2)<0.0)then
dty = pos(i,2)-ty
pos(i,2) = ty-dty
end if
!to keep or not to keep the new configuration
 phi_new = 0.5*energy(N)
 d_phi = phi_new - phi
 !print*,'t',d_phi
 if(d_phi<0.0)then
  phi = phi_new
  continue
 else
  beta = exp(-(d_phi/(kb*T)))
  call system_clock(cnt)
  seed=cnt
  call random_seed(put=seed)
  call random_number(R)
  call random_seed(get=seed)
   if(beta<R)then
    pos(i,1) = tx
    pos(i,2) = ty
   else
    phi = phi_new
    continue
   end if
  end if
end do
!_________________________________________________________________________________________________________________________________
end do
print*,'final enregy',phi

!-----------------------------------------------------------------------------------------------------------------------------------
open(2,file='prac1')
do i=1,N
write(2,*)pos(i,1),pos(i,2)
end do
!-----------------------------------------------------------------------------------------------------------------------------------


contains
!-----------------------------------------------------------------------------------------------------------------------------------
real function energy(N)
integer,intent(in)::N
integer::i,j
real::r,e
e=0.0
do i=1,N
 do j = 1,N
  if(i.ne.j)then
   r = sqrt((pos(i,1)-pos(j,1))**2.0 + (pos(i,2)-pos(j,2))**2.0)
   e = e + k/(r**epsln)
  else
   cycle
  end if
  end do
end do
energy = e
end function energy
!--------------------------------------------------------------------------------------------------------------------------------
subroutine random_assign(a,b)
 real,intent(in)::a,b  
 integer :: i,j,g
 call system_clock(cnt)
 seed=cnt
do j=1,2
g=j
 do i=1,N
    call random_seed(put=seed)
    call random_number(R)
    if(g==1)then
    pos(i,j) = a*R
    else
    pos(i,j) = b*R
    end if
    call random_seed(get=seed)
 end do
end do
end subroutine random_assign
!---------------------------------------------------------------------------------------------------------------------------------
end program
