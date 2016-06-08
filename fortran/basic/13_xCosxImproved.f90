!program to find the root of x-cos(x) improved version.
program main
    implicit none
    real::x,y,xn,xn_next,xn_prev,alpha
    integer::i,n
    x=1.0;n=0
    y=x-cos(x)
     do while (abs(y)>=0.01)
        xn_prev=x
        xn=cos(xn_prev)
        xn_next=cos(xn)
        alpha=xn_next-((xn_next-xn)**2/(xn_next-2*xn+xn_prev))
        y=alpha-cos(alpha)
        n=n+1
        x=cos(alpha)
     end do
     print*,x,n
end program main
