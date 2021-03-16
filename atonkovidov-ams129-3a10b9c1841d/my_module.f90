module my_module

implicit none

contains

subroutine factorial(n, fact)
   integer, intent(in) :: n
   integer, intent(out) :: fact
   integer :: m
   fact = 1
   do m = 1,n
      fact = fact * m
   enddo

end subroutine factorial

end module my_module
