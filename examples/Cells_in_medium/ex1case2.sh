#!/bin/bash

# example 1, case 2

# create 2 cells in a medium, with transport on Y, with a transport rate
# constant of 3.2, random initial conditions where X and Y are within
# +/- 1% of their value in the base unit, medium volume equal to 25 (such
# that the fraction of cellular volume is 5/25 = 0.2)

# total cell volume)

sbmodelr \
 --output case2.cps \
 --add-medium \
 --medium-volume 25 \
 --transport Y \
 --transport-k 1 \
 --pn X 0.1 uni \
 --pn Y 0.1 uni \
 Selkov-Wolf-Heinrich_k2.5.cps \
 5

