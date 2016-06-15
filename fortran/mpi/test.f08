program main
    include "mpi.h"
    integer ierr,my_rank,nprocs

    !initialize MPI
    call MPI_INIT(ierr)
    call MPI_COMM_RANK(MPI_COMM_WORLD,my_rank,ierr)
    call MPI_COMM_SIZE(MPI_COMM_WORLD,nprocs,ierr)

    write(*,*) 'hello ',my_rank, ' out of ',nprocs

    call MPI_FINALIZE(ierr)
    stop

end

