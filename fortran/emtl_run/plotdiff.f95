program main
    implicit none
    character(len=20)::filename,file_name,plot_name,sy
    call get_command_argument(1,filename)
    plot_name="'f_f"//trim(filename)//".y2.5'"
    file_name="'f_f"//trim(filename)//".y2.5'"
    call system('gnuplot -e "file_name='//file_name//';plot_name='//plot_name//'" plotdiff.gpl')   
end

