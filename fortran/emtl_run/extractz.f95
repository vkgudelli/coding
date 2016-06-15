program main
implicit none
        character(len=20)::filename,file_name,plot_name,sy
        ! real,allocatable::datas(:,:)
        real::datas(50,7)
        real::junk,temp,summ,tempreadx,tempreadI,isumm,itemp
        real::t,x,y,z
        integer::ios,numy,i,j,n,ni
        call get_command_argument(1,filename)
        ! call get_command_argument(2,sy)
        summ=0;temp=0;isumm=0;itemp=0;n=0
        ! read(sy,*)y
        open(unit=3,file="f_f"//trim(filename)//".d",status="unknown")
        open(unit=4,file="f_f"//trim(filename)//".zd_left",status="unknown")
        ! do
        !         read(3,*,iostat=ios)junk
        !         if(ios/=0)exit
        !         n=n+1
        ! end do
        ! rewind(3)
        ! allocate(datas(n,7))
        do i=1,50
                   read(3,*)(datas(i,j),j=1,7) !t,x,y,z,Ex,Ey,Ez of out
        end do

            do i=1,50
                ! if(datas(i,2)==2.9.and.datas(i,3)==2.9)then
                    summ=(datas(i,5)**2)/2.0+(datas(i,6)**2)/2.0+(datas(i,7)**2)/2.0 !intensity
                    write(4,*)datas(i,1),datas(i,2),datas(i,3),datas(i,4),summ !,isumm/2.0
                ! end if
                summ=0.0
            end do
end program
