program main
    implicit none
    character(len=20)::sf,file_name,plot_name
    real::f,lamda,temp,resolution,f0,A,w
    real(8)::sinc,Jq,I,x,y,z,m,one,two,three,four
    integer::j,k,num,q
    real, parameter::pi=4*atan(1.0)
    A=1;temp=0;resolution=0.01;;Jq=0;y=0
    z=2.7;w=2.3;f0=2.5;
     do k=15,70
        f=k*0.1
        write(sf,"(I2)")k
        open(unit=k,file=trim(sf)//"data.tod")
        lamda=1/f
        m=2*pi*0.5/lamda !2pi*thickness/lamda
        do j=-500,500
            x=j*resolution
            !real equation
            do q=-50,50
                one=(m/2)*(BESSEL_JN(q,x)**2)
                two=(sinc((2*w/(lamda*z))*(x-(q*f0*lamda*z))))**2
                three=(sinc(2*w*y/(lamda*z)))**2
                Jq=Jq+one*two*three
            end do
            I=((A/(lamda*z))**2)*Jq
            ! print*,x,I
            write(k,*)x,I
            Jq=0
        end do
        file_name="'"//trim(sf)//"data.tod'"
        plot_name="'"//trim(sf)//"data'"
        call system('gnuplot -e "file_name='//file_name//';plot_name='//plot_name//'" plot2.gpl')
     end do
end 

!sin(x)/x function which uses factorial function
function sinc(x)
    implicit none
    integer::k,n
    real(8)::x,sinc
    if (x==0) then
        sinc=1
    else
            sinc=sin(x)/x
    end if
end function sinc

