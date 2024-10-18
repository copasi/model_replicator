#!/bin/bash

# example 3, case 2

# create an array of 49x49 cells with transport on Xex and Yex
# add 10% noise on parameter alpha


sbmodelr \
 --output ex3case2.cps \
 -t Xex \
 -t Yex \
 -k 5 \
 --pn alpha 0.1 uni \
 glycolysis-autocatalytic.cps \
 49 49
