program qmech
implicit none
real,parameter:: h=0.76199682
real:: m,a,v0,alpha,beta,feven,fodd,e=0
integer::n
open(1,file='feven.dat')
open(2,file='y.dat')
open(3,file='fodd.dat')
print*,"enter the mass of the electron:"
read*,m
print*,"enter the width of the well:"
read*,a
print*,"Enter the amplitude of the potential:"
read*,v0
do 
if(e>=v0)exit
alpha=sqrt((2*m*e)/(h))
beta=sqrt((2*m*(v0-e))/(h))
feven=(alpha)*sin(alpha*a)-(beta)* cos(alpha*a)
fodd=(alpha)*cos(alpha*a)+(beta)* sin(alpha*a)
write(1,*) e,feven
write(2,*) e,0
write(3,*)e,fodd
e=e+0.01
end do
end