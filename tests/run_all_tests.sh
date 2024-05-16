#!/bin/bash

# create a log file
log="$(date +"%FT%H%M%S").log"
touch $log
fail=0

# runs all tests
# returns the number of tests that failed

for d in ./????_*/ ; do 
  cd "$d"
  output=$(./run.sh)
  if ! [[ $? = 0 ]]; then
    let "fail = $fail + 1"
  fi
  printf '%s\n' "${output}"
  printf '%s\n' "${output}" >> ../$log
  cd .. 
done
exit $fail
