!subroutine to find the factorial of a number (compile the main program and this file together)
subroutine factorial(n,fac)
    implicit none
    integer,intent(in)::n
    integer::i
    real(kind=16),intent(out)::fac
    fac=1
    if (n==0) then
        fac=1
    else
    do i = 1, n
        fac=fac*i
    end do
    end if
end subroutine factorial

