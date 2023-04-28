PROGRAM matrix_multiplication

        implicit none
        integer, parameter :: n = 35
        integer :: i, j, k
        real, dimension(n,n) :: A, B, C
        real :: t1, t2

        !Initialize matrices A and B
        !A = reshape([1.,2.,3.,4.,5.,6.,7.,8.,9.],[n,n])
        !B = reshape([9.,8.,7.,6.,5.,4.,3.,2.,1.],[n,n])
        do i = 1, n
            do j = 1, n
            A(i,j) = real(i+j)
            B(i,j) = real(i+j)
            end do
        end do
        !Starts timer
        call cpu_time(t1)

        ! Multiply matrices A and B
        do i = 1,n
            do j = 1,n
                C(i,j) = 0.
                do k = 1,n
                    C(i,j) = C(i,j) + A(i,k) * B(k,j)
                end do
            end do
        end do
        
        !Ends timer
        call cpu_time(t2)

        ! Print the result matrix C
        print *, 'Matrix C ='
        do i = 1,n
            !'(3F10.2)' means three elements in each row of the matrix
            !with each element formatted as a floating point number with
            !a width of 10 characters and 2 digits after the decimal point.
            
            !(C(i,j), j=1, n) is an IMPLIED do loop.
            print '(35F10.2)', (C(i,j), j = 1,n)
        end do
        print *, 'Calculation time: ',t2-t1,'seconds'
END PROGRAM matrix_multiplication
