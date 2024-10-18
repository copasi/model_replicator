#!/bin/bash

# example 1, case 1

# create 2 cells in a medium, with transport on Y, with a transport rate
# constant of 3.2, random initial conditions where X and Y are within
# +/- 10% of their value in the base unit, medium volume equal to 10 (such
# that the ratio of volumes 2/10 = 0.2)


sbmodelr \
 --output case1.cps \
 --add-medium \
 --medium-volume 10 \
 --transport Y \
 --transport-k 3.2 \
 --pn X 0.1 uni \
 --pn Y 0.1 uni \
 Selkov-Wolf-Heinrich.cps \
 2

