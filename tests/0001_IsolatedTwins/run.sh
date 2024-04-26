#!/bin/bash

# work out our folder name
test=${PWD##*/}          # to assign to a variable
test=${test:-/}          # to correct for the case where PWD=/

# run sbmodelr
../../sbmodelr ../sources/BindingKa.cps 2 > output

# compare output and target
difference=$(diff output target_stdout)
if [[ $difference ]]; then
  printf 'FAIL %s\n' "${test}"
else
  printf 'PASS %s\n' "${test}"
  rm output
  rm *.cps
fi

