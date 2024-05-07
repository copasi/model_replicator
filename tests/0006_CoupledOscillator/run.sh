#!/bin/bash

# work out our folder name
test=${PWD##*/}          # to assign to a variable
test=${test:-/}          # to correct for the case where PWD=/

# run sbmodelr
../../sbmodelr  -t X -k 0.1 --add-medium -o Wolf2X.cps ../sources/Selkov-Wolf-Heinrich.cps 2 > output

fail=0

# compare output and target
difference=$(diff output target_stdout)
if [[ $difference ]]; then
  printf 'FAIL %s\n' "${test}"
  fail=1
fi

# test -o option by checking if output file was created
if ! [ -f Wolf2X.cps ]; then
  printf 'FAIL %s\n' "${test}"
  let "fail = $fail + 2"
fi

# create model summary
../model_report.py Wolf2X.cps

# check that the transport rate constant is set properly
grep -Po "k_X_transport\s+fixed\s+0.1" Wolf2X.summary.txt >/dev/null
if [ "$?" != 0  ] ; then
  printf 'FAIL %s\n' "${test}"
  let "fail = $fail + 4"
fi

if [ "$fail" = 0 ] ; then
  printf 'PASS %s\n' "${test}"
  rm Wolf2X.summary.txt Wolf2X.cps output
fi

exit $fail
