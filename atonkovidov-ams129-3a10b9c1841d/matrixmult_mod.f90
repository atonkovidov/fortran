module matrixmult

implicit none

contains


function matrix_multiply(input_1, input_2, n) result(output)
   integer (kind=8), intent(in) :: n
   real(kind=8), dimension(n,n), intent(in) :: input_1, input_2
   integer (kind=8), dimension(n,n) :: output
   integer (kind=8) :: i, j, k
   i=1
   j=1
   do while( i <= n )
      do while( j <= n )
         k = 1
         output(i,j) = 0
         do while( k <= n )
            output(i,j) = output(i,j) + input_1(i,k)*input_2(k,i)           
            k = k + 1
         enddo
         j = j+1
      enddo
      i = i+1 
   enddo

end function matrix_multiply

end module matrixmult
