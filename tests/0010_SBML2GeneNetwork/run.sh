#!/bin/bash

# work out our folder name
test=${PWD##*/}          # to assign to a variable
test=${test:-/}          # to correct for the case where PWD=/

# run sbmodelr
../../sbmodelr -t B -n ../sources/twins.gv --pn A 0.3 uni ../sources/BIOMD0000000539_url.xml 2 > output

fail=0

# compare output and target
difference=$(diff output target_stdout)
if [[ $difference ]]; then
  printf 'FAIL %s\n' "${test}"
  fail=1
fi

# check that output file is SBML
s=$(head -n 3 BIOMD0000000539_url_2.xml | grep -q "sbml xmlns")
if ((s != 0))  ; then
  printf 'FAIL %s\n' "${test}"
  let "fail = $fail + 2"
fi

# create model summary
../model_report.py BIOMD0000000539_url_2.xml

# are there 9 kinetic functions?
if ! grep -Pq "Kinetic Functions\: 9 =" BIOMD0000000539_url_2.summary.txt; then
  printf 'FAIL %s\n' "${test}"
  let "fail = $fail + 4"
fi

# check that there are exactly two rate laws for transcription and translation_1
n=$(grep -Pc "transcription and translation_1_([12])\s+rhof_\1\*gB_\1" BIOMD0000000539_url_2.summary.txt)
if ((n != 2))  ; then
  printf 'FAIL %s\n' "${test}"
  let "fail = $fail + 8"
fi

# check that there is one transport reaction
if ! grep -Pq "t_B_1-2\s+B_1 = B_2\s+Function for t_B_1-2" BIOMD0000000539_url_2.summary.txt; then
  printf 'FAIL %s\n' "${test}"
  let "fail = $fail + 16"
fi

if [ "$fail" = 0 ] ; then
  printf 'PASS %s\n' "${test}"
  rm BIOMD0000000539_url_2.summary.txt output *.xml
fi

exit $fail
