#!/bin/bash

# example 3, case 1

# create an array of 49x49 cells with transport on Xex
# add 10% noise on parameter alpha


sbmodelr \
 --output ex3case1.cps \
 -t Xex \
 -k 5 \
 --pn alpha 0.1 uni \
 glycolysis-autocatalytic.cps \
 49 49
