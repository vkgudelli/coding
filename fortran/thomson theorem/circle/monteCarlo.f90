      program monteCarlo
      implicit none
      real,parameter::pi=3.141592
      real,allocatable,dimension(:)::X,Y,R,Xnew,Ynew,Rnew
      real::a,b,dx,dy,dxdummy,dydummy,Xold,Yold,E1,E2,dE,T
      integer,dimension(12)::seed
      integer::c,n,i,j,k,l
      T=1e-8
      E1=0
      E2=0
      print*,'enter the number of particles'
      read*,n
      allocate(X(n),Y(n),Xnew(n),Ynew(n),R(n),Rnew(n))
      open(1,file="initialConfig")
      open(2,file="finalConfig")
      call system_clock(c)
      seed=c
      call random_seed(put=seed)
            do i=1,n
                  10 call random_number(X(i))
                  call random_number(Y(i))
                  call random_number(a)
                  call random_number(b)
                  if(a<0.5)X(i)=-X(i)
                  if(b<0.5)Y(i)=-Y(i)
                  if ((X(i)**2+Y(i)**2)>1) goto 10
                  R(i)=sqrt((X(i)**2+Y(i)**2))
                  write(1,*) X(i),Y(i)
            end do

            do i=1,n
                  do j=1,n
                  if(i/=j)E1=E1+(1/sqrt((X(i)-X(j))**2+(Y(i)-Y(j))**2)) !scaling qiqj/8pi eps
                  end do
            end do
            
      do l=1,10000
            do i=1,n
                  Xold=X(i)
                  Yold=Y(i)
                  20 call random_number(dxdummy)
                  call random_number(dydummy)
                  call random_number(a)
                  call random_number(b)
                  if(a<0.5)dxdummy=-dxdummy
                  if(b<0.5)dydummy=-dydummy
                  dx=dxdummy/2
                  dy=dydummy/2
                  if ((dx**2+dy**2)>0.25) goto 20
                  Xnew(i)=X(i)+dx
                  Ynew(i)=Y(i)+dy
                  if((Xnew(i)**2+Ynew(i)**2)>1)goto 20
                  Rnew(i)=sqrt((Xnew(i)**2+Ynew(i)**2))
                  X(i)=Xnew(i)
                  Y(i)=Ynew(i)
                  R(i)=sqrt((X(i)**2+Y(i)**2))
                  
                  do j=1,n
                        do k=1,n
                        if(j/=k)E2=E2+(1/sqrt((X(i)-X(j))**2+(Y(i)-Y(j))**2))  !scaling qiqj/8pi eps
                        end do
                  end do
                  
            dE=E2-E1
            if(dE<0)then
            X(i)=Xnew(i)
            Y(i)=Ynew(i)
            elseif(dE>0.and.exp(-dE/T)>a)then
            X(i)=Xnew(i)
            Y(i)=Ynew(i)
            else
            X(i)=Xold
            Y(i)=Yold
            end if
       end do
      end do
      do i=1,n
      write(2,*) Xnew(i),Ynew(i)
      end do

      call system('gnuplot initialConfig.gpl')
      call system('gnuplot finalConfig.gpl')
            
            
       end program
