           program fourier
           
           real::  x   ,  f=0.0
           integer:: n,i
          ! print*, 'enter the value of x'
           !read*, x
            open(1,file='fourier.txt')
             open(2,file='fourier2.txt')
            do  i=50,10000
              x=1/(1.0*i)
             f=0
           do n=1,1000


           
           f=f+((sin((2*n-1)*x))/(2*n-1))

           end do
            write(1,*) f
            Write(2,*) x
           end do

           end program fourier
