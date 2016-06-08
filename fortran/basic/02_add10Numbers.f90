!program to find the sum of 10 numbers using array
program main
      implicit none
      integer::X(10),i
      print*,"Enter 10 numbers for addition"
      do i=1,10
        read*,X(i)
      end do
      print*,"The sum is =",sum(X)
end program
