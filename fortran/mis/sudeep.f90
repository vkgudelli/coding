program qmech
implicit none
real,parameter:: h=0.76199682
real:: m,a,v0,alpha,beta,fe,e=0,b
integer::n
open(1,file='suddep.dat')
open(2,file='y.dat')
print*,"enter the mass of the electron:"
read*,m
print*,"enter the width of the well:"
read*,a
print*,"Enter the amplitude of the potential:"
read*,v0
do 
b=fe
if(e>=v0)exit
alpha=sqrt((2*m*e)/(h))
beta=sqrt((2*m*(v0-e))/(h))
fe=(beta)* cos(alpha*a) - (alpha) * sin(alpha*a)
write(1,*) e,fe
write(2,*) e,0
if(b*fe<0) then 
print*,e
e=e+0.01
endif
end do
end