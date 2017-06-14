program main
    integer :: length = 3
    integer, allocatable :: x(:)
!    integer, dimension(0:length) :: x
    integer :: i,j,aux

    allocate ( x(0:length) )

    do i=0, length-1
        read *, x(i) 
    enddo

    aux = x(0)
    do i=1, length-1
        if ( x(i) > aux ) then
            aux = x(i)
        endif
    enddo


   write (*,*) aux 

    deallocate ( x )
    
end
