program main
    integer :: length = 3
    integer, allocatable :: x(:)
!    integer, dimension(0:length) :: x
    integer :: i,j,aux
    integer :: A,B,C

    allocate ( x(0:length-1) )

    do i=0, length-1
        read *, x(i) 
    enddo

    A=x(0);B=x(1);C=x(2)
    if ( A + B .gt. C .and. B + C .gt. A .and. A + C .gt. B ) then


        if ( A == B .and. B==C ) then
            write (*,*) "Your triangle is equilateral"
        elseif ( A .ne. B .and. B .ne. C .and. C .ne. A ) then
            write (*,*) "Your triangle is scalene"
        elseif ( A .eq. B .and. B .ne. C .or. &
                 B .eq. C .and. C .ne. A .or. &
                 C .eq. A .and. A .ne. B  &
                 ) then
            write (*,*) "Your triangle is isosceles" 
        endif
    else
        write (*,*) "Your triangle inexists"
    endif

    write (*,*) x 
    write (*,*) A,B,C
    deallocate ( x )
    
end
