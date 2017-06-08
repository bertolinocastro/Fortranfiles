program main
	implicit none

	integer sex
	integer height	


	print *, "Type your sex [0=M, 1=W]  "
	
	read *, sex


	print *, "Type your height "
	read *, height

	if( sex == 0 ) then
		print *, "Your weight is :", 72.7*height - 58
	end if
	if( sex == 1 ) then
		print *, "Your weight is :", 62.1*height - 44.7
	endif



end program
