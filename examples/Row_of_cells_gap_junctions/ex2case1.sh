#!/bin/bash

# example 2, case 1

# create 11 cells connected in a row (described in row_of_11.gv file)
# with transport on IP3


../../sbmodelr \
 --output ex2case1.cps \
 -t IP3 \
 -n row_of_11.gv \
 ChI_DePitta2009 \
 11
