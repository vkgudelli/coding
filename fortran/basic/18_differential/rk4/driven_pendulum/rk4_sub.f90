subroutine rk4(h,n,x0,y0,v0,x,y,v)
implicit none
    real::x0,xn,h,y0,v0,dy,dv,k11,k12,k21,k22,k31,k32,k41,k42
    integer::i,n
    real:: x(n),y(n),v(n)
    x(1)=x0;y(1)=y0;v(1)=v0
    do i = 1, n
        k11=dy(x(i),y(i),v(i))
        k12=dv(x(i),y(i),v(i))
        k21=dy(x(i)+h/2.0,y(i)+h*k11/2.0,v(i)+h*k12/2.0)
        k22=dv(x(i)+h/2.0,y(i)+h*k11/2.0,v(i)+h*k12/2.0)
        k31=dy(x(i)+h/2.0,y(i)+h*k21/2.0,v(i)+h*k22/2.0)
        k32=dv(x(i)+h/2.0,y(i)+h*k21/2.0,v(i)+h*k22/2.0)
        k41=dy(x(i)+h,y(i)+h*k31,v(i)+h*k32)
        k42=dv(x(i)+h,y(i)+h*k31,v(i)+h*k32)
        
        y(i+1)=y(i)+(h/6.0)*(k11+2.0*(k21+k31)+k41)
        v(i+1)=v(i)+(h/6.0)*(k12+2.0*(k22+k32)+k42)
        x(i+1)=x(i)+h
    end do
        
end subroutine rk4


