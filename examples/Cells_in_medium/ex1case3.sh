#!/bin/bash

# example 1, case 3

# create 3 cells in a medium, with transport on X, with a transport rate
# constant of 1, random initial conditions where X and Y are within
# +/- 1% of their value in the base unit, medium volume equal to 15 (such
# that the fraction of cellular volume is 3/15 = 0.2

# total cell volume)

sbmodelr \
 --output case3.cps \
 --add-medium \
 --medium-volume 15 \
 --transport X \
 --transport-k 4.16 \
 --pn X 0.1 uni \
 --pn Y 0.1 uni \
 Selkov-Wolf-Heinrich_k1.5.cps \
 3

