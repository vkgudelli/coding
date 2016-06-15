program main
implicit none
        character(len=20)::filename,sy
        real,allocatable::datas(:,:)
        real::junk,temp,summ
        real::x,y,z,t
        integer::ios,numy,i,j,n,ni
        call get_command_argument(1,filename)
        call get_command_argument(2,sy)
        summ=0;temp=0;n=0
        read(sy,*)y
        open(unit=3,file="f_f"//trim(filename)//".zd_left",status="unknown")
        open(unit=4,file="f_f"//trim(filename)//".y"//trim(sy),status="unknown")
        do
                read(3,*,iostat=ios)junk
                if(ios/=0)exit
                n=n+1
        end do
        rewind(3)
        allocate(datas(n,5))
        
        do i=1,n
                   read(3,*)(datas(i,j),j=1,5) !t,x,y,z,I
        end do

            do i=1,n
                if(datas(i,3)>=y.and.datas(i,3)<=(y+0.05))then
                    write(4,*)datas(i,1),datas(i,2),datas(i,3),datas(i,5)!,isumm/2.0
                end if
                ! if(i/=1)then
                !     BACKSPACE(4)
                !     read(4,*)tempreadx
                ! else
                !     tempreadx=-100000
                ! end if
                ! if(summ/=0.0.and.tempreadx/=datas(i,2))then
                ! end if
                summ=0.0
            end do
end program
