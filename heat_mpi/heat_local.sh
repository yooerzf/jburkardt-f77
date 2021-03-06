#!/bin/bash
#
mpif77 heat_mpi.f
#
if [ $? -ne 0 ]; then
  echo "Errors compiling heat_mpi.f"
  exit
fi
#
#  Rename the executable.
#
mv a.out heat
#
#  Ask MPI to use 8 processes to run your program.
#
mpirun -np 8 ./heat > heat_local_output.txt
#
#  Clean up.
#
rm heat
#
echo "Program output written to heat_local_output.txt"

