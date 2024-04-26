#!/bin/bash

# create a log file
log="$(date +"%FT%H%M%S").log"
touch $log

# runs all tests

for d in ./????_*/ ; do 
  cd "$d"
  output=$(./run.sh)
  printf '%s\n' "${output}"
  printf '%s\n' "${output}" >> ../$log
  cd .. 
done

