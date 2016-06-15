#!/bin/sh
#files="/home/kanchana/emtl/tests/grating_nor2/unix/_gcc/*.d"
#to remove the blank lines from the file
for i in *.d
do
  sed '/^$/d' $i > $i.out
  mv  $i.out $i
done
