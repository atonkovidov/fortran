program matrixmult
   use matrixmult_mod

implicit none

   real (kind=8), dimension(3,3) :: A, B, C

   integer (kind=8) :: n


   C = matrix_multiply(A, B, 3)



end program matrixmult


