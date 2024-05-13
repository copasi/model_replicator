#!/bin/bash

# work out our folder name
test=${PWD##*/}          # to assign to a variable
test=${test:-/}          # to correct for the case where PWD=/

# run sbmodelr
../../sbmodelr -n ../sources/1to2.gv -m c ../sources/BindingKa.cps 2 > output

fail=0

# compare output and target
difference=$(diff output target_stdout)
if [[ $difference ]]; then
  printf 'FAIL %s\n' "${test}"
  fail=1
fi

# create model summary
../model_report.py BindingKa_2.cps >/dev/null
if ! [[ $? = 0 ]]; then
  printf 'FAIL %s\n' "${test}"
  exit -1
fi

#t_c_1-2       c_1 -> c_2  Henri-Michaelis-Menten (irreversible)           {'substrate': 'c_1', 'Km': 'Km_c_transport', 'V': 'Vmax_c_transport'}

# check that transport reaction exists
if ! grep -Pq "t_c_1-2\s+c_1 -\> c_2\s+Henri-Michaelis-Menten \(irreversible\)" BindingKa_2.summary.txt; then
  printf 'FAIL %s\n' "${test}"
  let "fail = $fail + 2"
fi

# check that the Henri-Michaelis-Menten rate law is used
if ! grep -Pq "^Henri-Michaelis-Menten \(irreversible\)\s+V\*substrate\/\(Km\+substrate\)" BindingKa_2.summary.txt; then
  printf 'FAIL %s\n' "${test}"
  let "fail = $fail + 4"
fi

# check that the Km constant was created
if ! grep -Pq "^Km_c_transport\s+fixed" BindingKa_2.summary.txt; then
  printf 'FAIL %s\n' "${test}"
  let "fail = $fail + 8"
fi

# check that the Vmaxconstant was created
if ! grep -Pq "^Vmax_c_transport\s+fixed" BindingKa_2.summary.txt; then
  printf 'FAIL %s\n' "${test}"
  let "fail = $fail + 16"
fi

if [ "$fail" = 0 ] ; then
  printf 'PASS %s\n' "${test}"
  rm BindingKa_2.summary.txt output *.cps
fi

exit $fail
