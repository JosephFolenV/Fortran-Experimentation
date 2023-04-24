program hello_omp
   USE OMP_LIB
   implicit none
   integer :: i, tid, nthreads

   !$OMP PARALLEL PRIVATE(tid)
   tid = omp_get_thread_num()
   write(*,*) 'Hello from thread ', tid
   !$OMP END PARALLEL
end program hello_omp
