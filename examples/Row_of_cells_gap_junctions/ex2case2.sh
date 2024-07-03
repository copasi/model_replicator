#!/bin/bash

# example 2, case 2

# create 12 cells connected in a row (described in row_of_12.gv file)
# with transport on IP3 through Michaelis Menten kinetics


../../sbmodelr \
 --output ex2case2.cps \
 -m IP3 \
 -n row_of_12.gv \
 ChI_DePitta2009.cps \
 12
