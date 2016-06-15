#!/bin/bash
#PBS -N emtl2
#PBS -q workq
#PBS -l select=1:ncpus=1 
#PBS -o outfile
#PBS -e errofile

#export WIENROOT=/home/kanchana/Wien_14.2
export here=/home/kanchana/emtl/tests/grating2um/unix/_gcc

cd $here

cd $PBS_O_WORKDIR
cat $PBS_NODEFILE > hostfile.pbs

echo '#' > .machines
echo 'granularity:1' >>.machines
awk '{print "1:"$1":1"}' $PBS_NODEFILE >>.machines
awk '{print "1:"$1":1"}' $PBS_NODEFILE >>.machines
awk '{print "1:"$1":1"}' $PBS_NODEFILE >>.machines
awk '{print "1:"$1":1"}' $PBS_NODEFILE >>.machines
awk '{print "1:"$1":1"}' $PBS_NODEFILE >>.machines
awk '{print "1:"$1":1"}' $PBS_NODEFILE >>.machines
echo 'extrafine:1' >>.machines

#/opt/apps/openmpi/intel/bin/mpirun run_lapw -ec 0.000001 -p
./grating2um.x
