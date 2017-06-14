!1) Faça um programa que leia 3 valores inteiros e determine o maior entre eles
!2) Modifique o Programa anterior para exibir os números lidos em ordem crescente
!3) Modifique o programa da questão anterior para verificar se os 3 valores lidos formam um triângulo ou não. Se formar, o programa deverá indicar o tipo
!4) Receber uma data como input do usuário e verificar se ela é válida ou não ( formato livre!)
program main

    integer dt ! Date in the iso format without the mask: YYYYMMDD
    logical isDay, isMonth, maxMonth, isLeapYear !, isYear    
    integer day, mth, yr

    read(*,*) dt

    day = mod(dt, 100)
    dt /= 100

    mth = mod(dt, 100)
    dt /= 100

    yr = dt

    if ( isDate(day,mth,yr) ) then
        write (*,*) "Your date exists!"
    else
        write (*,*) "Your date inexists!"
    endif
end

! All next declarations are in this form:
! x = day, y = year, z = month

logical function isDay(x, y, z)
    integer x, y, z
    if ( z .lt. maxMonth(z,y)) .and. z .gt. 0 ) then
        isDay = .true.
    else
        isDay = .false.
    endif
    return
end

logical function isMonth(x)
    integer x
    if( x .lt. 12 .and. x .gt. 0 ) then
        isMonth = .true.
    else
        isMonth = .false.
    endif
    return
end

!logical function isYear(x)
!    integer x
!end
logical function isLeapYear(x)
    integer x
    if ( mod(x,4) .eq. 0 .and. mod(x,100) .ne. 0 .or. mod(x,400) .eq. 0 ) then
        isLeapYear = .true.
    else
        isLeapYear = .false.
    endif
    return
end

integer function maxMonth(x, y)
    integer x, y
    select case (x)
        case 1,3,5,7,8,10,12
            maxMonth = 31
        case 2
            if ( isLeapYear(y) ) then
                maxMonth = 29
            else
                maxMonth = 28
            endif
        default
            maxMonth = 30
    end select
    return
end
