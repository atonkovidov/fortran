program my_driver

   use my_module

implicit none

      integer :: p, p_factorial

   write(*,*) "Enter your favorite number:"

   read(*,*) p

   call factorial(p, p_factorial)
  
   write(*,*) p , p_factorial

end program my_driver

