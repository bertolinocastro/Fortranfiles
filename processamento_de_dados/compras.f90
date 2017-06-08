program main

    integer cod, qtd
    real valor
    real disc
    
    
    
    read *, cod
    read *, qtd
    read *, valor
    
    if ( qtd > 5 .and. qtd < 10 ) then
        disc = 0.03*valor
    end if
    
    if ( qtd <= 5 ) then
        disc = 0.02*valor
    endif

    if ( qtd >= 10 ) then
        disc = 0.05*valor
    end if

    print *, qtd*valor-disc

end
