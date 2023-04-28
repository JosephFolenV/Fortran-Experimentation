program matrix_multiplication_parallel
    use omp_lib

    implicit none

    integer, parameter :: n = 35
    integer :: i, j, k
    real, dimension(n,n) :: a, b, c
    real :: t1, t2

    ! Initialize the matrices a and b
    do i = 1, n
        do j = 1, n
            a(i,j) = real(i+j)
            b(i,j) = real(i-j)
        end do
    end do

    ! Multiply the matrices a and b using OpenMP
    t1 = omp_get_wtime()

    !$OMP PARALLEL DO DEFAULT(NONE) PRIVATE(i,j,k) SHARED(a,b,c)
    do i = 1, n
        do j = 1, n
            c(i,j) = 0.0
            do k = 1, n
                c(i,j) = c(i,j) + a(i,k)*b(k,j)
            end do
        end do
        !write slows down execution
        !write(*,*) 'Thread ', omp_get_thread_num(),' started working on row',i
    end do
    !$OMP END PARALLEL DO

    t2 = omp_get_wtime()

    ! Print the matrix and execution time
    write(*,*) 'Matrix C:'
    do i = 1, n
        print'(35F10.2)', (c(i,j), j = 1,n)
    end do
    write(*,*) 'Execution time: ', t2 - t1, ' seconds'
end program matrix_multiplication_parallel

