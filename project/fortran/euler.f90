program euler

   use euler_func

   implicit none

! Initializing
   real(kind=8) :: x,y,fun,h
   integer(kind=8) :: j,jmax
   h = 0.25
   jmax = 50

! Calling the module containing function
!   call func(x,y,fun)
   x = 0
   y = -2

! Loop for Euler's Method implementation and printing
   do j=1,jmax
      if (x>10) exit
      call func(x,y,fun)
      y = fun*h + y
      600 format(f19.16, 7x, f19.16)
      open(unit=11, file='output.txt')
      write(11,600) x,y
      x = x + h
   end do

   close(11)

end program euler
