#!/bin/bash

# work out our folder name
test=${PWD##*/}          # to assign to a variable
test=${test:-/}          # to correct for the case where PWD=/

# run sbmodelr
../../sbmodelr -g G --cn 2 uni --grn-a -1 --grn-h 8 --grn-V 2 -n ../sources/CoopSW8_001.dot -o CoopSW8_001.cps --ignore-compartments ../sources/GeneExpressionUnit.cps 100 > output

fail=0

# compare output and target
difference=$(diff output target_stdout)
if [[ $difference ]]; then
  printf 'FAIL %s\n' "${test}"
  fail=1
fi

# create model summary
../model_report.py CoopSW8_001.cps >/dev/null
if ! [[ $? = 0 ]]; then
  printf 'FAIL %s\n' "${test}"
  exit -1
fi

# check that there is one rate law for regulation by 2
if ! grep -Pq "^regulated_by_2\s+V \* \( \( 1 \+ \( 1 \+ a1 \) \* M1 \^ h1 \) \/ \( 1 \+ M1 \^ h1 \) \) \* \( \( 1 \+ \( 1 \+ a2 \) \* M2 \^ h2 \) \/ \( 1 \+ M2 \^ h2 \) \)" CoopSW8_001.summary.txt; then
  printf 'FAIL %s\n' "${test}"
  let "fail = $fail + 2"
fi

# check that there are 100 species
n=$(grep -Pc "^G_\d+\s+reactions\s+\d+\.\d+" CoopSW8_001.summary.txt)
if ((n != 100)); then
  printf 'FAIL %s\n' "${test}"
  let "fail = $fail + 4"
fi

exit $fail

# check that min and max of initial concentrations are different (meaning noise worked!)
n=$(grep -Po "^G_[123]\s+reactions\s+([0-9]+\.[0-9]+\s)" repressilator.summary.txt | awk '(NR==1){Min=$3;Max=$3};(NR>=2){if(Min>$3) Min=$3;if(Max<$3) Max=$3} END {if(Min<Max) {print 0} else {print 1}}')
if ((n != 0)) ; then
  printf 'FAIL %s\n' "${test}"
  let "fail = $fail + 8"
fi

# check that no new compartments were created
n=$(grep -Pc "^cell_[123]\s+fixed" repressilator.summary.txt)
if ((n != 0))  ; then
  printf 'FAIL %s\n' "${test}"
  let "fail = $fail + 16"
fi

# checks that there are three synthesis reactions
n=$(grep -Pc "synthesis (G_[123])\s+-> \1\;\s+G_[123]\s+regulated_by_1" repressilator.summary.txt)
if ((n != 3))  ; then
  printf 'FAIL %s\n' "${test}"
  let "fail = $fail + 32"
fi

if [ "$fail" = 0 ] ; then
  printf 'PASS %s\n' "${test}"
  rm repressilator.summary.txt output *.cps
fi

exit $fail
