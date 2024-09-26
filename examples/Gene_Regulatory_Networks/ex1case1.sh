#!/bin/bash

# example 1, case 1

# creates the repressilator network of 3 genes

../../sbmodelr \
 --output ex6case1.cps \
 --ignore-compartments \
 -n 3circle.gv \
 -g G \
 --pn G 0.8 uni \
 --grn-a -1 \
 --grn-h 4 \
 GenExBase.cps \
 3

