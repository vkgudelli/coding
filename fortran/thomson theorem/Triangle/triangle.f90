
PROGRAM TRIANGLE
IMPLICIT NONE
REAL, PARAMETER :: T=1e-8,ERROR=0, EPS=0,DX=.1
INTEGER, PARAMETER :: N=5,D=2
REAL, DIMENSION(N,D):: R
REAL :: E, E_N, DE, X, Y,Z
INTEGER :: I,J,K, cnt
integer, dimension(12)::seed

OPEN(1,FILE = 'Config_i.dat', STATUS ='UNKNOWN')
OPEN(2,FILE = 'Config_f.dat', STATUS ='UNKNOWN')

!INITIALISE CONFIG FOR TRIANGLE
 call system_clock(cnt)
 seed=cnt
I=1
DO WHILE (I.le.N)
 call random_seed(put=seed)
 call random_number(x)
 X=X*1.5-0.5
 call random_seed(get=seed)
 call random_seed(put=seed)
 call random_number(y) 
 Y=(Y-0.5)*SQRT(3.0)
 call random_seed(get=seed)
 IF((X+SQRT(3.0)*Y .LT. 1) .AND. (X-SQRT(3.0)*Y .LT. 1)) then
  R(I,1)=X
  R(I,2)=Y
  WRITE(1,*)(R(I,J),J=1,2)
  I=I+1
 END IF
END DO 
 
 CALL MCM(R,E)
 WRITE(2,*)(R(I,J),J=1,2)


 CONTAINS
 
 SUBROUTINE MCM(R,E)
  REAL, intent( inout ) :: E
  REAL, intent( inout ) , DIMENSION(N,D):: R
  REAL, DIMENSION(D) :: X
  REAL, DIMENSION(N,D):: R_N
  INTEGER :: I,J,K,cnt, var,l	
  integer, dimension(12)::seed
  real :: s,de !another rand number, and de
  
  l=1
  DO WHILE(l .lt. 500)!MCM CRITERION 
  I=1
  call system_clock(cnt)
  seed=cnt
  DO WHILE (I.le.N)
	   do j=1,d
            do k=1,n
            R_N(k,j)=R(k,j)
            end do
           end do
	 call random_seed(put=seed)
     call random_number(x)
	 do j=1,d
          X(j)=(X(j)-0.5)*DX 
         end do
	 call random_seed(get=seed)
            var=check(R, X, i)
	 IF(var .eq. 1) then 
          do j=1,d
           R(I,j)=R(I,j)+X(j)
          end do
	  call random_seed(put=seed)
          call random_number(s)
          de=dPOTENTIAL(R_N, R, E, I)
          print*, "delta=",de
	  if(de .lt. 0.0) then
	   do j=1,d
            do k=1,n
            R_N(k,j)=R(k,j)
            end do
           end do
	  else if(exp(-de/(k*t)) .gt. s) then
 	   do j=1,d
            do k=1,n
            R_N(k,j)=R(k,j)
            end do
           end do
	  end if
          
                WRITE(1,*)(R(I,J),J=1,2)

	  call random_seed(get=seed)
         I=I+1
	 END IF
  END DO 
  l=l+1
  END DO
  
 END SUBROUTINE MCM
 
 INTEGER function check(r_n,x,i)
   REAL, INTENT(IN), DIMENSION(N,D):: R_N
   REAL, INTENT(IN), dimension(d) :: x
   integer, intent(in) :: i
   IF( (R_n(I,1)+X(1))+SQRT(3.0)*(R_n(I,2)+X(2)) .LT. 1 .AND. &
    (R_n(I,1)+X(1))-SQRT(3.0)*(R_n(I,2)+X(2)).LT. 1 .and. &
     R_n(I,1)+X(1) .gt. -0.5) then
   check=1
   ELSE 
    check=0
   end if

 RETURN
end function
 
 REAL function dpotential(r_n,r,e,i)
   REAL :: de=0,rij,rijn
   REAL, INTENT(IN), DIMENSION(N,D):: R_N, R
   REAL, INTENT(IN):: e
   integer, intent(in) :: i
   integer :: j,k
   real, parameter::  c=2.304e-28 !q^2/4 pi eps
   do j=1,n
   rij=0
   rijn=0
    if(j /= i)then
	  do k=1,d
	    rij=rij+ (R(I,k)-r(j,k))**2
	    rijn=rijn+ (R_n(I,k)-r_n(j,k))**2
	  end do
	   rij=sqrt(rij)
	   rijn=sqrt(rijn)
	   de=de- c/rij +c/rijn
	end if
   end do  
 dpotential=de
 RETURN
 end function
END PROGRAM                                              

