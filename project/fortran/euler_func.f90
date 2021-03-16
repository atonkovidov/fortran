module euler_func

   implicit none

   contains

! Implementation of function to be evaluated
   subroutine func(x,y,fun)
   real(kind=8), intent(in) :: x,y
   real(kind=8), intent(out) :: fun
   fun = (2.0*x)/(y*(1+x**2.0))
   end subroutine func

end module euler_func
