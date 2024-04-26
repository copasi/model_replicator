#!/bin/bash

# runs all tests

for d in ./????_*/ ; do 
  cd "$d"
  ./run.sh
  cd .. 
done

