#!/bin/bash

# work out our folder name
test=${PWD##*/}          # to assign to a variable
test=${test:-/}          # to correct for the case where PWD=/

fail=0

# test negative number of units
sbmodelr -t G ../sources/GeneExpressionUnit.cps -2 > output 2>&1

# check that the correct warning is issued
if ! grep -q "sbmodelr: error: argument rows: -2 is an invalid negative value" output; then
  printf 'FAIL %s\n' "${test}"
  let "fail = 1"
fi

# test one unit only
sbmodelr -t G ../sources/GeneExpressionUnit.cps 1 > output 2>&1

# check that the correct warning is issued
if ! grep -q "ERROR: Nothing to do, one copy only is the same as the original model!" output; then
  printf 'FAIL %s\n' "${test}"
  let "fail = $fail + 2"
fi

# test one unit per dimension
sbmodelr -t G ../sources/GeneExpressionUnit.cps 1 1 > output 2>&1

# check that the correct warning is issued
if ! grep -q "ERROR: Nothing to do, one copy only is the same as the original model!" output; then
  printf 'FAIL %s\n' "${test}"
  let "fail = $fail + 4"
fi

# test one unit per dimension
sbmodelr -t G ../sources/GeneExpressionUnit.cps 1 1 1 > output 2>&1

# check that the correct warning is issued
if ! grep -q "ERROR: Nothing to do, one copy only is the same as the original model!" output; then
  printf 'FAIL %s\n' "${test}"
  let "fail = $fail + 8"
fi

# test negative kinetic constant value
sbmodelr -t G -k -0.2 ../sources/GeneExpressionUnit.cps 2 > output 2>&1

# check that the correct warning is issued
if ! grep -q "sbmodelr: error: argument -k/--transport-k: -0.2 is an invalid negative value" output; then
  printf 'FAIL %s\n' "${test}"
  let "fail = $fail + 16"
fi

# test negative noise level
sbmodelr -t G --cn -0.3 uni ../sources/GeneExpressionUnit.cps 2 2 > output 2>&1

# check that the correct warning is issued
if ! grep -q "ERROR: 'level' must be a positive floating point number" output; then
  printf 'FAIL %s\n' "${test}"
  let "fail = $fail + 32"
fi

# test integer noise level
sbmodelr -t G --cn 3 uni ../sources/GeneExpressionUnit.cps 2 2 > output 2>&1

# check that no warning is issued
if grep -q "ERROR: 'level' must be a positive floating point number" output; then
  printf 'FAIL %s\n' "${test}"
  let "fail = $fail + 64"
fi

# test invalid noise distribution
sbmodelr -t G --cn 0.1 foo ../sources/GeneExpressionUnit.cps 2 2 > output 2>&1

# check that the correct warning is issued
if ! grep -q "ERROR: dist must be 'uni' or 'norm'" output; then
  printf 'FAIL %s\n' "${test}"
  let "fail = $fail + 128"
fi

# we repeat error values matching those of--cn because we're testing more than 8 conditions

# test negative noise level for --pn
sbmodelr -t G --pn G -0.3 uni ../sources/GeneExpressionUnit.cps 2 2 > output 2>&1

# check that the correct warning is issued
if ! grep -q "ERROR: 'level' must be a positive floating point number" output; then
  printf 'FAIL %s\n' "${test}"
  let "fail = $fail + 32"
fi

# test integer noise level
sbmodelr -t G --pn G 3 uni ../sources/GeneExpressionUnit.cps 2 2 > output 2>&1

# check that no warning is issued
if grep -q "ERROR: 'level' must be a positive floating point number" output; then
  printf 'FAIL %s\n' "${test}"
  let "fail = $fail + 64"
fi

# test invalid noise distribution
sbmodelr -t G --pn G 0.1 foo ../sources/GeneExpressionUnit.cps 2 2 > output 2>&1

# check that the correct warning is issued
if ! grep -q "ERROR: dist must be 'uni' or 'norm'" output; then
  printf 'FAIL %s\n' "${test}"
  let "fail = $fail + 128"
fi

if [ "$fail" = 0 ] ; then
  printf 'PASS %s\n' "${test}"
  rm output *.cps > /dev/null 2>&1
fi

exit $fail
