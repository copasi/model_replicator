#!/bin/bash

# work out our folder name
test=${PWD##*/}          # to assign to a variable
test=${test:-/}          # to correct for the case where PWD=/

# run sbmodelr
../../sbmodelr  -t Y -k 0.1 --pn X 0.1 norm --pn Y 0.1 norm  -o Wolf8x8Y.cps ../sources/Selkov-Wolf-Heinrich.cps 8 8 > output

fail=0

# compare output and target
difference=$(diff output target_stdout)
if [[ $difference ]]; then
  printf 'FAIL %s\n' "${test}"
  fail=1
fi

# test -o option by checking if output file was created
if ! [ -f Wolf8x8Y.cps ]; then
  printf 'FAIL %s\n' "${test}"
  let "fail = $fail + 2"
fi

# create model summary
../model_report.py Wolf8x8Y.cps >/dev/null
if ! [[ $? = 0 ]]; then
  printf 'FAIL %s\n' "${test}"
  exit -1
fi

# get values of X_i_j
grep -Po "X_\d+,\d+\s+reactions\s+(\d+\.\d+)\s" Wolf8x8Y.summary.txt | awk '{ print $3 }' > X.csv

# test if they look normal -- removed because 16 samples is too small for this test
#../shapiro-wilk.py X.csv
#if [ "$?" = 1 ] ; then
#  printf 'FAIL %s\n' "${test}"
#  let "fail = $fail + 4"
#fi

# test if the mean is 4.91
../ttest-mean.py X.csv 4.91
if [ "$?" = 1 ] ; then
  printf 'FAIL %s\n' "${test}"
  let "fail = $fail + 8"
fi

# test if the stdev is 0.1
../chisqtest-sd.py X.csv 0.1
if [ "$?" = 1 ] ; then
  printf 'FAIL %s\n' "${test}"
  let "fail = $fail + 16"
fi

# get values of Y_i_j
grep -Po "Y_\d+,\d+\s+reactions\s+(\d+\.\d+)\s" Wolf8x8Y.summary.txt | awk '{ print $3 }' > Y.csv

# test if they look normal -- removed because 16 samples is too small for this test
#../shapiro-wilk.py Y.csv
#if [ "$?" = 1 ] ; then
#  printf 'FAIL %s\n' "${test}"
#  let "fail = $fail + 32"
#fi

# test if the mean is 0.77
../ttest-mean.py Y.csv 0.77
if [ "$?" = 1 ] ; then
  printf 'FAIL %s\n' "${test}"
  let "fail = $fail + 64"
fi

# test if the stdev is 0.1
../chisqtest-sd.py Y.csv 0.1
if [ "$?" = 1 ] ; then
  printf 'FAIL %s\n' "${test}"
  let "fail = $fail + 128"
fi

if [ "$fail" = 0 ] ; then
  printf 'PASS %s\n' "${test}"
  rm Wolf8x8Y.summary.txt Wolf8x8Y.cps *.csv output
fi

exit $fail
