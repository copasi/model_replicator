#!/bin/bash

# work out our folder name
test=${PWD##*/}          # to assign to a variable
test=${test:-/}          # to correct for the case where PWD=/

# run sbmodelr
../../sbmodelr -d vesicle -n ../sources/twins.gv ../sources/shrink.cps 2 > output

fail=0

# compare output and target
difference=$(diff output target_stdout)
if [[ $difference ]]; then
  printf 'FAIL %s\n' "${test}"
  fail=1
fi

# create model summary
../model_report.py shrink_2.cps >/dev/null
if ! [[ $? = 0 ]]; then
  printf 'FAIL %s\n' "${test}"
  exit -1
fi

# check that the coupling constant has been defined with the correct value
if ! grep -Pq "^k_vesicle_coupling\s+fixed\s+1" shrink_2.summary.txt; then
  printf 'FAIL %s\n' "${test}"
  let "fail = $fail + 2"
fi

#vesicle_1  ode    1.0    l  3  Values[sr_1] * ( Values[Osm_neutral_1] - [osmolite_1] ) + Values[k_vesicle_coupling] * ( Compartments[vesicle_2].Volume - Compartments[vesicle_1].Volume )

# check that there are two ODEs connected correctly with diffusive term
n=$(grep -Pc "vesicle_([12])\s+ode\s+.*\+ Values\[k_vesicle_coupling\] \* \( Compartments\[vesicle_[12]\]\.Volume - Compartments\[vesicle_\1\]\.Volume \)" shrink_2.summary.txt )
if ((n != 2))  ; then
  printf 'FAIL %s\n' "${test}"
  let "fail = $fail + 4"
fi

if [ "$fail" = 0 ] ; then
  printf 'PASS %s\n' "${test}"
  rm shrink_2.summary.txt output *.cps
fi

exit $fail
