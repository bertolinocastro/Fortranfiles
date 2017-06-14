program main
    integer :: length = 3
    integer, allocatable :: x(:)
!    integer, dimension(0:length) :: x
    integer :: i,j,aux

    allocate ( x(0:length-1) )

    do i=0, length-1
        read *, x(i) 
    enddo

    do i=0, length-1
        do j=i+1, length-1    
            if ( x(i) > x(j) ) then
                aux = x(i)
                x(i) = x(j)
                x(j) = aux
            endif
        enddo
    enddo


    write (*,*) x 

    deallocate ( x )
    
end
